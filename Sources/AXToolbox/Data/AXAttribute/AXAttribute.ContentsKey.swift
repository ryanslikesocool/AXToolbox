private import let ApplicationServices.HIServices.AXAttributeConstants.kAXContentsAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXContentsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxcontentsattribute)\.
	struct ContentsKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXContentsAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.ContentsKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/ContentsKey``.
	static var contents: Self {
		Self()
	}
}
