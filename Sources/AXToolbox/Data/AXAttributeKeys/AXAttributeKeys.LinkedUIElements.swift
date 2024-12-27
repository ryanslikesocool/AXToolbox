import let ApplicationServices.HIServices.AXAttributeConstants.kAXLinkedUIElementsAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXLinkedUIElementsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxlinkeduielementsattribute)\.
	struct LinkedUIElements: AXAttributeKey {
		public typealias Value = [AXUIElement]

		public static var attributeKey: String { kAXLinkedUIElementsAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.LinkedUIElements
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/LinkedUIElements``.
	static var linkedUIElements: Self {
		Self()
	}
}
