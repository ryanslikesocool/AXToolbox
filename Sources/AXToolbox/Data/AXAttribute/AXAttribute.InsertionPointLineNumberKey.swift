private import let ApplicationServices.HIServices.AXAttributeConstants.kAXInsertionPointLineNumberAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXInsertionPointLineNumberAttribute`](https://developer.apple.com/documentation/applicationservices/kaxinsertionpointlinenumberattribute)\.
	struct InsertionPointLineNumberKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXInsertionPointLineNumberAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.InsertionPointLineNumberKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/InsertionPointLineNumberKey``.
	static var insertionPointLineNumber: Self {
		Self()
	}
}
