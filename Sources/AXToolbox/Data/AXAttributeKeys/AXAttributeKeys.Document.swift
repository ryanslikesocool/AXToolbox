import let ApplicationServices.HIServices.AXAttributeConstants.kAXDocumentAttribute
import struct Foundation.URL

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXDocumentAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdocumentattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/document``
	struct Document: AXAttributeKey {
		public typealias Output = URL

		public static var attributeKey: String { kAXDocumentAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Document
{
	/// The attribute key for
	/// [`kAXDocumentAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdocumentattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Document``
	static var document: Self {
		Self()
	}
}
