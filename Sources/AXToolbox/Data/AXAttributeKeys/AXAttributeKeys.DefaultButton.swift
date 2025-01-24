import let ApplicationServices.HIServices.AXAttributeConstants.kAXDefaultButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXDefaultButtonAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxdefaultbuttonattribute ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/defaultButton``
	struct DefaultButton: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String {
			kAXDefaultButtonAttribute
		}

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.DefaultButton
{
	/// The attribute key for
	/// [`kAXDefaultButtonAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxdefaultbuttonattribute ).
	/// 
	/// ## See Also
	/// - ``AXAttributeKeys/DefaultButton``
	static var defaultButton: Self {
		Self()
	}
}
