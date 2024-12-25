private import let ApplicationServices.HIServices.AXAttributeConstants.kAXProxyAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXProxyAttribute`](https://developer.apple.com/documentation/applicationservices/kaxproxyattribute)\.
	struct ProxyKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXProxyAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.ProxyKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/ProxyKey``.
	static var proxy: Self {
		Self()
	}
}
