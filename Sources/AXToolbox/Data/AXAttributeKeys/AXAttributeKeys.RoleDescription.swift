import let ApplicationServices.HIServices.AXAttributeConstants.kAXRoleDescriptionAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXRoleDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxroledescriptionattribute)\.
	struct RoleDescription: AXAttributeKey {
		// Probably `String`.
		public typealias Value = Any

		public static var attributeKey: String { kAXRoleDescriptionAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.RoleDescription
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/RoleDescription``.
	static var roleDescription: Self {
		Self()
	}
}
