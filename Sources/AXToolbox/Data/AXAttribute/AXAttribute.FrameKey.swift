import ApplicationServices.HIServices
import struct CoreGraphics.CGPoint
import struct CoreGraphics.CGRect
import struct CoreGraphics.CGSize

public extension AXAttribute {
	/// An attribute key that combines the output of ``AXAttribute/PositionKey`` and ``AXAttribute/SizeKey``.
	struct FrameKey: AXAttributeKey {
		public typealias Value = CGRect

		public static var attributeKey: String {
			fatalError("""
			\(Self.self) does not have an attribute key.
			This property should never be accessed.
			""")
		}

		public init() { }

		public func process(_ input: Input) throws -> Output {
			// TODO: Validate performance
			// Is the current implementation faster than retrieving each attribute individually?

			let axValues = try input.values(forAttributes: Self.attributeNames, options: [.stopOnError])

			var origin = CGPoint.zero
			var size = CGSize.zero

			for axValue in axValues {
				axValue.value(ofType: .cgPoint, &origin)
				axValue.value(ofType: .cgSize, &size)
			}

			return CGRect(origin: origin, size: size)
		}
	}
}

// MARK: - Constants

private extension AXAttribute.FrameKey {
	static let attributeKeys: [any AXAttributeKey.Type] = [
		AXAttribute.PositionKey.self,
		AXAttribute.SizeKey.self,
	]

	static var attributeNames: [String] {
		attributeKeys.map { attributeKey in
			attributeKey.attributeKey
		}
	}
}

// MARK: - Convenience

public extension AXAttributeProtocol where
	Self == AXAttribute.FrameKey
{
	/// The shorthand attribute key accessor for ``AXAttribute/FrameKey``.
	static var frame: Self {
		Self()
	}
}
