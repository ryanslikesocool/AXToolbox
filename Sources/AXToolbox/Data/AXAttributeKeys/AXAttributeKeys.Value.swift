import let ApplicationServices.HIServices.AXAttributeConstants.kAXValueAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXValueAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvalueattribute)\.
	struct Value: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXValueAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Value
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Value``.
	static var value: Self {
		Self()
	}
}
