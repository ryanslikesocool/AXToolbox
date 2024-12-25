private import let ApplicationServices.HIServices.AXAttributeConstants.kAXMinimizeButtonAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXMinimizeButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminimizebuttonattribute)\.
	struct MinimizeButtonKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXMinimizeButtonAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.MinimizeButtonKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/MinimizeButtonKey``.
	static var minimizeButton: Self {
		Self()
	}
}
