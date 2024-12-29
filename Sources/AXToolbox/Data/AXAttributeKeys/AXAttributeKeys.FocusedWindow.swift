import let ApplicationServices.HIServices.AXAttributeConstants.kAXFocusedWindowAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXFocusedWindowAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfocusedwindowattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/focusedWindow``
	struct FocusedWindow: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String { kAXFocusedWindowAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.FocusedWindow
{
	/// The attribute key for
	/// [`kAXFocusedWindowAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfocusedwindowattribute)\.
	/// 
	/// ## See Also
	/// - ``AXAttributeKeys/FocusedWindow``
	static var focusedWindow: Self {
		Self()
	}
}
