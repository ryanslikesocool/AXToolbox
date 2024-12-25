import let ApplicationServices.HIServices.AXAttributeConstants.kAXAllowedValuesAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXAllowedValuesAttribute`](https://developer.apple.com/documentation/applicationservices/kaxallowedvaluesattribute)\.
	struct AllowedValuesKey: AXAttributeKey {
		// Probably `CFArray` of `AXValue`.
		public typealias Value = Any

		public static var attributeKey: String { kAXAllowedValuesAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.AllowedValuesKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/AllowedValuesKey``.
	static var allowedValues: Self {
		Self()
	}
}
