import let ApplicationServices.HIServices.AXAttributeConstants.kAXTitleUIElementAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXTitleUIElementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtitleuielementattribute)\.
	struct TitleUIElementKey: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXTitleUIElementAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.TitleUIElementKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/TitleUIElementKey``.
	static var titleUIElement: Self {
		Self()
	}
}
