import let ApplicationServices.HIServices.AXAttributeConstants.kAXNumberOfCharactersAttribute
import class CoreFoundation.CFNumber

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXNumberOfCharactersAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxnumberofcharactersattribute ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/numberOfCharacters``
	struct NumberOfCharacters: AXAttributeKey {
		// TODO: Figure out actual `Value` type.
		// I'm expecting `Int64` based on prior experience.
		public typealias Output = CFNumber

		public static var attributeKey: String {
			kAXNumberOfCharactersAttribute
		}

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.NumberOfCharacters
{
	/// The attribute key for
	/// [`kAXNumberOfCharactersAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxnumberofcharactersattribute ).
	///
	/// ## See Also
	/// - ``AXAttributeKeys/NumberOfCharacters``
	static var numberOfCharacters: Self {
		Self()
	}
}
