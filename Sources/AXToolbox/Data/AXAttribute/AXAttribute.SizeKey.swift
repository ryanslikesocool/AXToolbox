import ApplicationServices.HIServices
import struct CoreGraphics.CGPoint

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXSizeAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsizeattribute)\.
	struct SizeKey: AXAttributeKey {
		public typealias Value = CGSize

		public static var attributeKey: String { kAXSizeAttribute }

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

public extension AXAttributeProtocol where
	Self == AXAttribute.SizeKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/SizeKey``.
	static var size: Self {
		Self()
	}
}
