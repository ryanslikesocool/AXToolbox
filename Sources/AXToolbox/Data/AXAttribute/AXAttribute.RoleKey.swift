private import class CoreFoundation.CFString
private import let ApplicationServices.HIServices.AXAttributeConstants.kAXRoleAttribute
import class ApplicationServices.HIServices.AXUIElement

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXRoleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxroleattribute)\.
	struct RoleKey: AXAttributeKey {
		public typealias Value = AXRole

		public static var attributeKey: String { kAXRoleAttribute }

		public init() { }

		public func process(_ value: Input) -> Value? {
			guard let rawValue = try? value.value(forAttribute: Self.attributeKey) as? String else {
				return nil
			}
			return Value(rawValue: rawValue)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.RoleKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/RoleKey``.
	static var role: Self {
		Self()
	}
}