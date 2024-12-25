private import let ApplicationServices.HIServices.AXAttributeConstants.kAXAllowedValuesAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXAllowedValuesAttribute`](https://developer.apple.com/documentation/applicationservices/kaxallowedvaluesattribute)\.
	struct AllowedValuesKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXAllowedValuesAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.AllowedValuesKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/AllowedValuesKey``.
	static var allowedValues: Self {
		Self()
	}
}