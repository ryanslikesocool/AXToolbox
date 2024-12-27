public extension AXAttributeModifiers {
	struct CompactMap<Input, OutputElement>: AXAttributeObject where
		Input: Sequence
	{
		private let transform: (Input.Element) throws -> OutputElement?

		public init(_ transform: @escaping (Input.Element) throws -> OutputElement?) {
			self.transform = transform
		}

		public func process(_ input: Input) throws -> [OutputElement] {
			try input.compactMap(transform)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeObject {
	/// Perform a `compactMap` operation on an attribute value.
	func compactMap<OutputElement>(
		_ transform: @escaping (Self.Output.Element) throws -> OutputElement?
	) -> some AXAttributeObject<Self.Input, [OutputElement]> where
		Self.Output: Sequence
	{
		let modifier = AXAttributeModifiers.CompactMap<Self.Output, OutputElement>(transform)
		return self.modifier(modifier)
	}
}
