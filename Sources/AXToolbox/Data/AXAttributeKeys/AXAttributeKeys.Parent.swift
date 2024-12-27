import let ApplicationServices.HIServices.AXAttributeConstants.kAXParentAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXParentAttribute`](https://developer.apple.com/documentation/applicationservices/kaxparentattribute)\.
	struct Parent: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXParentAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Parent
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Parent``.
	static var parent: Self {
		Self()
	}
}
