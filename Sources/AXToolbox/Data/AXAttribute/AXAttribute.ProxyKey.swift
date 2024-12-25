import let ApplicationServices.HIServices.AXAttributeConstants.kAXProxyAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXProxyAttribute`](https://developer.apple.com/documentation/applicationservices/kaxproxyattribute)\.
	struct ProxyKey: AXAttributeKey {
		public typealias Value = AXUIElement

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
