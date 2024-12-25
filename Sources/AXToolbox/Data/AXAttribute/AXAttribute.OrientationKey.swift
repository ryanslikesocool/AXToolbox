import let ApplicationServices.HIServices.AXAttributeConstants.kAXOrientationAttribute

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXOrientationAttribute`](https://developer.apple.com/documentation/applicationservices/kaxorientationattribute)\.
	struct OrientationKey: AXAttributeKey {
		public typealias Value = AXOrientation

		public static var attributeKey: String { kAXOrientationAttribute }

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
	Self == AXAttribute.OrientationKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/OrientationKey``.
	static var orientation: Self {
		Self()
	}
}
