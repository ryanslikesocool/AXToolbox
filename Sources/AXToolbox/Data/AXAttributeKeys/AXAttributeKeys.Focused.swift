import let ApplicationServices.HIServices.AXAttributeConstants.kAXFocusedAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXFocusedAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfocusedattribute)\.
	struct Focused: AXAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kAXFocusedAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Focused
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Focused``.
	static var focused: Self {
		Self()
	}
}
