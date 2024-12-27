import let ApplicationServices.HIServices.AXAttributeConstants.kAXZoomButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXZoomButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxzoombuttonattribute)\.
	struct ZoomButton: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXZoomButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.ZoomButton
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/ZoomButton``.
	static var zoomButton: Self {
		Self()
	}
}
