import let ApplicationServices.HIServices.AXAttributeConstants.kAXLinkedUIElementsAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXLinkedUIElementsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxlinkeduielementsattribute)\.
	struct LinkedUIElementsKey: AXAttributeKey {
		public typealias Value = [AXUIElement]

		public static var attributeKey: String { kAXLinkedUIElementsAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.LinkedUIElementsKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/LinkedUIElementsKey``.
	static var linkedUIElements: Self {
		Self()
	}
}
