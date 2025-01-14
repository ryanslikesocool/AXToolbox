import DeclarativeCore

/// A type-erased ``AXAttributeObject`` that preserves only the `Input` type information.
///
/// ## Topics
/// ### Initializers
/// - ``DeclarativeCore/AnyObjectProcessor/init(_:)-46tss``
///
/// ### Modifiers
/// - ``AXAttributeObject/eraseToPartialAXAttributeObject()``
public typealias PartialAXAttributeObject<Input> = PartialObjectProcessor<Input>

// MARK: - Convenience

public extension PartialAXAttributeObject {
	/// - Parameter axAttributeObject:
	@_disfavoredOverload
	init<Object>(_ axAttributeObject: Object) where
		Object: AXAttributeObject,
		Object.Input == Self.Input,
		Self.Output == Any
	{
		self.init(axAttributeObject)
	}
}

public extension AXAttributeObject {
	/// Type-erase the object, preserving only the `Input` type information.
	/// 
	/// ## See Also
	/// - ``PartialAXAttributeObject``
	///
	/// - Returns: A type-erased version of the object that preserves only the `Input` type information.
	func eraseToPartialAXAttributeObject() -> PartialAXAttributeObject<Input> {
		eraseToPartialObjectProcessor()
	}
}
