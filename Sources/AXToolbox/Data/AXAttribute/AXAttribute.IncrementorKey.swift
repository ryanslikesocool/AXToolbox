import let ApplicationServices.HIServices.AXAttributeConstants.kAXIncrementorAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXIncrementorAttribute`](https://developer.apple.com/documentation/applicationservices/kaxincrementorattribute)\.
	struct IncrementorKey: AXAttributeKey {
		// Probably `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXIncrementorAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.IncrementorKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/IncrementorKey``.
	static var incrementor: Self {
		Self()
	}
}
