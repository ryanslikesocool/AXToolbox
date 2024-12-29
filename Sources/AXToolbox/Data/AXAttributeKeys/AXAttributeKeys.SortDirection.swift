import let ApplicationServices.HIServices.AXAttributeConstants.kAXSortDirectionAttribute
import DeclarativeCore

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXSortDirectionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsortdirectionattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/sortDirection``
	struct SortDirection: AXAttributeKey {
		public typealias Output = AXSortDirection

		public static var attributeKey: String { kAXSortDirectionAttribute }

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
	Self == AXAttributeKeys.SortDirection
{
	/// The attribute key for
	/// [`kAXSortDirectionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsortdirectionattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/SortDirection``
	static var sortDirection: Self {
		Self()
	}
}
