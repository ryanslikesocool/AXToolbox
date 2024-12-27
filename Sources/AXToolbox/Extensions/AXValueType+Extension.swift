import ApplicationServices
import CoreGraphics

public extension AXValueType {
	init<Value>(_ type: Value.Type) {
		self = switch type {
			case is CGPoint.Type: .cgPoint
			case is CGSize.Type: .cgSize
			case is CGRect.Type: .cgRect
			case is CFRange.Type: .cfRange
			case is AXError.Type: .axError
			default: .illegal
		}
	}
}

extension AXValueType {
	var valueMetatype: Any.Type? {
		switch self {
			case .cgPoint: CGPoint.self
			case .cgSize: CGSize.self
			case .cgRect: CGRect.self
			case .cfRange: CFRange.self
			case .axError: AXError.self
			case .illegal: nil
			default: nil
		}
	}

	var defaultValue: Any? {
		switch self {
			case .cgPoint: CGPoint.zero
			case .cgSize: CGSize.zero
			case .cgRect: CGRect.zero
			case .cfRange: CFRange()
			case .axError: AXError.success
			case .illegal: nil
			default: nil
		}
	}
}
