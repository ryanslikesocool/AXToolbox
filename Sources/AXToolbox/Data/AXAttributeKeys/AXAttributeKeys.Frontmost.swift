import let ApplicationServices.HIServices.AXAttributeConstants.kAXFrontmostAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXFrontmostAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfrontmostattribute)\.
	struct Frontmost: AXAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kAXFrontmostAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Frontmost
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Frontmost``.
	static var frontmost: Self {
		Self()
	}
}
