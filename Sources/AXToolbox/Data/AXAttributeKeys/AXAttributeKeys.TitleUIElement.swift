import let ApplicationServices.HIServices.AXAttributeConstants.kAXTitleUIElementAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXTitleUIElementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtitleuielementattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/titleUIElement``
	struct TitleUIElement: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String { kAXTitleUIElementAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.TitleUIElement
{
	/// The attribute key for
	/// [`kAXTitleUIElementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtitleuielementattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/TitleUIElement``
	static var titleUIElement: Self {
		Self()
	}
}
