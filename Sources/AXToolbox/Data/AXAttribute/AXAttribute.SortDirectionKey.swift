import let ApplicationServices.HIServices.AXAttributeConstants.kAXSortDirectionAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXSortDirectionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsortdirectionattribute)\.
	struct SortDirectionKey: AXAttributeKey {
		public typealias Value = AXSortDirection

		public static var attributeKey: String { kAXSortDirectionAttribute }

		public init() { }

		public func process(_ input: Input) -> Output {
			guard let value = try? input.value(forAttribute: Self.attributeKey) as? String else {
				return nil
			}
			return Value(rawValue: value)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.SortDirectionKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/SortDirectionKey``.
	static var sortDirection: Self {
		Self()
	}
}
