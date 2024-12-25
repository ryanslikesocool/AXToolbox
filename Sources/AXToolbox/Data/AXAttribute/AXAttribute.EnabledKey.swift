private import let ApplicationServices.HIServices.AXAttributeConstants.kAXEnabledAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXEnabledAttribute`](https://developer.apple.com/documentation/applicationservices/kaxenabledattribute)\.
	struct EnabledKey: AXAttributeKey {
		// Probably `Bool`.
		public typealias Value = Any

		public static var attributeKey: String { kAXEnabledAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.EnabledKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/EnabledKey``.
	static var enabled: Self {
		Self()
	}
}
