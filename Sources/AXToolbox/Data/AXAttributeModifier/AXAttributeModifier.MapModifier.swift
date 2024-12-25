public extension AXAttributeModifier {
	struct MapModifier<Input, Output>: AXAttributeProtocol {
		private let transform: (Input) throws -> Output

		public init(_ transform: @escaping (Input) throws -> Output) {
			self.transform = transform
		}

		public func process(_ input: Input) throws -> Output {
			try transform(input)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol {
	/// Perform a `map` operation on an attribute value.
	func map<Output>(
		_ transform: @escaping (Self.Output) throws -> Output
	) -> some AXAttributeProtocol<Self.Input, Output> {
		let modifier = AXAttributeModifier.MapModifier(transform)
		return self.modifier(modifier)
	}

	/// Perform a `map` operation on the attribute value.
	func map<OutputElement>(
		_ transform: @escaping (Self.Output.Element) throws -> OutputElement
	) -> some AXAttributeProtocol<Self.Input, [OutputElement]> where
		Self.Output: Sequence
	{
		map { (input: Self.Output) -> [OutputElement] in
			try input.map(transform)
		}
	}
}
