import let ApplicationServices.HIServices.AXAttributeConstants.kAXFrontmostAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXFrontmostAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfrontmostattribute)\.
	struct FrontmostKey: AXAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kAXFrontmostAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.FrontmostKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/FrontmostKey``.
	static var frontmost: Self {
		Self()
	}
}
