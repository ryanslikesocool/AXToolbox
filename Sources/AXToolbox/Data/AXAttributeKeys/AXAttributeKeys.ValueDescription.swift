import let ApplicationServices.HIServices.AXAttributeConstants.kAXValueDescriptionAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXRoleDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvaluedescriptionattribute)\.
	struct ValueDescription: AXAttributeKey {
		// Probably `String`.
		public typealias Value = Any

		public static var attributeKey: String { kAXValueDescriptionAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.ValueDescription
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/ValueDescription``.
	static var valueDescription: Self {
		Self()
	}
}
