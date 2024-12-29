import let ApplicationServices.HIServices.AXAttributeConstants.kAXMinimizedAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMinimizedAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminimizedattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/minimized``
	struct Minimized: AXAttributeKey {
		public typealias Output = Bool

		public static var attributeKey: String { kAXMinimizedAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Minimized
{
	/// The attribute key for
	/// [`kAXMinimizedAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminimizedattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Minimized``
	static var minimized: Self {
		Self()
	}
}
