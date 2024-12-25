import ApplicationServices

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

internal extension AXValueType {
	var defaultValue: Any? {
		switch self {
			case .cgPoint: CGPoint.zero
			case .cgSize: CGSize.zero
			case .cgRect: CGRect.zero
			case .cfRange: CFRange()
			case .axError: AXError.success
			default: nil
		}
	}
}