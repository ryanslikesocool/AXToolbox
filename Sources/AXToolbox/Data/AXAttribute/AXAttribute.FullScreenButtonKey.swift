import let ApplicationServices.HIServices.AXAttributeConstants.kAXFullScreenButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXFullScreenButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfullscreenbuttonattribute)\.
	struct FullScreenButtonKey: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXFullScreenButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.FullScreenButtonKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/FullScreenButtonKey``.
	static var fullScreenButton: Self {
		Self()
	}
}
