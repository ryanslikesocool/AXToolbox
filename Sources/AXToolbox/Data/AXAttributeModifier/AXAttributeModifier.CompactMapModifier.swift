public extension AXAttributeModifier {
	struct CompactMapModifier<Input, OutputElement>: AXAttributeProtocol where
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

public extension AXAttributeProtocol {
	/// Perform a `compactMap` operation on an attribute value.
	func compactMap<OutputElement>(
		_ transform: @escaping (Self.Output.Element) throws -> OutputElement?
	) -> some AXAttributeProtocol<Self.Input, [OutputElement]> where
		Self.Output: Sequence
	{
		let modifier = AXAttributeModifier.CompactMapModifier<Self.Output, OutputElement>(transform)
		return self.modifier(modifier)
	}
}
