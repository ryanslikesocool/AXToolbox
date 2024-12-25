private import let ApplicationServices.HIServices.AXAttributeConstants.kAXMinValueAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXMinValueAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminvalueattribute)\.
	struct MinValueKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXMinValueAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.MinValueKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/MinValueKey``.
	static var minValue: Self {
		Self()
	}
}
