import let ApplicationServices.HIServices.AXAttributeConstants.kAXMainWindowAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMainWindowAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmainwindowattribute)\.
	struct MainWindow: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXMainWindowAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.MainWindow
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/MainWindow``.
	static var mainWindow: Self {
		Self()
	}
}
