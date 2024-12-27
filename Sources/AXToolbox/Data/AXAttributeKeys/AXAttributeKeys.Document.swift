import let ApplicationServices.HIServices.AXAttributeConstants.kAXDocumentAttribute
import struct Foundation.URL

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXDocumentAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdocumentattribute)\.
	struct Document: AXAttributeKey {
		public typealias Value = URL

		public static var attributeKey: String { kAXDocumentAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Document
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Document``.
	static var document: Self {
		Self()
	}
}
