import let ApplicationServices.HIServices.AXAttributeConstants.kAXSubroleAttribute
import class ApplicationServices.HIServices.AXUIElement
import class CoreFoundation.CFString

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXSubroleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsubroleattribute)\.
	struct SubroleKey: AXAttributeKey {
		public typealias Value = AXSubrole

		public static var attributeKey: String { kAXSubroleAttribute }

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
	Self == AXAttribute.SubroleKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/SubroleKey``.
	static var subrole: Self {
		Self()
	}
}
