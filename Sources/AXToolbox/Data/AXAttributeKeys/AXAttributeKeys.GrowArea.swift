import let ApplicationServices.HIServices.AXAttributeConstants.kAXGrowAreaAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXGrowAreaAttribute`](https://developer.apple.com/documentation/applicationservices/kaxgrowareaattribute)\.
	struct GrowArea: AXAttributeKey {
		// Maybe `AXValue` with underlying `CGRect`.
		public typealias Value = Any

		public static var attributeKey: String { kAXGrowAreaAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.GrowArea
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/GrowArea``.
	static var growArea: Self {
		Self()
	}
}
