import let ApplicationServices.HIServices.AXAttributeConstants.kAXSelectedChildrenAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXSelectedChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxselectedchildrenattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/selectedChildren``
	struct SelectedChildren: AXAttributeKey {
		public typealias Output = [AXUIElement]

		public static var attributeKey: String { kAXSelectedChildrenAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.SelectedChildren
{
	/// The attribute key for
	/// [`kAXSelectedChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxselectedchildrenattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/SelectedChildren``
	static var selectedChildren: Self {
		Self()
	}
}
