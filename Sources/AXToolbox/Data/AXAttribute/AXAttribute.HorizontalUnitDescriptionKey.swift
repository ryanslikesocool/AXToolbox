import let ApplicationServices.HIServices.AXAttributeConstants.kAXHorizontalUnitDescriptionAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXHorizontalUnitDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxhorizontalunitdescriptionattribute)\.
	struct HorizontalUnitDescriptionKey: AXAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kAXHorizontalUnitDescriptionAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.HorizontalUnitDescriptionKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/HorizontalUnitDescriptionKey``.
	static var horizontalUnitDescription: Self {
		Self()
	}
}
