import let ApplicationServices.HIServices.AXAttributeConstants.kAXRoleAttribute
import class ApplicationServices.HIServices.AXUIElement
import class CoreFoundation.CFString
import DeclarativeCore

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXRoleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxroleattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/role``
	struct Role: AXAttributeKey {
		public typealias Output = AXRole

		public static var attributeKey: String { kAXRoleAttribute }

		public init() { }

		public func process(_ input: Input) throws -> Output {
			let attributeValue = try input.value(forAttribute: Self.attributeKey)

			guard let rawValue = attributeValue as? Output.RawValue else {
				throw AccessibilityError.castFailed(from: attributeValue, to: Output.RawValue.self)
			}

			return Output(rawValue: rawValue)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Role
{
	/// The attribute key for
	/// [`kAXRoleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxroleattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Role``
	static var role: Self {
		Self()
	}
}
