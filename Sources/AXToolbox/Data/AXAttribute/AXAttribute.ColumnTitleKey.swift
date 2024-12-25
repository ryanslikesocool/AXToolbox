private import let ApplicationServices.HIServices.AXAttributeConstants.kAXColumnTitleAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXColumnTitleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxcolumntitleattribute)\.
	struct ColumnTitleKey: AXAttributeKey {
		// Probably `String`.
		public typealias Value = Any

		public static var attributeKey: String { kAXColumnTitleAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.ColumnTitleKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/ColumnTitleKey``.
	static var columnTitle: Self {
		Self()
	}
}
