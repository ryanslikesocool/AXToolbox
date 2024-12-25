private import let ApplicationServices.HIServices.AXAttributeConstants.kAXTitleAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXTitleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtitleattribute)\.
	struct TitleKey: AXAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kAXTitleAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.TitleKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/TitleKey``.
	static var title: Self {
		Self()
	}
}
