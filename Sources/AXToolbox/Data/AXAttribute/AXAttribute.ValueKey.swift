import let ApplicationServices.HIServices.AXAttributeConstants.kAXValueAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXValueAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvalueattribute)\.
	struct ValueKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXValueAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.ValueKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/ValueKey``.
	static var value: Self {
		Self()
	}
}
