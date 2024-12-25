private import let ApplicationServices.HIServices.AXAttributeConstants.kAXSelectedChildrenAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXSelectedChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxselectedchildrenattribute)\.
	struct SelectedChildrenKey: AXAttributeKey {
		// Probably `CFArray` of `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXSelectedChildrenAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.SelectedChildrenKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/SelectedChildrenKey``.
	static var selectedChildren: Self {
		Self()
	}
}
