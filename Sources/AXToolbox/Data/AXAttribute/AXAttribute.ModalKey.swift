import let ApplicationServices.HIServices.AXAttributeConstants.kAXModalAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXModalAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmodalattribute)\.
	struct ModalKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXModalAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.ModalKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/ModalKey``.
	static var modal: Self {
		Self()
	}
}
