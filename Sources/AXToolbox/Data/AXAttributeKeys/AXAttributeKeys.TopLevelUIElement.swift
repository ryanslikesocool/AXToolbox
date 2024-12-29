import let ApplicationServices.HIServices.AXAttributeConstants.kAXTopLevelUIElementAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXTopLevelUIElementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtopleveluielementattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/topLevelUIElement``
	struct TopLevelUIElement: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String { kAXTopLevelUIElementAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.TopLevelUIElement
{
	/// The attribute key for
	/// [`kAXTopLevelUIElementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtopleveluielementattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/TopLevelUIElement``
	static var topLevelUIElement: Self {
		Self()
	}
}
