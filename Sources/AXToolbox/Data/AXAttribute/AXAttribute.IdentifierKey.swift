import let ApplicationServices.HIServices.AXAttributeConstants.kAXIdentifierAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXIdentifierAttribute`](https://developer.apple.com/documentation/applicationservices/kaxidentifierattribute)\.
	struct IdentifierKey: AXAttributeKey {
		// Probably `String`.
		public typealias Value = Any

		public static var attributeKey: String { kAXIdentifierAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.IdentifierKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/IdentifierKey``.
	static var identifier: Self {
		Self()
	}
}
