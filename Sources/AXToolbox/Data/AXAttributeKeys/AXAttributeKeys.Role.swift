import let ApplicationServices.HIServices.AXAttributeConstants.kAXRoleAttribute
import class ApplicationServices.HIServices.AXUIElement
import class CoreFoundation.CFString

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXRoleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxroleattribute)\.
	struct Role: AXAttributeKey {
		public typealias Value = AXRole

		public static var attributeKey: String { kAXRoleAttribute }

		public init() { }

		public func process(_ input: Input) throws -> Output {
			let originalValue = try input.value(forAttribute: Self.attributeKey)
			guard let rawValue = originalValue as? Value.RawValue else {
				throw AXAttributeError.castFailed(input: type(of: originalValue), output: Value.RawValue.self)
			}
			return Value(rawValue: rawValue)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Role
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Role``.
	static var role: Self {
		Self()
	}
}
