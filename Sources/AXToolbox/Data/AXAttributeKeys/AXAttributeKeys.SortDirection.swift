import let ApplicationServices.HIServices.AXAttributeConstants.kAXSortDirectionAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXSortDirectionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsortdirectionattribute)\.
	struct SortDirection: AXAttributeKey {
		public typealias Value = AXSortDirection

		public static var attributeKey: String { kAXSortDirectionAttribute }

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
	Self == AXAttributeKeys.SortDirection
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/SortDirection``.
	static var sortDirection: Self {
		Self()
	}
}
