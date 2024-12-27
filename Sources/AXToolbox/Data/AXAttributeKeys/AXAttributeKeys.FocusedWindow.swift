import let ApplicationServices.HIServices.AXAttributeConstants.kAXFocusedWindowAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXFocusedWindowAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfocusedwindowattribute)\.
	struct FocusedWindow: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXFocusedWindowAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.FocusedWindow
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/FocusedWindow``.
	static var focusedWindow: Self {
		Self()
	}
}
