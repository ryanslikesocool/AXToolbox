private import let ApplicationServices.HIServices.AXAttributeConstants.kAXSecondFieldAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXSecondFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsecondfieldattribute)\.
	struct SecondFieldKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXSecondFieldAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.SecondFieldKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/SecondFieldKey``.
	static var secondField: Self {
		Self()
	}
}
