import ApplicationServices

extension AccessibilityError {
	enum RawValue {
		case axError(AXError)
		case castFailed(input: Any.Type, output: Any.Type)
		case illegalType(Any.Type)
		case invalidDefaultValue(Any.Type)
		case decodingFailed(AXValueType)
	}
}

// MARK: - Sendable

extension AccessibilityError.RawValue: Sendable { }