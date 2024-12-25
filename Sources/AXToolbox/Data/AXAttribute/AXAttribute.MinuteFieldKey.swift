private import let ApplicationServices.HIServices.AXAttributeConstants.kAXMinuteFieldAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXMinuteFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminutefieldattribute)\.
	struct MinuteFieldKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXMinuteFieldAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.MinuteFieldKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/MinuteFieldKey``.
	static var minuteField: Self {
		Self()
	}
}
