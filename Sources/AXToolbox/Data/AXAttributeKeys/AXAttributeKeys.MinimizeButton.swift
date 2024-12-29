import let ApplicationServices.HIServices.AXAttributeConstants.kAXMinimizeButtonAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMinimizeButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminimizebuttonattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/minimizeButton``
	struct MinimizeButton: AXAttributeKey {
		public typealias Output = AXUIElement

		public static var attributeKey: String { kAXMinimizeButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.MinimizeButton
{
	/// The attribute key for
	/// [`kAXMinimizeButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminimizebuttonattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/MinimizeButton``
	static var minimizeButton: Self {
		Self()
	}
}
