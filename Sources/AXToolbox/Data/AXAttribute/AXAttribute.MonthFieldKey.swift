private import let ApplicationServices.HIServices.AXAttributeConstants.kAXMonthFieldAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXMonthFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmonthfieldattribute)\.
	struct MonthFieldKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXMonthFieldAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.MonthFieldKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/MonthFieldKey``.
	static var monthField: Self {
		Self()
	}
}
