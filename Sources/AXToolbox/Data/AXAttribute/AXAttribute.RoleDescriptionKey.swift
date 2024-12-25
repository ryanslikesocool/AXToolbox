import let ApplicationServices.HIServices.AXAttributeConstants.kAXRoleDescriptionAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXRoleDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxroledescriptionattribute)\.
	struct RoleDescriptionKey: AXAttributeKey {
		// Probably `String`.
		public typealias Value = Any

		public static var attributeKey: String { kAXRoleDescriptionAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.RoleDescriptionKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/RoleDescriptionKey``.
	static var roleDescription: Self {
		Self()
	}
}
