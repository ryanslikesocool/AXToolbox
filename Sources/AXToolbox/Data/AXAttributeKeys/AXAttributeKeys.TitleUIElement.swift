import let ApplicationServices.HIServices.AXAttributeConstants.kAXTitleUIElementAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXTitleUIElementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtitleuielementattribute)\.
	struct TitleUIElement: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXTitleUIElementAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.TitleUIElement
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/TitleUIElement``.
	static var titleUIElement: Self {
		Self()
	}
}
