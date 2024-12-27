import let ApplicationServices.HIServices.AXAttributeConstants.kAXContentsAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXContentsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxcontentsattribute)\.
	struct Contents: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXContentsAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Contents
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Contents``.
	static var contents: Self {
		Self()
	}
}
