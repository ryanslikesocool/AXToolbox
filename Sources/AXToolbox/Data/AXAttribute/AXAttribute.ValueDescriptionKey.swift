import let ApplicationServices.HIServices.AXAttributeConstants.kAXValueDescriptionAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXRoleDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvaluedescriptionattribute)\.
	struct ValueDescriptionKey: AXAttributeKey {
		// Probably `String`.
		public typealias Value = Any

		public static var attributeKey: String { kAXValueDescriptionAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.ValueDescriptionKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/ValueDescriptionKey``.
	static var valueDescription: Self {
		Self()
	}
}
