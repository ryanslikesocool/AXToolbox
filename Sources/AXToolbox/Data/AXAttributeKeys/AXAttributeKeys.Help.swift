import let ApplicationServices.HIServices.AXAttributeConstants.kAXHelpAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXHelpAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxhelpattribute ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/help``
	struct Help: AXAttributeKey {
		public typealias Output = String

		public static var attributeKey: String {
			kAXHelpAttribute
		}

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Help
{
	/// The attribute key for
	/// [`kAXHelpAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxhelpattribute ).
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Help``
	static var help: Self {
		Self()
	}
}
