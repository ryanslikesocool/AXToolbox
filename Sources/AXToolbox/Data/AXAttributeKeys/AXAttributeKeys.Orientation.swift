import let ApplicationServices.HIServices.AXAttributeConstants.kAXOrientationAttribute

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXOrientationAttribute`](https://developer.apple.com/documentation/applicationservices/kaxorientationattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/orientation``
	struct Orientation: AXAttributeKey {
		public typealias Output = AXOrientation

		public static var attributeKey: String { kAXOrientationAttribute }

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
	Self == AXAttributeKeys.Orientation
{
	/// The attribute key for
	/// [`kAXOrientationAttribute`](https://developer.apple.com/documentation/applicationservices/kaxorientationattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Orientation``
	static var orientation: Self {
		Self()
	}
}
