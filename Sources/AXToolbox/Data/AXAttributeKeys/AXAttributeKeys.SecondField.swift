import let ApplicationServices.HIServices.AXAttributeConstants.kAXSecondFieldAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXSecondFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsecondfieldattribute)\.
	struct SecondField: AXAttributeKey {
		// Probably `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXSecondFieldAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.SecondField
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/SecondField``.
	static var secondField: Self {
		Self()
	}
}
