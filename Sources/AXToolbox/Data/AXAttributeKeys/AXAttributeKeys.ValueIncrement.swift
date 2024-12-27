import let ApplicationServices.HIServices.AXAttributeConstants.kAXValueIncrementAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXValueIncrementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvalueincrementattribute)\.
	struct ValueIncrement: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXValueIncrementAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.ValueIncrement
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/ValueIncrement``.
	static var valueIncrement: Self {
		Self()
	}
}
