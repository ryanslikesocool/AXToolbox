private import let ApplicationServices.HIServices.AXAttributeConstants.kAXVisibleColumnsAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXVisibleColumnsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvisiblecolumnsattribute)\.
	struct VisibleColumnsKey: AXAttributeKey {
		public typealias Value = Any

		public static var attributeKey: String { kAXVisibleColumnsAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.VisibleColumnsKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/VisibleColumnsKey``.
	static var visibleColumns: Self {
		Self()
	}
}
