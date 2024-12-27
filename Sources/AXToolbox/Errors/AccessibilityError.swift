import enum ApplicationServices.HIServices.AXError
import enum ApplicationServices.HIServices.AXValueType

public struct AccessibilityError {
	private let rawValue: RawValue

	private init?(rawValue: RawValue) {
		switch rawValue {
			case let .axError(axError):
				guard axError != .success else {
					return nil
				}
			default:
				break
		}

		self.rawValue = rawValue
	}
}

// MARK: - Sendable

extension AccessibilityError: Sendable { }

// MARK: - Error

extension AccessibilityError: Error { }

// MARK: - Convenience

public extension AccessibilityError {
	/// Create an accessibility error by wrapping an
	/// [`AXError`](https://developer.apple.com/documentation/applicationservices/axerror)\.
	///
	/// - Remark: If the provided argument is
	/// [`success`](https://developer.apple.com/documentation/applicationservices/axerror/success)\,
	/// this function will return `nil`.
	static func axError(_ axError: AXError) -> Self? {
		Self(rawValue: .axError(axError))
	}

	static func castFailed(from input: Any.Type, to output: Any.Type) -> Self {
		Self(rawValue: .castFailed(input: input, output: output))!
	}

	static func castFailed<Input>(from _: borrowing Input, to output: Any.Type) -> Self {
		castFailed(from: Input.self, to: output)
	}

	static func illegalType(_ valueType: Any.Type) -> Self {
		Self(rawValue: .illegalType(valueType))!
	}

	static func invalidDefaultValue(_ valueType: Any.Type) -> Self {
		Self(rawValue: .invalidDefaultValue(valueType))!
	}

	static func decodingFailed(_ valueType: AXValueType) -> Self {
		Self(rawValue: .decodingFailed(valueType))!
	}
}

// MARK: - Utility

public extension AccessibilityError {
	/// Throw if the given `axError` is not
	/// [`success`](https://developer.apple.com/documentation/applicationservices/axerror/success)\,
	static func testAXError(_ axError: AXError) throws {
		guard let error = Self.axError(axError) else {
			return
		}
		throw error
	}
}