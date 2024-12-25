public extension AXAttributeModifier {
	struct FlatMapModifier<Input, SegmentOfResult>: AXAttributeProtocol where
		Input: Sequence,
		SegmentOfResult: Sequence
	{
		private let transform: (Input.Element) -> SegmentOfResult

		public init(_ transform: @escaping (Input.Element) -> SegmentOfResult) {
			self.transform = transform
		}

		public func process(_ input: Input) -> [SegmentOfResult.Element] {
			input.flatMap(transform)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol {
	/// Perform a `flatMap` operation on an attribute value.
	func flatMap<SegmentOfResult>(
		_ transform: @escaping (Self.Output.Element) -> SegmentOfResult
	) -> some AXAttributeProtocol<Self.Input, [SegmentOfResult.Element]> where
		Self.Output: Sequence,
		SegmentOfResult: Sequence
	{
		let modifier = AXAttributeModifier.FlatMapModifier<Self.Output, SegmentOfResult>(transform)
		return self.modifier(modifier)
	}
}
