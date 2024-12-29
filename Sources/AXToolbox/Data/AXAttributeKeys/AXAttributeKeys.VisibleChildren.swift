import let ApplicationServices.HIServices.AXAttributeConstants.kAXVisibleChildrenAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXVisibleChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvisiblechildrenattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/visibleChildren``
	struct VisibleChildren: AXAttributeKey {
		public typealias Output = [AXUIElement]

		public static var attributeKey: String { kAXVisibleChildrenAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.VisibleChildren
{
	/// The attribute key for
	/// [`kAXVisibleChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvisiblechildrenattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/VisibleChildren``
	static var visibleChildren: Self {
		Self()
	}
}
