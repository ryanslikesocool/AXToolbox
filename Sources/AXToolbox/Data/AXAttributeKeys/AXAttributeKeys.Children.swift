import let ApplicationServices.HIServices.AXAttributeConstants.kAXChildrenAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxchildrenattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/children``
	struct Children: AXAttributeKey {
		public typealias Output = [AXUIElement]

		public static var attributeKey: String { kAXChildrenAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Children
{
	/// The attribute key for
	/// [`kAXChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxchildrenattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Children``
	static var children: Self {
		Self()
	}
}
