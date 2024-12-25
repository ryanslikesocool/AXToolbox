import let ApplicationServices.HIServices.AXAttributeConstants.kAXCancelButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXCancelButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxcancelbuttonattribute)\.
	struct CancelButtonKey: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXCancelButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.CancelButtonKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/CancelButtonKey``.
	static var cancelButton: Self {
		Self()
	}
}
