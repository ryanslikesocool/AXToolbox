import let ApplicationServices.HIServices.AXAttributeConstants.kAXMainAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXMainAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmainattribute)\.
	struct MainKey: AXAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kAXMainAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.MainKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/MainKey``.
	static var main: Self {
		Self()
	}
}
