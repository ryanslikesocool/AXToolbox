import let ApplicationServices.HIServices.AXAttributeConstants.kAXMainAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMainAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmainattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/main``
	struct Main: AXAttributeKey {
		public typealias Output = Bool

		public static var attributeKey: String { kAXMainAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Main
{
	/// The attribute key for
	/// [`kAXMainAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmainattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Main``
	static var main: Self {
		Self()
	}
}
