import let ApplicationServices.HIServices.AXAttributeConstants.kAXInsertionPointLineNumberAttribute
import class CoreFoundation.CFNumber

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXInsertionPointLineNumberAttribute`](https://developer.apple.com/documentation/applicationservices/kaxinsertionpointlinenumberattribute)\.
	struct InsertionPointLineNumber: AXAttributeKey {
		// TODO: Figure out actual `Value` type.
		// I'm expecting `Int64` based on prior experience.
		public typealias Value = CFNumber

		public static var attributeKey: String { kAXInsertionPointLineNumberAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.InsertionPointLineNumber
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/InsertionPointLineNumber``.
	static var insertionPointLineNumber: Self {
		Self()
	}
}
