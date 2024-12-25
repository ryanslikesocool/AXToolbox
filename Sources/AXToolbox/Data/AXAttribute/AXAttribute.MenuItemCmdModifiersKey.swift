import struct ApplicationServices.HIServices.AXAttributeConstants.AXMenuItemModifiers
import let ApplicationServices.HIServices.AXAttributeConstants.kAXMenuItemCmdModifiersAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXMenuItemCmdModifiersAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmenuitemcmdmodifiersattribute)\.
	struct MenuItemCmdModifiersKey: AXAttributeKey {
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
	Self == AXAttribute.MenuItemCmdModifiersKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/MenuItemCmdModifiersKey``.
	static var menuItemCmdModifiers: Self {
		Self()
	}
}
