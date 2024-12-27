import let ApplicationServices.HIServices.AXAttributeConstants.kAXFullScreenButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXFullScreenButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfullscreenbuttonattribute)\.
	struct FullScreenButton: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXFullScreenButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.FullScreenButton
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/FullScreenButton``.
	static var fullScreenButton: Self {
		Self()
	}
}
