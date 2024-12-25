import enum ApplicationServices.HIServices.AXError

/// An object that wraps
/// [`AXError`](https://developer.apple.com/documentation/applicationservices/axerror)\,
/// allowing it to be used as an
/// [`Error`](https://developer.apple.com/documentation/swift/error)\.
public struct AccessibilityError: Swift.Error, RawRepresentable {
	public let rawValue: AXError

	/// Create an accessibility error by wrapping an
	/// ['AXError'](https://developer.apple.com/documentation/applicationservices/axerror)\.
	///
	/// - Remark: If the provided argument is
	/// [`success`](https://developer.apple.com/documentation/applicationservices/axerror/success)\,
	/// this initializer will return `nil`.
	///
	/// - Parameter rawValue: The `AXError` to wrap.
	public init?(rawValue: RawValue) {
		switch rawValue {
			case .success:
				return nil
			default:
				self.rawValue = rawValue
		}
	}
}

// MARK: - Convenience

public extension AccessibilityError {
	/// Create an accessibility error by wrapping an
	/// ['AXError'](https://developer.apple.com/documentation/applicationservices/axerror)\.
	///
	/// - Remark: If the provided argument is
	/// [`success`](https://developer.apple.com/documentation/applicationservices/axerror/success)\,
	/// this initializer will return `nil`.
	///
	/// - Parameter rawValue: The `AXError` to wrap.
	init?(_ rawValue: RawValue) {
		self.init(rawValue: rawValue)
	}

	/// Wrap an
	/// ['AXError'](https://developer.apple.com/documentation/applicationservices/axerror)
	/// using ``init(_:)`` and immediately throw if the argument is not
	/// [`success`](https://developer.apple.com/documentation/applicationservices/axerror/success)\.
	static func test(_ rawValue: AXError) throws(Self) {
		if let error = Self(rawValue: rawValue) {
			throw error
		}
	}
}
