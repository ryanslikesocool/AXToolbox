import let ApplicationServices.HIServices.AXAttributeConstants.kAXEnabledAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXEnabledAttribute`](https://developer.apple.com/documentation/applicationservices/kaxenabledattribute)\.
	struct Enabled: AXAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kAXEnabledAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Enabled
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Enabled``.
	static var enabled: Self {
		Self()
	}
}
