private import let ApplicationServices.HIServices.AXAttributeConstants.kAXSelectedTextRangeAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXSelectedTextRangeAttribute`](https://developer.apple.com/documentation/applicationservices/kaxselectedtextrangeattribute)\.
	struct SelectedTextRangeKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXSelectedTextRangeAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.SelectedTextRangeKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/SelectedTextRangeKey``.
	static var selectedTextRange: Self {
		Self()
	}
}
