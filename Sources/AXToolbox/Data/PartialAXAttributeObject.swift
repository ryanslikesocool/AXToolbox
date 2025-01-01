import DeclarativeCore

/// ## Topics
///
/// ### Initializers
///
/// - ``DeclarativeCore/AnyObjectProcessor/init(_:)-46tss``
public typealias PartialAXAttributeObject<Input> = PartialObjectProcessor<Input>

public extension PartialAXAttributeObject {
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
	func eraseToPartialAXAttributeObject() -> PartialAXAttributeObject<Input> {
		eraseToPartialObjectProcessor()
	}
}
