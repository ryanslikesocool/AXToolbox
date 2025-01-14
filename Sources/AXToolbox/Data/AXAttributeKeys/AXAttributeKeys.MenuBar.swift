import let ApplicationServices.HIServices.AXAttributeConstants.kAXMenuBarAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMenuBarAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxmenubarattribute ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/menuBar``
	struct MenuBar: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String {
			kAXMenuBarAttribute
		}

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.MenuBar
{
	/// The attribute key for
	/// [`kAXMenuBarAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxmenubarattribute ).
	///
	/// ## See Also
	/// - ``AXAttributeKeys/MenuBar``
	static var menuBar: Self {
		Self()
	}
}
