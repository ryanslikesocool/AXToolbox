import let ApplicationServices.HIServices.AXAttributeConstants.kAXMinimizedAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXMinimizedAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminimizedattribute)\.
	struct MinimizedKey: AXAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kAXMinimizedAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.MinimizedKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/MinimizedKey``.
	static var minimized: Self {
		Self()
	}
}
