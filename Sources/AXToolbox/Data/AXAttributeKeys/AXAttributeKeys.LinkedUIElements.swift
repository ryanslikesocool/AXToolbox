import let ApplicationServices.HIServices.AXAttributeConstants.kAXLinkedUIElementsAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXLinkedUIElementsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxlinkeduielementsattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/linkedUIElements``
	struct LinkedUIElements: AXAttributeKey {
		public typealias Output = [AXUIElement]

		public static var attributeKey: String { kAXLinkedUIElementsAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.LinkedUIElements
{
	/// The attribute key for
	/// [`kAXLinkedUIElementsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxlinkeduielementsattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/LinkedUIElements``
	static var linkedUIElements: Self {
		Self()
	}
}
