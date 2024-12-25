private import let ApplicationServices.HIServices.AXAttributeConstants.kAXCloseButtonAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXCloseButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxclosebuttonattribute)\.
	struct CloseButtonKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXCloseButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.CloseButtonKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/CloseButtonKey``.
	static var closeButton: Self {
		Self()
	}
}
