import let ApplicationServices.HIServices.AXAttributeConstants.kAXChildrenAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxchildrenattribute)\.
	struct ChildrenKey: AXAttributeKey {
		public typealias Value = [AXUIElement]

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
