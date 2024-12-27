import let ApplicationServices.HIServices.AXAttributeConstants.kAXIncrementorAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXIncrementorAttribute`](https://developer.apple.com/documentation/applicationservices/kaxincrementorattribute)\.
	struct Incrementor: AXAttributeKey {
		// Probably `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXIncrementorAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Incrementor
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Incrementor``.
	static var incrementor: Self {
		Self()
	}
}
