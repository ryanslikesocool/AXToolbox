import let ApplicationServices.HIServices.AXAttributeConstants.kAXSelectedTextRangesAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXSelectedTextRangesAttribute`](https://developer.apple.com/documentation/applicationservices/kaxselectedtextrangesattribute)\.
	struct SelectedTextRanges: AXAttributeKey {
		// Probably `CFArray` of `AXValue` with underlying `CFRange`.
		public typealias Value = Any

		public static var attributeKey: String { kAXSelectedTextRangesAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.SelectedTextRanges
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/SelectedTextRanges``.
	static var selectedTextRanges: Self {
		Self()
	}
}
