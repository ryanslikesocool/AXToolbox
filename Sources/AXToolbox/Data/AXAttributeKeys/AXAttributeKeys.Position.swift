import ApplicationServices.HIServices
import struct CoreGraphics.CGPoint
import DeclarativeCore

public extension AXAttributeKeys {
	/// The attribute key for
	/// [`kAXPositionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxpositionattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeObject/position``
	struct Position: AXAttributeKey {
		public typealias Output = CGPoint

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
	/// The attribute key for
	/// [`kAXPositionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxpositionattribute)\.
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Position``
	static var position: Self {
		Self()
	}
}
