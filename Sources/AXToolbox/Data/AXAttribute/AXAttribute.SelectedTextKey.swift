import let ApplicationServices.HIServices.AXAttributeConstants.kAXSelectedTextAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXSelectedTextAttribute`](https://developer.apple.com/documentation/applicationservices/kaxselectedtextattribute)\.
	struct SelectedTextKey: AXAttributeKey {
		// Probably `String`.
		public typealias Value = Any

		public static var attributeKey: String { kAXSelectedTextAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.SelectedTextKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/SelectedTextKey``.
	static var selectedText: Self {
		Self()
	}
}
