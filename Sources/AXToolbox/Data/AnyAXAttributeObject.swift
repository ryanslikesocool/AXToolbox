import DeclarativeCore

/// ## Topics
///
/// ### Initializers
///
/// - ``DeclarativeCore/AnyObjectProcessor/init(_:)-6s5kd``
public typealias AnyAXAttributeObject<Input, Output> = AnyObjectProcessor<Input, Output>

public extension AnyAXAttributeObject {
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
	func eraseToAnyAXAttributeObject() -> AnyAXAttributeObject<Input, Output> {
		eraseToAnyObjectProcessor()
	}
}
