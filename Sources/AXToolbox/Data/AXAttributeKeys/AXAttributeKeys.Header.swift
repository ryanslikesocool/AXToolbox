import let ApplicationServices.HIServices.AXAttributeConstants.kAXHeaderAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXHeaderAttribute`](https://developer.apple.com/documentation/applicationservices/kaxheaderattribute)\.
	struct Header: AXAttributeKey {
		// Probably `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXHeaderAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Header
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Header``.
	static var header: Self {
		Self()
	}
}
