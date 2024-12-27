import let ApplicationServices.HIServices.AXAttributeConstants.kAXProxyAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXProxyAttribute`](https://developer.apple.com/documentation/applicationservices/kaxproxyattribute)\.
	struct Proxy: AXAttributeKey {
		public typealias Value = AXUIElement

		public static var attributeKey: String { kAXProxyAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Proxy
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Proxy``.
	static var proxy: Self {
		Self()
	}
}
