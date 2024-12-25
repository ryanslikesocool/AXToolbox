import let ApplicationServices.HIServices.AXAttributeConstants.kAXDayFieldAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXDayFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdayfieldattribute)\.
	struct DayFieldKey: AXAttributeKey {
		// Probably `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXDayFieldAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.DayFieldKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/DayFieldKey``.
	static var dayField: Self {
		Self()
	}
}
