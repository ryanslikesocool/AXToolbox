import let ApplicationServices.HIServices.AXAttributeConstants.kAXVisibleColumnsAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXVisibleColumnsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvisiblecolumnsattribute)\.
	struct VisibleColumns: AXAttributeKey {
		// Maybe `CFArray` of `AXUIElement`.
		public typealias Value = Any

		public static var attributeKey: String { kAXVisibleColumnsAttribute }

		public init() { }
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.VisibleColumns
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/VisibleColumns``.
	static var visibleColumns: Self {
		Self()
	}
}
