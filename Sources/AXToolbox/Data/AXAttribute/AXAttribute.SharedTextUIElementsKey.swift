import let ApplicationServices.HIServices.AXAttributeConstants.kAXSharedTextUIElementsAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXSharedTextUIElementsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsharedtextuielementsattribute)\.
	struct SharedTextUIElementsKey: AXAttributeKey {
		public typealias Value = [AXUIElement]

		public static var attributeKey: String { kAXSharedTextUIElementsAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.SharedTextUIElementsKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/SharedTextUIElementsKey``.
	static var sharedTextUIElements: Self {
		Self()
	}
}
