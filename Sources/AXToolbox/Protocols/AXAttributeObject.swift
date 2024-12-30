import DeclarativeCore

public protocol AXAttributeObject<Input, Output>: ObjectProcessor {
	// Shadows `ObjectProcessor.Input`
	/// The type of the argument for ``process(_:)``.
	associatedtype Input

	// Shadows `ObjectProcessor.Output`
	/// The type of the value returned by ``process(_:)``.
	associatedtype Output

	// Shadows `ObjectProcessor.process(_:)`
	func process(_ input: Input) throws -> Output
}

// MARK: - Intrinsic

public extension AXAttributeObject {
	/// Apply the given `modifier` to the attribute.
	/// - Parameter modifier: The modifier to apply to the attribute.
	/// - Returns: The attribute with the given `modifier` applied.
	func modifier<Modifier>(
		_ modifier: Modifier
	) -> ModifiedObject<Self, Modifier> where
		Modifier: AXAttributeObject,
		Self.Output == Modifier.Input
	{
		ModifiedObject(upstream: self, downstream: modifier)
	}
}

// MARK: - Default Conformances

extension ObjectProcessorModifiers.Map: AXAttributeObject { }
extension ObjectProcessorModifiers.CompactMap: AXAttributeObject { }
extension ObjectProcessorModifiers.FlatMap: AXAttributeObject { }
extension ObjectProcessorModifiers.Filter: AXAttributeObject { }
extension ObjectProcessorModifiers.Sort: AXAttributeObject { }
