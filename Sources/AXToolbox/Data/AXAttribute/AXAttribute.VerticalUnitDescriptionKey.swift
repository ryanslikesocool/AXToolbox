import let ApplicationServices.HIServices.AXAttributeConstants.kAXVerticalUnitDescriptionAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXVerticalUnitDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxverticalunitdescriptionattribute)\.
	struct VerticalUnitDescriptionKey: AXAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kAXVerticalUnitDescriptionAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.VerticalUnitDescriptionKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/VerticalUnitDescriptionKey``.
	static var verticalUnitDescription: Self {
		Self()
	}
}
