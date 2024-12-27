import let ApplicationServices.HIServices.AXAttributeConstants.kAXModalAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXModalAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmodalattribute)\.
	struct Modal: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXModalAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Modal
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Modal``.
	static var modal: Self {
		Self()
	}
}
