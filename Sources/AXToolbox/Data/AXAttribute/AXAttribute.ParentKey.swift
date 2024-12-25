import let ApplicationServices.HIServices.AXAttributeConstants.kAXParentAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXParentAttribute`](https://developer.apple.com/documentation/applicationservices/kaxparentattribute)\.
	struct ParentKey: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXParentAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.ParentKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/ParentKey``.
	static var parent: Self {
		Self()
	}
}
