import struct ApplicationServices.HIServices.AXAttributeConstants.AXMenuItemModifiers
import let ApplicationServices.HIServices.AXAttributeConstants.kAXMenuItemCmdModifiersAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXMenuItemCmdModifiersAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmenuitemcmdmodifiersattribute)\.
	struct MenuItemCmdModifiers: AXAttributeKey {
		public typealias Value = AXMenuItemModifiers

		public static var attributeKey: String { kAXMenuItemCmdModifiersAttribute }

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

public extension AXAttributeProtocol where
	Self == AXAttributeKeys.MenuItemCmdModifiers
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/MenuItemCmdModifiers``.
	static var menuItemCmdModifiers: Self {
		Self()
	}
}
