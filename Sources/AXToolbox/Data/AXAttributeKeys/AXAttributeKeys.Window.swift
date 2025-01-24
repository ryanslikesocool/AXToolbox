import let ApplicationServices.HIServices.AXAttributeConstants.kAXWindowAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXWindowAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxwindowattribute ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/window``
	struct Window: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String {
			kAXWindowAttribute
		}

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Window
{
	/// The attribute key for
	/// [`kAXWindowAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxwindowattribute ).
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Window``
	static var window: Self {
		Self()
	}
}
