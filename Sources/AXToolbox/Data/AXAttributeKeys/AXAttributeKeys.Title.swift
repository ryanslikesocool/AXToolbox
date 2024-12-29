import let ApplicationServices.HIServices.AXAttributeConstants.kAXTitleAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXTitleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtitleattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/title``
	struct Title: AXAttributeKey {
		public typealias Output = String

		public static var attributeKey: String { kAXTitleAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Title
{
	/// The attribute key for
	/// [`kAXTitleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtitleattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Title``
	static var title: Self {
		Self()
	}
}
