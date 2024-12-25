private import let ApplicationServices.HIServices.AXAttributeConstants.kAXTopLevelUIElementAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXTopLevelUIElementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtopleveluielementattribute)\.
	struct TopLevelUIElementKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXTopLevelUIElementAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.TopLevelUIElementKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/TopLevelUIElementKey``.
	static var topLevelUIElement: Self {
		Self()
	}
}
