import let ApplicationServices.HIServices.AXAttributeConstants.kAXToolbarButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXToolbarButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtoolbarbuttonattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/toolbarButton``
	struct ToolbarButton: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String { kAXToolbarButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.ToolbarButton
{
	/// The attribute key for
	/// [`kAXToolbarButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtoolbarbuttonattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/ToolbarButton``
	static var toolbarButton: Self {
		Self()
	}
}
