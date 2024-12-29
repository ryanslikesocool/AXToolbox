import let ApplicationServices.HIServices.AXAttributeConstants.kAXFullScreenButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXFullScreenButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfullscreenbuttonattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/fullScreenButton``
	struct FullScreenButton: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String { kAXFullScreenButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.FullScreenButton
{
	/// The attribute key for
	/// [`kAXFullScreenButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfullscreenbuttonattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/FullScreenButton``
	static var fullScreenButton: Self {
		Self()
	}
}
