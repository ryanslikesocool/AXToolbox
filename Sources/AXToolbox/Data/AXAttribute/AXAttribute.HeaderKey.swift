import let ApplicationServices.HIServices.AXAttributeConstants.kAXHeaderAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXHeaderAttribute`](https://developer.apple.com/documentation/applicationservices/kaxheaderattribute)\.
	struct HeaderKey: AXAttributeKey {
		// Probably `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXHeaderAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.HeaderKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/HeaderKey``.
	static var header: Self {
		Self()
	}
}
