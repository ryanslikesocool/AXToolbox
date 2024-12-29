import let ApplicationServices.HIServices.AXAttributeConstants.kAXHiddenAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXHiddenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxhiddenattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/hidden``
	struct Hidden: AXAttributeKey {
		public typealias Output = Bool

		public static var attributeKey: String { kAXHiddenAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Hidden
{
	/// The attribute key for
	/// [`kAXHiddenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxhiddenattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Hidden``
	static var hidden: Self {
		Self()
	}
}
