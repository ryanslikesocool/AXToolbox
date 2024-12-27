public protocol AXAttributeObject<Input, Output> {
	associatedtype Input
	associatedtype Output

	func process(_ input: Input) throws -> Output
}

// MARK: - Intrinsic

public extension AXAttributeObject {
	/// Apply the given `modifier` to the attribute.
	/// - Parameter modifier: The modifier to apply to the attribute.
	/// - Returns: The attribute with the given `modifier` applied.
	func modifier<Modifier>(
		_ modifier: Modifier
	) -> some AXAttributeObject<Self.Input, Modifier.Output> where
		Modifier: AXAttributeObject,
		Self.Output == Modifier.Input
	{
		ModifiedContent(upstream: self, downstream: modifier)
	}
}
