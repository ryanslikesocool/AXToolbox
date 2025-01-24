import let ApplicationServices.HIServices.AXAttributeConstants.kAXZoomButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXZoomButtonAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxzoombuttonattribute ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/zoomButton``
	struct ZoomButton: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String {
			kAXZoomButtonAttribute
		}

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.ZoomButton
{
	/// The attribute key for
	/// [`kAXZoomButtonAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxzoombuttonattribute ).
	///
	/// ## See Also
	/// - ``AXAttributeKeys/ZoomButton``
	static var zoomButton: Self {
		Self()
	}
}
