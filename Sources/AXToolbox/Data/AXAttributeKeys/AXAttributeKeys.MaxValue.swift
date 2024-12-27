import let ApplicationServices.HIServices.AXAttributeConstants.kAXMaxValueAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMaxValueAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmaxvalueattribute)\.
	struct MaxValue: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXMaxValueAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.MaxValue
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/MaxValue``.
	static var maxValue: Self {
		Self()
	}
}
