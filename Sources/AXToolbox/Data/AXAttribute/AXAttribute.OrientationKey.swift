private import let ApplicationServices.HIServices.AXAttributeConstants.kAXOrientationAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXOrientationAttribute`](https://developer.apple.com/documentation/applicationservices/kaxorientationattribute)\.
	struct OrientationKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXOrientationAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.OrientationKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/OrientationKey``.
	static var orientation: Self {
		Self()
	}
}
