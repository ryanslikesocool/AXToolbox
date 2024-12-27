import let ApplicationServices.HIServices.AXAttributeConstants.kAXAllowedValuesAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXAllowedValuesAttribute`](https://developer.apple.com/documentation/applicationservices/kaxallowedvaluesattribute)\.
	struct AllowedValues: AXAttributeKey {
		// Probably `CFArray` of `AXValue`.
		public typealias Value = Any

		public static var attributeKey: String { kAXAllowedValuesAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.AllowedValues
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/AllowedValues``.
	static var allowedValues: Self {
		Self()
	}
}
