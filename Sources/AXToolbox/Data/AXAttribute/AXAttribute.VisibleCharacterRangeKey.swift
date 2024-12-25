import let ApplicationServices.HIServices.AXAttributeConstants.kAXVisibleCharacterRangeAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXVisibleCharacterRangeAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvisiblecharacterrangeattribute)\.
	struct VisibleCharacterRangeKey: AXAttributeKey {
		// Probably `AXValue` with underlying `CFRange`.
		public typealias Value = Any

		public static var attributeKey: String { kAXVisibleCharacterRangeAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.VisibleCharacterRangeKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/VisibleCharacterRangeKey``.
	static var visibleCharacterRange: Self {
		Self()
	}
}
