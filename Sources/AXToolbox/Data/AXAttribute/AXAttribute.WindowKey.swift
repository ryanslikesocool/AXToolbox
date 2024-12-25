import let ApplicationServices.HIServices.AXAttributeConstants.kAXWindowAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXWindowAttribute`](https://developer.apple.com/documentation/applicationservices/kaxwindowattribute)\.
	struct WindowKey: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXWindowAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.WindowKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/WindowKey``.
	static var window: Self {
		Self()
	}
}
