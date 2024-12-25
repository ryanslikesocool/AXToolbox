import let ApplicationServices.HIServices.AXAttributeConstants.kAXHiddenAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXHiddenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxhiddenattribute)\.
	struct HiddenKey: AXAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kAXHiddenAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.HiddenKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/HiddenKey``.
	static var hidden: Self {
		Self()
	}
}
