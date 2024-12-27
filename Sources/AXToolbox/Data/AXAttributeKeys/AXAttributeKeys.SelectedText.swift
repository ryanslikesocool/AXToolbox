import let ApplicationServices.HIServices.AXAttributeConstants.kAXSelectedTextAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXSelectedTextAttribute`](https://developer.apple.com/documentation/applicationservices/kaxselectedtextattribute)\.
	struct SelectedText: AXAttributeKey {
		// Probably `String`.
		public typealias Value = Any

		public static var attributeKey: String { kAXSelectedTextAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.SelectedText
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/SelectedText``.
	static var selectedText: Self {
		Self()
	}
}
