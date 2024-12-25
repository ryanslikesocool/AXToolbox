import let ApplicationServices.HIServices.AXAttributeConstants.kAXURLAttribute
import struct Foundation.URL

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXURLAttribute`](https://developer.apple.com/documentation/applicationservices/kaxurlattribute)\.
	struct URLKey: AXAttributeKey {
		public typealias Value = URL

		public static var attributeKey: String { kAXURLAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.URLKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/URLKey``.
	static var url: Self {
		Self()
	}
}
