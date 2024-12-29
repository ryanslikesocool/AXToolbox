import let ApplicationServices.HIServices.AXAttributeConstants.kAXWindowsAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXWindowsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxwindowsattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/windows``
	struct Windows: AXAttributeKey {
		public typealias Output = [AXUIElement]

		public static var attributeKey: String { kAXWindowsAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Windows
{
	/// The attribute key for
	/// [`kAXWindowsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxwindowsattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Windows``
	static var windows: Self {
		Self()
	}
}
