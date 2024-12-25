import let ApplicationServices.HIServices.AXAttributeConstants.kAXMainWindowAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXMainWindowAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmainwindowattribute)\.
	struct MainWindowKey: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXMainWindowAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.MainWindowKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/MainWindowKey``.
	static var mainWindow: Self {
		Self()
	}
}
