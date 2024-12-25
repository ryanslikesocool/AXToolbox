import let ApplicationServices.HIServices.AXAttributeConstants.kAXMenuBarAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXMenuBarAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmenubarattribute)\.
	struct MenuBarKey: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXMenuBarAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.MenuBarKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/MenuBarKey``.
	static var menuBar: Self {
		Self()
	}
}
