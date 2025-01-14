import let ApplicationServices.HIServices.AXAttributeConstants.kAXSubroleAttribute
import class ApplicationServices.HIServices.AXUIElement
import class CoreFoundation.CFString

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXSubroleAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxsubroleattribute ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/subrole``
	struct Subrole: AXAttributeKey {
		public typealias Output = AXSubrole

		public static var attributeKey: String {
			kAXSubroleAttribute
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
	Self == AXAttributeKeys.Subrole
{
	/// The attribute key for
	/// [`kAXSubroleAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxsubroleattribute ).
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Subrole``
	static var subrole: Self {
		Self()
	}
}
