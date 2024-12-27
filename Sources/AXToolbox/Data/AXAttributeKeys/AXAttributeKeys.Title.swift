import let ApplicationServices.HIServices.AXAttributeConstants.kAXTitleAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXTitleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtitleattribute)\.
	struct Title: AXAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kAXTitleAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Title
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Title``.
	static var title: Self {
		Self()
	}
}
