import let ApplicationServices.HIServices.AXAttributeConstants.kAXVerticalUnitDescriptionAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXVerticalUnitDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxverticalunitdescriptionattribute)\.
	struct VerticalUnitDescription: AXAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kAXVerticalUnitDescriptionAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.VerticalUnitDescription
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/VerticalUnitDescription``.
	static var verticalUnitDescription: Self {
		Self()
	}
}
