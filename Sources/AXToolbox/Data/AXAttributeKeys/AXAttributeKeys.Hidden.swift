import let ApplicationServices.HIServices.AXAttributeConstants.kAXHiddenAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXHiddenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxhiddenattribute)\.
	struct Hidden: AXAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kAXHiddenAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Hidden
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Hidden``.
	static var hidden: Self {
		Self()
	}
}
