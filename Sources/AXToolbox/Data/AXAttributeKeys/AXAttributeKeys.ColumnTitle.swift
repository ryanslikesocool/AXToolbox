import let ApplicationServices.HIServices.AXAttributeConstants.kAXColumnTitleAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXColumnTitleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxcolumntitleattribute)\.
	struct ColumnTitle: AXAttributeKey {
		// Maybe `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXColumnTitleAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.ColumnTitle
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/ColumnTitle``.
	static var columnTitle: Self {
		Self()
	}
}
