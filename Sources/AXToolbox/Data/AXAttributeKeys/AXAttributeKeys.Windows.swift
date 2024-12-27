import let ApplicationServices.HIServices.AXAttributeConstants.kAXWindowsAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXWindowsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxwindowsattribute)\.
	struct Windows: AXAttributeKey {
		public typealias Value = [AXUIElement]

		public static var attributeKey: String { kAXWindowsAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Windows
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Windows``.
	static var windows: Self {
		Self()
	}
}
