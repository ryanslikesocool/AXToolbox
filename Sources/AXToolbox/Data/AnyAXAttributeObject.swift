import DeclarativeCore

/// A type-erased ``AXAttributeObject`` that preserves both the `Input` and `Output` type information.
///
/// ## Topics
/// ### Initializers
/// - ``DeclarativeCore/AnyObjectProcessor/init(_:)-6s5kd``
///
/// ### Modifiers
/// - ``AXAttributeObject/eraseToAnyAXAttributeObject()``
public typealias AnyAXAttributeObject<Input, Output> = AnyObjectProcessor<Input, Output>

// MARK: - Convenience

public extension AnyAXAttributeObject {
	/// - Parameter axAttributeObject:
	@_disfavoredOverload
	init<Object>(_ axAttributeObject: Object) where
		Object: AXAttributeObject,
		Object.Input == Self.Input,
		Object.Output == Self.Output
	{
		self.init(axAttributeObject)
	}
}

public extension AXAttributeObject {
	/// Type-erase the object, preserving both the `Input` and `Output` type information.
	/// 
	/// ## See Also
	/// - ``AnyAXAttributeObject``
	///
	/// - Returns: A type-erased version of the object that preserves both the `Input` and `Output` type information.
	func eraseToAnyAXAttributeObject() -> AnyAXAttributeObject<Input, Output> {
		eraseToAnyObjectProcessor()
	}
}
