import let ApplicationServices.HIServices.AXAttributeConstants.kAXMinValueAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMinValueAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminvalueattribute)\.
	struct MinValue: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXMinValueAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.MinValue
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/MinValue``.
	static var minValue: Self {
		Self()
	}
}
