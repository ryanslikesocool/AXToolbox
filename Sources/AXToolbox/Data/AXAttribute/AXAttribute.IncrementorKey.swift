private import let ApplicationServices.HIServices.AXAttributeConstants.kAXIncrementorAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXIncrementorAttribute`](https://developer.apple.com/documentation/applicationservices/kaxincrementorattribute)\.
	struct IncrementorKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXIncrementorAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.IncrementorKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/IncrementorKey``.
	static var incrementor: Self {
		Self()
	}
}
