import DeclarativeCore

// MARK: - AXAttributeObject

extension AnyObjectProcessor: AXAttributeObject { }

// MARK: - Convenience

public typealias AnyAXAttributeObject<Input, Output> = AnyObjectProcessor<Input, Output>
public typealias PartialAXAttributeObject<Input> = PartialObjectProcessor<Input>

public extension AnyObjectProcessor {
	@_disfavoredOverload
	init<Object>(_ axAttributeObject: Object) where
		Object: AXAttributeObject,
		Object.Input == Self.Input,
		Object.Output == Self.Output
	{
		self.init(axAttributeObject)
	}

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
	func eraseToAnyAXAttributeObject() -> AnyAXAttributeObject<Input, Output> {
		eraseToAnyObjectProcessor()
	}

	func eraseToPartialAXAttributeObject() -> PartialAXAttributeObject<Input> {
		eraseToPartialObjectProcessor()
	}
}
