import let ApplicationServices.HIServices.AXAttributeConstants.kAXInsertionPointLineNumberAttribute
import class CoreFoundation.CFNumber

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXInsertionPointLineNumberAttribute`](https://developer.apple.com/documentation/applicationservices/kaxinsertionpointlinenumberattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/insertionPointLineNumber``
	struct InsertionPointLineNumber: AXAttributeKey {
		// TODO: Figure out actual `Value` type.
		// I'm expecting `Int64` based on prior experience.
		public typealias Output = CFNumber

		public static var attributeKey: String { kAXInsertionPointLineNumberAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.InsertionPointLineNumber
{
	/// The attribute key for
	/// [`kAXInsertionPointLineNumberAttribute`](https://developer.apple.com/documentation/applicationservices/kaxinsertionpointlinenumberattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/InsertionPointLineNumber``
	static var insertionPointLineNumber: Self {
		Self()
	}
}
