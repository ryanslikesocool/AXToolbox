private import let ApplicationServices.HIServices.AXAttributeConstants.kAXSelectedTextRangesAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXSelectedTextRangesAttribute`](https://developer.apple.com/documentation/applicationservices/kaxselectedtextrangesattribute)\.
	struct SelectedTextRangesKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXSelectedTextRangesAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.SelectedTextRangesKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/SelectedTextRangesKey``.
	static var selectedTextRanges: Self {
		Self()
	}
}