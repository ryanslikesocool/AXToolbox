import let ApplicationServices.HIServices.AXAttributeConstants.kAXHorizontalUnitDescriptionAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXHorizontalUnitDescriptionAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxhorizontalunitdescriptionattribute ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/horizontalUnitDescription``
	struct HorizontalUnitDescription: AXAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kAXHorizontalUnitDescriptionAttribute
		}

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.HorizontalUnitDescription
{
	/// The attribute key for
	/// [`kAXHorizontalUnitDescriptionAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxhorizontalunitdescriptionattribute ).
	///
	/// ## See Also
	/// - ``AXAttributeKeys/HorizontalUnitDescription``
	static var horizontalUnitDescription: Self {
		Self()
	}
}
