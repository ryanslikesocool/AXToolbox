private import let ApplicationServices.HIServices.AXAttributeConstants.kAXYearFieldAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXYearFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxyearfieldattribute)\.
	struct YearFieldKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXYearFieldAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.YearFieldKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/YearFieldKey``.
	static var yearField: Self {
		Self()
	}
}
