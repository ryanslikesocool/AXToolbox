private import let ApplicationServices.HIServices.AXAttributeConstants.kAXVisibleChildrenAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXVisibleChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvisiblechildrenattribute)\.
	struct VisibleChildrenKey: AXAttributeKey {
		// Probably `CFArray` of `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXVisibleChildrenAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.VisibleChildrenKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/VisibleChildrenKey``.
	static var visibleChildren: Self {
		Self()
	}
}
