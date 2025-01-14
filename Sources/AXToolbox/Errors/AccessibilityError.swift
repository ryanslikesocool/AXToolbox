import enum ApplicationServices.HIServices.AXError
import enum ApplicationServices.HIServices.AXValueType

public struct AccessibilityError {
	private let rawValue: RawValue

	private init?(
		rawValue: RawValue
	) {
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
	/// [`AXError`]( https://developer.apple.com/documentation/applicationservices/axerror ).
	///
	/// - Parameter axError: The
	/// [`AXError`]( https://developer.apple.com/documentation/applicationservices/axerror )
	/// to convert.
	/// - Returns: An accessibility error wrapping the given `axError`; or `nil` if the given `axError` was a
	/// [`success`]( https://developer.apple.com/documentation/applicationservices/axerror/success ).
	static func axError(
		_ axError: AXError
	) -> Self? {
		Self(rawValue: .axError(axError))
	}

	/// - Parameters:
	///   - inputType: The input type of the cast.
	///   - outputType: The output type of the cast.
	static func castFailed(
		from inputType: Any.Type,
		to outputType: Any.Type
	) -> Self {
		Self(rawValue: .castFailed(input: inputType, output: outputType))!
	}

	/// - Parameters:
	///   - inputValue: The input value of the cast.
	///   - outputType: The output type of the cast.
	static func castFailed<Input>(
		from inputValue: borrowing Input,
		to outputType: Any.Type
	) -> Self {
		castFailed(from: Input.self, to: outputType)
	}

	/// - Parameter valueType:
	static func illegalType(
		_ valueType: Any.Type
	) -> Self {
		Self(rawValue: .illegalType(valueType))!
	}

	/// - Parameter valueType:
	static func invalidDefaultValue(
		_ valueType: Any.Type
	) -> Self {
		Self(rawValue: .invalidDefaultValue(valueType))!
	}

	/// - Parameter valueType:
	static func decodingFailed(
		_ valueType: AXValueType
	) -> Self {
		Self(rawValue: .decodingFailed(valueType))!
	}
}

// MARK: - Utility

public extension AccessibilityError {
	/// Throw if the given `axError` is not
	/// [`success`]( https://developer.apple.com/documentation/applicationservices/axerror/success ).
	///
	/// - Parameter axError: The
	/// [`AXError`]( https://developer.apple.com/documentation/applicationservices/axerror )
	/// to test.
	static func testAXError(
		_ axError: AXError
	) throws {
		guard let error = Self.axError(axError) else {
			return
		}
		throw error
	}
}
