import let ApplicationServices.HIServices.AXAttributeConstants.kAXSharedTextUIElementsAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXSharedTextUIElementsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsharedtextuielementsattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/sharedTextUIElements``
	struct SharedTextUIElements: AXAttributeKey {
		public typealias Output = [AXUIElement]

		public static var attributeKey: String { kAXSharedTextUIElementsAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.SharedTextUIElements
{
	/// The attribute key for
	/// [`kAXSharedTextUIElementsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsharedtextuielementsattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/SharedTextUIElements``
	static var sharedTextUIElements: Self {
		Self()
	}
}
