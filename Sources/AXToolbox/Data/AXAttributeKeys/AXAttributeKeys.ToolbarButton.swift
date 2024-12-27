import let ApplicationServices.HIServices.AXAttributeConstants.kAXToolbarButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXToolbarButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtoolbarbuttonattribute)\.
	struct ToolbarButton: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXToolbarButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.ToolbarButton
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/ToolbarButton``.
	static var toolbarButton: Self {
		Self()
	}
}
