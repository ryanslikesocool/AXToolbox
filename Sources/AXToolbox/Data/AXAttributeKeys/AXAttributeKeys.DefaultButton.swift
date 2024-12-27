import let ApplicationServices.HIServices.AXAttributeConstants.kAXDefaultButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXDefaultButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdefaultbuttonattribute)\.
	struct DefaultButton: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXDefaultButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.DefaultButton
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/DefaultButton``.
	static var defaultButton: Self {
		Self()
	}
}
