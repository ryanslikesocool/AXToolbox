import let ApplicationServices.HIServices.AXAttributeConstants.kAXCancelButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXCancelButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxcancelbuttonattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/cancelButton``
	struct CancelButton: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String { kAXCancelButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.CancelButton
{
	/// The attribute key for
	/// [`kAXCancelButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxcancelbuttonattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/CancelButton``
	static var cancelButton: Self {
		Self()
	}
}
