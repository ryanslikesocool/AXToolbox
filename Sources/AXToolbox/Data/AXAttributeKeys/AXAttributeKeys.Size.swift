import ApplicationServices.HIServices
import struct CoreGraphics.CGPoint

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXSizeAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxsizeattribute ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/size``
	struct Size: AXAttributeKey {
		public typealias Output = CGSize

		public static var attributeKey: String {
			kAXSizeAttribute
		}

		public init() { }

		public func process(_ input: Input) throws -> Output {
			let attributeValue = try input.value(forAttribute: Self.attributeKey)
			assert(CFGetTypeID(attributeValue) == AXValueGetTypeID())

			let axValue = attributeValue as! AXValue
			return try axValue.value(ofType: CGSize.self)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Size
{
	/// The attribute key for
	/// [`kAXSizeAttribute`]( https://developer.apple.com/documentation/applicationservices/kaxsizeattribute ).
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Size``
	static var size: Self {
		Self()
	}
}
