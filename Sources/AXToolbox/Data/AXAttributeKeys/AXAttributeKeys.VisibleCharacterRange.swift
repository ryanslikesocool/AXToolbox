import let ApplicationServices.HIServices.AXAttributeConstants.kAXVisibleCharacterRangeAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXVisibleCharacterRangeAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvisiblecharacterrangeattribute)\.
	struct VisibleCharacterRange: AXAttributeKey {
		// Probably `AXValue` with underlying `CFRange`.
		public typealias Value = Any

		public static var attributeKey: String { kAXVisibleCharacterRangeAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.VisibleCharacterRange
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/VisibleCharacterRange``.
	static var visibleCharacterRange: Self {
		Self()
	}
}
