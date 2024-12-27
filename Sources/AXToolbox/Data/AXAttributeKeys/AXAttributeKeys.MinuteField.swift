import let ApplicationServices.HIServices.AXAttributeConstants.kAXMinuteFieldAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMinuteFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminutefieldattribute)\.
	struct MinuteField: AXAttributeKey {
		// Probably `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXMinuteFieldAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.MinuteField
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/MinuteField``.
	static var minuteField: Self {
		Self()
	}
}
