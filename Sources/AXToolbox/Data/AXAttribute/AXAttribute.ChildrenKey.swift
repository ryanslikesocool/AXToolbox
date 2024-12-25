private import let ApplicationServices.HIServices.AXAttributeConstants.kAXChildrenAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxchildrenattribute)\.
	struct ChildrenKey: AXAttributeKey {
		// Probably `CFArray` of `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXChildrenAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.ChildrenKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/ChildrenKey``.
	static var children: Self {
		Self()
	}
}
