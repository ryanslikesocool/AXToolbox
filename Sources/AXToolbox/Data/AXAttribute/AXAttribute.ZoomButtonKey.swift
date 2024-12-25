private import let ApplicationServices.HIServices.AXAttributeConstants.kAXZoomButtonAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXZoomButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxzoombuttonattribute)\.
	struct ZoomButtonKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXZoomButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.ZoomButtonKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/ZoomButtonKey``.
	static var zoomButton: Self {
		Self()
	}
}
