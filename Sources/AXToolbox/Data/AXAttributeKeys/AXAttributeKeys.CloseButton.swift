import let ApplicationServices.HIServices.AXAttributeConstants.kAXCloseButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXCloseButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxclosebuttonattribute)\.
	struct CloseButton: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXCloseButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.CloseButton
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/CloseButton``.
	static var closeButton: Self {
		Self()
	}
}
