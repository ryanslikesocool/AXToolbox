import let ApplicationServices.HIServices.AXAttributeConstants.kAXURLAttribute
import struct Foundation.URL

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXURLAttribute`](https://developer.apple.com/documentation/applicationservices/kaxurlattribute)\.
	struct URL: AXAttributeKey {
		public typealias Value = Foundation.URL

		public static var attributeKey: String { kAXURLAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.URL
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/URL``.
	static var url: Self {
		Self()
	}
}
