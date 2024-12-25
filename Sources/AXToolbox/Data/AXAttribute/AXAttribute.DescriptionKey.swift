private import let ApplicationServices.HIServices.AXAttributeConstants.kAXDescriptionAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdescriptionattribute)\.
	struct DescriptionKey: AXAttributeKey {
		// Probably `String`.
		public typealias Value = Any

		public static var attributeKey: String { kAXDescriptionAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.DescriptionKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/DescriptionKey``.
	static var description: Self {
		Self()
	}
}
