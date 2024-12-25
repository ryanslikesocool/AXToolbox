import ApplicationServices.HIServices
import struct CoreGraphics.CGPoint

public extension AXAttribute {
	/// The attribute key for
	/// [`kAXPositionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxpositionattribute)\.
	struct PositionKey: AXAttributeKey {
		public typealias Value = CGPoint

		public static var attributeKey: String { kAXPositionAttribute }

		public init() { }

		public func process(_ input: Input) throws -> Output {
			let attributeValue = try input.value(forAttribute: Self.attributeKey)
			assert(CFGetTypeID(attributeValue) == AXValueGetTypeID())

			let axValue = attributeValue as! AXValue
			return try axValue.value(ofType: CGPoint.self)
		}
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.PositionKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/PositionKey``.
	static var position: Self {
		Self()
	}
}
