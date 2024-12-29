import struct ApplicationServices.HIServices.AXAttributeConstants.AXMenuItemModifiers
import let ApplicationServices.HIServices.AXAttributeConstants.kAXMenuItemCmdModifiersAttribute
import DeclarativeCore

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMenuItemCmdModifiersAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmenuitemcmdmodifiersattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/menuItemCmdModifiers``
	struct MenuItemCmdModifiers: AXAttributeKey {
		public typealias Output = AXMenuItemModifiers

		public static var attributeKey: String { kAXMenuItemCmdModifiersAttribute }

		public init() { }

		public func process(_ input: Input) throws -> Output {
			let originalValue = try input.value(forAttribute: Self.attributeKey)
			guard let rawValue = originalValue as? Output.RawValue else {
				throw AccessibilityError.castFailed(from: originalValue, to: Output.RawValue.self)
			}
			return Output(rawValue: rawValue)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.MenuItemCmdModifiers
{
	/// The attribute key for
	/// [`kAXMenuItemCmdModifiersAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmenuitemcmdmodifiersattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/MenuItemCmdModifiers``
	static var menuItemCmdModifiers: Self {
		Self()
	}
}
