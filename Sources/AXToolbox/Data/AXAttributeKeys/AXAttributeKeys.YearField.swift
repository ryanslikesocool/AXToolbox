import let ApplicationServices.HIServices.AXAttributeConstants.kAXYearFieldAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXYearFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxyearfieldattribute)\.
	struct YearField: AXAttributeKey {
		// Probably `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXYearFieldAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.YearField
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/YearField``.
	static var yearField: Self {
		Self()
	}
}
