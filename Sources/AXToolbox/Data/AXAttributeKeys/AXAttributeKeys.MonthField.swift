import let ApplicationServices.HIServices.AXAttributeConstants.kAXMonthFieldAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMonthFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmonthfieldattribute)\.
	struct MonthField: AXAttributeKey {
		// Probably `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXMonthFieldAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.MonthField
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/MonthField``.
	static var monthField: Self {
		Self()
	}
}
