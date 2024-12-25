private import let ApplicationServices.HIServices.AXAttributeConstants.kAXMaxValueAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXMaxValueAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmaxvalueattribute)\.
	struct MaxValueKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXMaxValueAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.MaxValueKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/MaxValueKey``.
	static var maxValue: Self {
		Self()
	}
}
