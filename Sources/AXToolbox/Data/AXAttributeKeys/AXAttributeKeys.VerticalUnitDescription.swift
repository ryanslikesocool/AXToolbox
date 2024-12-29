import let ApplicationServices.HIServices.AXAttributeConstants.kAXVerticalUnitDescriptionAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXVerticalUnitDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxverticalunitdescriptionattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/verticalUnitDescription``
	struct VerticalUnitDescription: AXAttributeKey {
		public typealias Output = String

		public static var attributeKey: String { kAXVerticalUnitDescriptionAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.VerticalUnitDescription
{
	/// The attribute key for
	/// [`kAXVerticalUnitDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxverticalunitdescriptionattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/VerticalUnitDescription``
	static var verticalUnitDescription: Self {
		Self()
	}
}
