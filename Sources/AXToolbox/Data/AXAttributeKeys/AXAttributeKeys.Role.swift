import AppKit

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXRoleAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxroleattribute ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/role``
	struct Role: AXAttributeKey {
		public typealias Output = NSAccessibility.Role

		public static var attributeKey: String {
			kAXRoleAttribute
		}

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
	/// [`kAXRoleAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxroleattribute ).
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Role``
	static var role: Self {
		Self()
	}
}
