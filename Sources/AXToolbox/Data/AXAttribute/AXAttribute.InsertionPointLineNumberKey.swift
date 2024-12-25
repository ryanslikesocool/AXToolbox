import let ApplicationServices.HIServices.AXAttributeConstants.kAXInsertionPointLineNumberAttribute
import class CoreFoundation.CFNumber

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXInsertionPointLineNumberAttribute`](https://developer.apple.com/documentation/applicationservices/kaxinsertionpointlinenumberattribute)\.
	struct InsertionPointLineNumberKey: AXAttributeKey {
		// TODO: Figure out actual `Value` type.
		// I'm expecting `Int64` based on prior experience.
		public typealias Value = CFNumber

		public static var attributeKey: String { kAXInsertionPointLineNumberAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.InsertionPointLineNumberKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/InsertionPointLineNumberKey``.
	static var insertionPointLineNumber: Self {
		Self()
	}
}
