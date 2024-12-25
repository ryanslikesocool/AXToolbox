import let ApplicationServices.HIServices.AXAttributeConstants.kAXVisibleChildrenAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXVisibleChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvisiblechildrenattribute)\.
	struct VisibleChildrenKey: AXAttributeKey {
		public typealias Value = [AXUIElement]

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
