private import let ApplicationServices.HIServices.AXAttributeConstants.kAXSharedTextUIElementsAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXSharedTextUIElementsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsharedtextuielementsattribute)\.
	struct SharedTextUIElementsKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXSharedTextUIElementsAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.SharedTextUIElementsKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/SharedTextUIElementsKey``.
	static var sharedTextUIElements: Self {
		Self()
	}
}
