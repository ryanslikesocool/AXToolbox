import let ApplicationServices.HIServices.AXAttributeConstants.kAXHelpAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXHelpAttribute`](https://developer.apple.com/documentation/applicationservices/kaxhelpattribute)\.
	struct Help: AXAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kAXHelpAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Help
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Help``.
	static var help: Self {
		Self()
	}
}
