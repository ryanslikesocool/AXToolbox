import ApplicationServices.HIServices
import struct CoreGraphics.CGPoint

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXPositionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxpositionattribute)\.
	struct Position: AXAttributeKey {
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

public extension AXAttributeObject where
	Self == AXAttributeKeys.Position
{
	/// The shorthand attribute key accessor for ``AXAttributeKeys/Position``.
	static var position: Self {
		Self()
	}
}
