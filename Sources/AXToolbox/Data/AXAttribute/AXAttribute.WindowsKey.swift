import let ApplicationServices.HIServices.AXAttributeConstants.kAXWindowsAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXWindowsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxwindowsattribute)\.
	struct WindowsKey: AXAttributeKey {
		public typealias Value = [AXUIElement]

		public static var attributeKey: String { kAXWindowsAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.WindowsKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/WindowsKey``.
	static var windows: Self {
		Self()
	}
}
