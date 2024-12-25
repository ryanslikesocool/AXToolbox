private import let ApplicationServices.HIServices.AXAttributeConstants.kAXToolbarButtonAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXToolbarButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtoolbarbuttonattribute)\.
	struct ToolbarButtonKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXToolbarButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.ToolbarButtonKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/ToolbarButtonKey``.
	static var toolbarButton: Self {
		Self()
	}
}
