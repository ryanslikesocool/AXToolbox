import let ApplicationServices.HIServices.AXAttributeConstants.kAXToolbarButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXToolbarButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtoolbarbuttonattribute)\.
	struct ToolbarButtonKey: AXAttributeKey {
		public typealias Value = AXUIElement

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
