import let ApplicationServices.HIServices.AXAttributeConstants.kAXSharedCharacterRangeAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXSharedCharacterRangeAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsharedcharacterrangeattribute)\.
	struct SharedCharacterRange: AXAttributeKey {
		// Probably `AXValue` with underlying `CFRange`.
		public typealias Value = Any

		public static var attributeKey: String { kAXSharedCharacterRangeAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.SharedCharacterRange
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/SharedCharacterRange``.
	static var sharedCharacterRange: Self {
		Self()
	}
}
