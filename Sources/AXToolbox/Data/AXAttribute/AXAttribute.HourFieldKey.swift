private import let ApplicationServices.HIServices.AXAttributeConstants.kAXHourFieldAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXHourFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxhourfieldattribute)\.
	struct HourFieldKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXHourFieldAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.HourFieldKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/HourFieldKey``.
	static var hourField: Self {
		Self()
	}
}
