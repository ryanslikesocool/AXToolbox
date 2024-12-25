import let ApplicationServices.HIServices.AXAttributeConstants.kAXFocusedWindowAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXFocusedWindowAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfocusedwindowattribute)\.
	struct FocusedWindowKey: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXFocusedWindowAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.FocusedWindowKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/FocusedWindowKey``.
	static var focusedWindow: Self {
		Self()
	}
}
