import let ApplicationServices.HIServices.AXAttributeConstants.kAXFocusedAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXFocusedAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxfocusedattribute ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/focused``
	struct Focused: AXAttributeKey {
		public typealias Output = Bool

		public static var attributeKey: String {
			kAXFocusedAttribute
		}

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Focused
{
	/// The attribute key for
	/// [`kAXFocusedAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxfocusedattribute ).
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Focused``
	static var focused: Self {
		Self()
	}
}
