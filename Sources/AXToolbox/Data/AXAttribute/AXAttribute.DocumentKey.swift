import let ApplicationServices.HIServices.AXAttributeConstants.kAXDocumentAttribute
import struct Foundation.URL

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXDocumentAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdocumentattribute)\.
	struct DocumentKey: AXAttributeKey {
		public typealias Value = URL

		public static var attributeKey: String { kAXDocumentAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.DocumentKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/DocumentKey``.
	static var document: Self {
		Self()
	}
}
