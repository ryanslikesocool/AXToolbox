import let ApplicationServices.HIServices.AXAttributeConstants.kAXAMPMFieldAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXAMPMFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxampmfieldattribute)\.
	struct AMPMField: AXAttributeKey {
		// Probably `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXAMPMFieldAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.AMPMField
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/AMPMField``.
	static var amPMField: Self {
		Self()
	}
}
