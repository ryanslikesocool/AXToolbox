import let ApplicationServices.HIServices.AXAttributeConstants.kAXCloseButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXCloseButtonAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxclosebuttonattribute ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/closeButton``
	struct CloseButton: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String {
			kAXCloseButtonAttribute
		}

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.CloseButton
{
	/// The attribute key for
	/// [`kAXCloseButtonAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxclosebuttonattribute ).
	///
	/// ## See Also
	/// - ``AXAttributeKeys/CloseButton``
	static var closeButton: Self {
		Self()
	}
}
