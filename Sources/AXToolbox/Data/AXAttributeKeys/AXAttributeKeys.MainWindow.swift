import let ApplicationServices.HIServices.AXAttributeConstants.kAXMainWindowAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMainWindowAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxmainwindowattribute ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/mainWindow``
	struct MainWindow: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String {
			kAXMainWindowAttribute
		}

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.MainWindow
{
	/// The attribute key for
	/// [`kAXMainWindowAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxmainwindowattribute ).
	///
	/// ## See Also
	/// - ``AXAttributeKeys/MainWindow``
	static var mainWindow: Self {
		Self()
	}
}
