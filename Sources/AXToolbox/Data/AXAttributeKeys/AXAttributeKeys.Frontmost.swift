import let ApplicationServices.HIServices.AXAttributeConstants.kAXFrontmostAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXFrontmostAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfrontmostattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/frontmost``
	struct Frontmost: AXAttributeKey {
		public typealias Output = Bool

		public static var attributeKey: String { kAXFrontmostAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Frontmost
{
	/// The attribute key for
	/// [`kAXFrontmostAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfrontmostattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Frontmost``
	static var frontmost: Self {
		Self()
	}
}
