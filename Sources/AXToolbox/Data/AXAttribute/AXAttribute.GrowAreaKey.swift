import let ApplicationServices.HIServices.AXAttributeConstants.kAXGrowAreaAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXGrowAreaAttribute`](https://developer.apple.com/documentation/applicationservices/kaxgrowareaattribute)\.
	struct GrowAreaKey: AXAttributeKey {
		// Maybe `AXValue` with underlying `CGRect`.
		public typealias Value = Any

		public static var attributeKey: String { kAXGrowAreaAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.GrowAreaKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/GrowAreaKey``.
	static var growArea: Self {
		Self()
	}
}
