import let ApplicationServices.HIServices.AXAttributeConstants.kAXMenuBarAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMenuBarAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmenubarattribute)\.
	struct MenuBar: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXMenuBarAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.MenuBar
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/MenuBar``.
	static var menuBar: Self {
		Self()
	}
}
