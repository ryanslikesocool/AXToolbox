import let ApplicationServices.HIServices.AXAttributeConstants.kAXMainAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMainAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmainattribute)\.
	struct Main: AXAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kAXMainAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Main
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Main``.
	static var main: Self {
		Self()
	}
}
