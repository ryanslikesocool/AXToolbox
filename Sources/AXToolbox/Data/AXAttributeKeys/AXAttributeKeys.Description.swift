import let ApplicationServices.HIServices.AXAttributeConstants.kAXDescriptionAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdescriptionattribute)\.
	struct Description: AXAttributeKey {
		public typealias Value = String

		public static var attributeKey: String { kAXDescriptionAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Description
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Description``.
	static var description: Self {
		Self()
	}
}
