import let ApplicationServices.HIServices.AXAttributeConstants.kAXSelectedTextRangeAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXSelectedTextRangeAttribute`](https://developer.apple.com/documentation/applicationservices/kaxselectedtextrangeattribute)\.
	struct SelectedTextRange: AXAttributeKey {
		// Probably `AXValue` with underlying `CFRange`.
		public typealias Value = Any

		public static var attributeKey: String { kAXSelectedTextRangeAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.SelectedTextRange
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/SelectedTextRange``.
	static var selectedTextRange: Self {
		Self()
	}
}
