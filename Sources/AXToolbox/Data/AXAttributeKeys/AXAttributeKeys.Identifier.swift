import let ApplicationServices.HIServices.AXAttributeConstants.kAXIdentifierAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXIdentifierAttribute`](https://developer.apple.com/documentation/applicationservices/kaxidentifierattribute)\.
	struct Identifier: AXAttributeKey {
		// Probably `String`.
		public typealias Value = Any

		public static var attributeKey: String { kAXIdentifierAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Identifier
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Identifier``.
	static var identifier: Self {
		Self()
	}
}
