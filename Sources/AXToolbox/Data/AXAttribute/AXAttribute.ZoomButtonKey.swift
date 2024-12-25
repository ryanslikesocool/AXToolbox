import let ApplicationServices.HIServices.AXAttributeConstants.kAXZoomButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXZoomButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxzoombuttonattribute)\.
	struct ZoomButtonKey: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXZoomButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.ZoomButtonKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/ZoomButtonKey``.
	static var zoomButton: Self {
		Self()
	}
}
