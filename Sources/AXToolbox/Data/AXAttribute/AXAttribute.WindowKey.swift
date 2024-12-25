private import let ApplicationServices.HIServices.AXAttributeConstants.kAXWindowAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXWindowAttribute`](https://developer.apple.com/documentation/applicationservices/kaxwindowattribute)\.
	struct WindowKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXWindowAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.WindowKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/WindowKey``.
	static var window: Self {
		Self()
	}
}
