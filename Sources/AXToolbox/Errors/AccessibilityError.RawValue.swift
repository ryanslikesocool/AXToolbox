import ApplicationServices

extension AccessibilityError {
	enum RawValue {
		/// ## See Also
		/// - ``AccessibilityError/axError(_:)``
		case axError(AXError)

		/// ## See Also
		/// - ``AccessibilityError/castFailed(from:to:)-6zdje``
		/// - ``AccessibilityError/castFailed(from:to:)-5gcnx``
		case castFailed(input: Any.Type, output: Any.Type)

		/// ## See Also
		/// - ``AccessibilityError/illegalType(_:)``
		case illegalType(Any.Type)

		/// ## See Also
		/// - ``AccessibilityError/invalidDefaultValue(_:)``
		case invalidDefaultValue(Any.Type)

		/// ## See Also
		/// - ``AccessibilityError/decodingFailed(_:)``
		case decodingFailed(AXValueType)
	}
}

// MARK: - Sendable

extension AccessibilityError.RawValue: Sendable { }
