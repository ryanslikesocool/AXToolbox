private import let ApplicationServices.HIServices.AXAttributeConstants.kAXDefaultButtonAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXDefaultButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdefaultbuttonattribute)\.
	struct DefaultButtonKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXDefaultButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.DefaultButtonKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/DefaultButtonKey``.
	static var defaultButton: Self {
		Self()
	}
}
