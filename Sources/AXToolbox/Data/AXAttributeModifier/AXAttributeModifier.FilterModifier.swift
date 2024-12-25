public extension AXAttributeModifier {
	struct FilterModifier<Input>: AXAttributeProtocol where
		Input: Sequence
	{
		public typealias Output = [Input.Element]

		private let isIncluded: (Input.Element) -> Bool

		public init(_ isIncluded: @escaping (Input.Element) -> Bool) {
			self.isIncluded = isIncluded
		}

		public func process(_ input: Input) -> Output {
			input.filter(isIncluded)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol {
	/// Perform a `filter` operation on an attribute value.
	func filter<Output>(
		_ isIncluded: @escaping (Self.Output.Element) -> Bool
	) -> some AXAttributeProtocol<Self.Input, [Self.Output.Element]> where
		Self.Output: Sequence
	{
		let modifier = AXAttributeModifier.FilterModifier<Self.Output>(isIncluded)
		return self.modifier(modifier)
	}
}
