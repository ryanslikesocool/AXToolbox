import let ApplicationServices.HIServices.AXAttributeConstants.kAXSubroleAttribute
import class ApplicationServices.HIServices.AXUIElement
import class CoreFoundation.CFString

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXSubroleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsubroleattribute)\.
	struct Subrole: AXAttributeKey {
		public typealias Value = AXSubrole

		public static var attributeKey: String { kAXSubroleAttribute }

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
	Self == AXAttributeKeys.Subrole
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Subrole``.
	static var subrole: Self {
		Self()
	}
}
