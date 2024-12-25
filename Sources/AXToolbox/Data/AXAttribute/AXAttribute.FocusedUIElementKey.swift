import let ApplicationServices.HIServices.AXAttributeConstants.kAXFocusedUIElementAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXFocusedUIElementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfocuseduielementattribute)\.
	struct FocusedUIElementKey: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXFocusedUIElementAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.FocusedUIElementKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/FocusedUIElementKey``.
	static var focusedUIElement: Self {
		Self()
	}
}
