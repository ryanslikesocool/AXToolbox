import let ApplicationServices.HIServices.AXAttributeConstants.kAXHorizontalUnitDescriptionAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXHorizontalUnitDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxhorizontalunitdescriptionattribute)\.
	struct HorizontalUnitDescription: AXAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kAXHorizontalUnitDescriptionAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.HorizontalUnitDescription
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/HorizontalUnitDescription``.
	static var horizontalUnitDescription: Self {
		Self()
	}
}
