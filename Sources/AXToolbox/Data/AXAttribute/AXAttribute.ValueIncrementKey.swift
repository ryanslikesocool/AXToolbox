private import let ApplicationServices.HIServices.AXAttributeConstants.kAXValueIncrementAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXValueIncrementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvalueincrementattribute)\.
	struct ValueIncrementKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXValueIncrementAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.ValueIncrementKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/ValueIncrementKey``.
	static var valueIncrement: Self {
		Self()
	}
}
