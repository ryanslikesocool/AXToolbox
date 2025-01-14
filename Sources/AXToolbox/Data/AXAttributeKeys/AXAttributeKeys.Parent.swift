import let ApplicationServices.HIServices.AXAttributeConstants.kAXParentAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXParentAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxparentattribute ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/parent``
	struct Parent: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String {
			kAXParentAttribute
		}

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Parent
{
	/// The attribute key for
	/// [`kAXParentAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxparentattribute ).
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Parent``
	static var parent: Self {
		Self()
	}
}
