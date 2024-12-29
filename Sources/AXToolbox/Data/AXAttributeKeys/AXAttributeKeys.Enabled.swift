import let ApplicationServices.HIServices.AXAttributeConstants.kAXEnabledAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXEnabledAttribute`](https://developer.apple.com/documentation/applicationservices/kaxenabledattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/enabled``
	struct Enabled: AXAttributeKey {
		public typealias Output = Bool

		public static var attributeKey: String { kAXEnabledAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Enabled
{
	/// The attribute key for
	/// [`kAXEnabledAttribute`](https://developer.apple.com/documentation/applicationservices/kaxenabledattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Enabled``
	static var enabled: Self {
		Self()
	}
}
