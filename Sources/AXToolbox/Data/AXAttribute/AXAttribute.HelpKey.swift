import let ApplicationServices.HIServices.AXAttributeConstants.kAXHelpAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXHelpAttribute`](https://developer.apple.com/documentation/applicationservices/kaxhelpattribute)\.
	struct HelpKey: AXAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kAXHelpAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.HelpKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/HelpKey``.
	static var help: Self {
		Self()
	}
}
