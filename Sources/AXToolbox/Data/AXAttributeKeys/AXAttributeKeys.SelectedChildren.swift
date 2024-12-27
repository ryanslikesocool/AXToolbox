import let ApplicationServices.HIServices.AXAttributeConstants.kAXSelectedChildrenAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXSelectedChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxselectedchildrenattribute)\.
	struct SelectedChildren: AXAttributeKey {
		public typealias Value = [AXUIElement]

		public static var attributeKey: String { kAXSelectedChildrenAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.SelectedChildren
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/SelectedChildren``.
	static var selectedChildren: Self {
		Self()
	}
}
