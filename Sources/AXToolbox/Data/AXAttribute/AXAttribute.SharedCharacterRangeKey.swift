private import let ApplicationServices.HIServices.AXAttributeConstants.kAXSharedCharacterRangeAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXSharedCharacterRangeAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsharedcharacterrangeattribute)\.
	struct SharedCharacterRangeKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXSharedCharacterRangeAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.SharedCharacterRangeKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/SharedCharacterRangeKey``.
	static var sharedCharacterRange: Self {
		Self()
	}
}