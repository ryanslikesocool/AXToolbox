import let ApplicationServices.HIServices.AXAttributeConstants.kAXDescriptionAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdescriptionattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/description``
	struct Description: AXAttributeKey {
		public typealias Output = String

		public static var attributeKey: String { kAXDescriptionAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Description
{
	/// The attribute key for
	/// [`kAXDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdescriptionattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Description``
	static var description: Self {
		Self()
	}
}
