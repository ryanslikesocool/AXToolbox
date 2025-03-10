import ApplicationServices.HIServices
import struct CoreGraphics.CGPoint
import struct CoreGraphics.CGRect
import struct CoreGraphics.CGSize

public extension AXAttributeKeys {
	/// An attribute object that combines the output of ``AXAttributeKeys/Position`` and ``AXAttributeKeys/Size`` into a
	/// [`CGRect`]( https://developer.apple.com/documentation/corefoundation/cgrect ).
	///
	/// ## Topics
	/// ### Convenience
	/// - ``AXAttributeObject/frame``
	struct Frame: AXAttributeObject {
		public typealias Input = AXUIElement
		public typealias Output = CGRect

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

private extension AXAttributeKeys.Frame {
	static let attributeKeys: [any AXAttributeKey.Type] = [
		AXAttributeKeys.Position.self,
		AXAttributeKeys.Size.self,
	]

	static var attributeNames: [String] {
		attributeKeys.map { attributeKey in
			attributeKey.attributeKey
		}
	}
}

// MARK: - Convenience

public extension AXAttributeObject where
	Self == AXAttributeKeys.Frame
{
	/// An attribute key that combines the output of ``AXAttributeKeys/Position`` and ``AXAttributeKeys/Size`` into a
	/// [`CGRect`]( https://developer.apple.com/documentation/corefoundation/cgrect ).
	///
	/// ## See Also
	/// - ``AXAttributeKeys/Frame``
	static var frame: Self {
		Self()
	}
}
