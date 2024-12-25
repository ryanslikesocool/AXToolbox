import let ApplicationServices.HIServices.AXAttributeConstants.kAXNumberOfCharactersAttribute
import class CoreFoundation.CFNumber

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXNumberOfCharactersAttribute`](https://developer.apple.com/documentation/applicationservices/kaxnumberofcharactersattribute)\.
	struct NumberOfCharactersKey: AXAttributeKey {
		// TODO: Figure out actual `Value` type.
		// I'm expecting `Int64` based on prior experience.
		public typealias Value = CFNumber

		public static var attributeKey: String { kAXNumberOfCharactersAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.NumberOfCharactersKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/NumberOfCharactersKey``.
	static var numberOfCharacters: Self {
		Self()
	}
}
