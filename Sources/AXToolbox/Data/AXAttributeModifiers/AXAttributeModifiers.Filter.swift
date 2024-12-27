public extension AXAttributeModifiers {
	struct Filter<Input>: AXAttributeObject where
		Input: Sequence
	{
		public typealias Output = [Input.Element]

		private let isIncluded: (Input.Element) throws -> Bool

		public init(_ isIncluded: @escaping (Input.Element) throws -> Bool) {
			self.isIncluded = isIncluded
		}

		public func process(_ input: Input) throws -> Output {
			try input.filter(isIncluded)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeObject {
	/// Perform a `filter` operation on an attribute value.
	func filter<Output>(
		_ isIncluded: @escaping (Self.Output.Element) throws -> Bool
	) -> some AXAttributeObject<Self.Input, [Self.Output.Element]> where
		Self.Output: Sequence
	{
		let modifier = AXAttributeModifiers.Filter<Self.Output>(isIncluded)
		return self.modifier(modifier)
	}
}
