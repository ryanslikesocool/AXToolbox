private import let ApplicationServices.HIServices.AXAttributeConstants.kAXFocusedAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXFocusedAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfocusedattribute)\.
	struct FocusedKey: AXAttributeKey {
		// Probably `Bool`.
		public typealias Value = Any

		public static var attributeKey: String { kAXFocusedAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.FocusedKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/FocusedKey``.
	static var focused: Self {
		Self()
	}
}
