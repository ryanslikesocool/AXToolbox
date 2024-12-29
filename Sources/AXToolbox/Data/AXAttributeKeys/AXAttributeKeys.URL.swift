import let ApplicationServices.HIServices.AXAttributeConstants.kAXURLAttribute
import struct Foundation.URL

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXURLAttribute`](https://developer.apple.com/documentation/applicationservices/kaxurlattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/url``
	struct URL: AXAttributeKey {
		public typealias Output = Foundation.URL

		public static var attributeKey: String { kAXURLAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.URL
{
	/// The attribute key for
	/// [`kAXURLAttribute`](https://developer.apple.com/documentation/applicationservices/kaxurlattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/URL``
	static var url: Self {
		Self()
	}
}
