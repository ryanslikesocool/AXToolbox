import let ApplicationServices.HIServices.AXAttributeConstants.kAXHourFieldAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXHourFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxhourfieldattribute)\.
	struct HourField: AXAttributeKey {
		// Probably `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXHourFieldAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.HourField
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/HourField``.
	static var hourField: Self {
		Self()
	}
}
