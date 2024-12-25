import ApplicationServices.HIServices
import struct CoreGraphics.CGPoint

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXSizeAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsizeattribute)\.
	struct SizeKey: AXAttributeKey {
		public typealias Value = CGSize

		public static var attributeKey: String { kAXSizeAttribute }

		public init() { }

		public func process(_ input: Input) -> Output {
			guard let attributeValue = try? input.value(forAttribute: Self.attributeKey) else {
				return nil
			}
			
			assert(CFGetTypeID(attributeValue) == AXValueGetTypeID())

			let axValue = attributeValue as! AXValue
			return axValue.value(ofType: CGSize.self)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.SizeKey
{
	/// The shorthand attribute key accessor for ``AXAttributeNamespace/SizeKey``.
	static var size: Self {
		Self()
	}
}
