private import let ApplicationServices.HIServices.AXAttributeConstants.kAXCancelButtonAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXCancelButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxcancelbuttonattribute)\.
	struct CancelButtonKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXCancelButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.CancelButtonKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/CancelButtonKey``.
	static var cancelButton: Self {
		Self()
	}
}
