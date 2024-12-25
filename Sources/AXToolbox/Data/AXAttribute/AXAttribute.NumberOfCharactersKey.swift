private import let ApplicationServices.HIServices.AXAttributeConstants.kAXNumberOfCharactersAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXNumberOfCharactersAttribute`](https://developer.apple.com/documentation/applicationservices/kaxnumberofcharactersattribute)\.
	struct NumberOfCharactersKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXNumberOfCharactersAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.NumberOfCharactersKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/NumberOfCharactersKey``.
	static var numberOfCharacters: Self {
		Self()
	}
}
