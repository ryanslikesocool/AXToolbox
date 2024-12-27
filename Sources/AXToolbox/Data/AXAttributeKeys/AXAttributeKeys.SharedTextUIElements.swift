import let ApplicationServices.HIServices.AXAttributeConstants.kAXSharedTextUIElementsAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXSharedTextUIElementsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsharedtextuielementsattribute)\.
	struct SharedTextUIElements: AXAttributeKey {
		public typealias Value = [AXUIElement]

		public static var attributeKey: String { kAXSharedTextUIElementsAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.SharedTextUIElements
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/SharedTextUIElements``.
	static var sharedTextUIElements: Self {
		Self()
	}
}
