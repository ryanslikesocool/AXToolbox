private import let ApplicationServices.HIServices.AXAttributeConstants.kAXHeaderAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXHeaderAttribute`](https://developer.apple.com/documentation/applicationservices/kaxheaderattribute)\.
	struct HeaderKey: AXAttributeKey {
		// Probably `String`.
		public typealias Value = Any

		public static var attributeKey: String { kAXHeaderAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.HeaderKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/HeaderKey``.
	static var header: Self {
		Self()
	}
}
