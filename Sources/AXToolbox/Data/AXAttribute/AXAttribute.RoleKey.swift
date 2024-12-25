import let ApplicationServices.HIServices.AXAttributeConstants.kAXRoleAttribute
import class ApplicationServices.HIServices.AXUIElement
import class CoreFoundation.CFString

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXRoleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxroleattribute)\.
	struct RoleKey: AXAttributeKey {
		public typealias Value = AXRole

		public static var attributeKey: String { kAXRoleAttribute }

		public init() { }

		public func process(_ input: Input) -> Value? {
			guard let rawValue = try? input.value(forAttribute: Self.attributeKey) as? String else {
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
