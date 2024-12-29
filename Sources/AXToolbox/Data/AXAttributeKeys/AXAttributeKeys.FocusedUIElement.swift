import let ApplicationServices.HIServices.AXAttributeConstants.kAXFocusedUIElementAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXFocusedUIElementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfocuseduielementattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/focusedUIElement``
	struct FocusedUIElement: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String { kAXFocusedUIElementAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.FocusedUIElement
{
	/// The attribute key for
	/// [`kAXFocusedUIElementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfocuseduielementattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/FocusedUIElement``
	static var focusedUIElement: Self {
		Self()
	}
}
