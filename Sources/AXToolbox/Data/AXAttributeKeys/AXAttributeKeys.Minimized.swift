import let ApplicationServices.HIServices.AXAttributeConstants.kAXMinimizedAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMinimizedAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminimizedattribute)\.
	struct Minimized: AXAttributeKey {
		public typealias Value = Bool

		public static var attributeKey: String { kAXMinimizedAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.Minimized
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Minimized``.
	static var minimized: Self {
		Self()
	}
}
