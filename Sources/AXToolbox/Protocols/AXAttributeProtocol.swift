public protocol AXAttributeProtocol<Input, Output> {
	associatedtype Input
	associatedtype Output

	func process(_ input: Input) -> Output
}

// MARK: - Intrinsic

public extension AXAttributeProtocol {
	/// Apply the given `modifier` to the attribute.
	/// - Parameter modifier: The modifier to apply to the attribute.
	/// - Returns: The attribute with the given `modifier` applied.
	func modifier<Modifier>(
		_ modifier: Modifier
	) -> some AXAttributeProtocol<Self.Input, Modifier.Output> where
		Modifier: AXAttributeProtocol,
		Self.Output == Modifier.Input
	{
		ModifiedContent(upstream: self, downstream: modifier)
	}
}
