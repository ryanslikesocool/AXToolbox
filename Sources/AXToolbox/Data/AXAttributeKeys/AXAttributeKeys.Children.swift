import let ApplicationServices.HIServices.AXAttributeConstants.kAXChildrenAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxchildrenattribute)\.
	struct Children: AXAttributeKey {
		public typealias Value = [AXUIElement]

		public static var attributeKey: String { kAXChildrenAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Children
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Children``.
	static var children: Self {
		Self()
	}
}
