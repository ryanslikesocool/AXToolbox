public extension AXAttributeModifiers {
	struct FlatMap<Input, SegmentOfResult>: AXAttributeObject where
		Input: Sequence,
		SegmentOfResult: Sequence
	{
		private let transform: (Input.Element) throws -> SegmentOfResult

		public init(_ transform: @escaping (Input.Element) throws -> SegmentOfResult) {
			self.transform = transform
		}

		public func process(_ input: Input) throws -> [SegmentOfResult.Element] {
			try input.flatMap(transform)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeObject {
	/// Perform a `flatMap` operation on an attribute value.
	func flatMap<SegmentOfResult>(
		_ transform: @escaping (Self.Output.Element) throws -> SegmentOfResult
	) -> some AXAttributeObject<Self.Input, [SegmentOfResult.Element]> where
		Self.Output: Sequence,
		SegmentOfResult: Sequence
	{
		let modifier = AXAttributeModifiers.FlatMap<Self.Output, SegmentOfResult>(transform)
		return self.modifier(modifier)
	}
}
