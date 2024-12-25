import let ApplicationServices.HIServices.AXAttributeConstants.kAXCloseButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXCloseButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxclosebuttonattribute)\.
	struct CloseButtonKey: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXCloseButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.CloseButtonKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/CloseButtonKey``.
	static var closeButton: Self {
		Self()
	}
}
