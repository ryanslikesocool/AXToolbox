import let ApplicationServices.HIServices.AXAttributeConstants.kAXOrientationAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXOrientationAttribute`](https://developer.apple.com/documentation/applicationservices/kaxorientationattribute)\.
	struct Orientation: AXAttributeKey {
		public typealias Value = AXOrientation

		public static var attributeKey: String { kAXOrientationAttribute }

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

public extension AXAttributeObject where
	Self == AXAttributeKeys.Orientation
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Orientation``.
	static var orientation: Self {
		Self()
	}
}
