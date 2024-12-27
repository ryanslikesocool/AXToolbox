import let ApplicationServices.HIServices.AXAttributeConstants.kAXTopLevelUIElementAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXTopLevelUIElementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtopleveluielementattribute)\.
	struct TopLevelUIElement: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXTopLevelUIElementAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.TopLevelUIElement
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/TopLevelUIElement``.
	static var topLevelUIElement: Self {
		Self()
	}
}
