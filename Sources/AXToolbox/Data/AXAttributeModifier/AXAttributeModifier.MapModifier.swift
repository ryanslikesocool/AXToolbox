public extension AXAttributeModifier {
	struct MapModifier<Input, Output>: AXAttributeProtocol {
		private let transform: (Input) -> Output

		public init(_ transform: @escaping (Input) -> Output) {
			self.transform = transform
		}

		public func process(_ input: Input) -> Output {
			transform(input)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol {
	/// Perform a `map` operation on an attribute value.
	func map<Output>(
		_ transform: @escaping (Self.Output) -> Output
	) -> some AXAttributeProtocol<Self.Input, Output> {
		let modifier = AXAttributeModifier.MapModifier(transform)
		return self.modifier(modifier)
	}

	/// Perform a `map` operation on the attribute value.
	func map<OutputElement>(
		_ transform: @escaping (Self.Output.Element) -> OutputElement
	) -> some AXAttributeProtocol<Self.Input, [OutputElement]> where
		Self.Output: Sequence
	{
		map { (input: Self.Output) -> [OutputElement] in
			input.map(transform)
		}
	}
}
