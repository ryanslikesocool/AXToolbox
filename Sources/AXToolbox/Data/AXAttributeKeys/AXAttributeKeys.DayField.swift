import let ApplicationServices.HIServices.AXAttributeConstants.kAXDayFieldAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXDayFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdayfieldattribute)\.
	struct DayField: AXAttributeKey {
		// Probably `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXDayFieldAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.DayField
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/DayField``.
	static var dayField: Self {
		Self()
	}
}
