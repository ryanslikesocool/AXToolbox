import let ApplicationServices.HIServices.AXAttributeConstants.kAXAMPMFieldAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXAMPMFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxampmfieldattribute)\.
	struct AMPMFieldKey: AXAttributeKey {
		// Probably `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXAMPMFieldAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.AMPMFieldKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/AMPMFieldKey``.
	static var amPMField: Self {
		Self()
	}
}
