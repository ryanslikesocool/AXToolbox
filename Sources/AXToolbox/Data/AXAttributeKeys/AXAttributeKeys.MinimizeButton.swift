import let ApplicationServices.HIServices.AXAttributeConstants.kAXMinimizeButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMinimizeButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminimizebuttonattribute)\.
	struct MinimizeButton: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXMinimizeButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.MinimizeButton
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/MinimizeButton``.
	static var minimizeButton: Self {
		Self()
	}
}
