import let ApplicationServices.HIServices.AXAttributeConstants.kAXWindowAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXWindowAttribute`](https://developer.apple.com/documentation/applicationservices/kaxwindowattribute)\.
	struct Window: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXWindowAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Window
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Window``.
	static var window: Self {
		Self()
	}
}
