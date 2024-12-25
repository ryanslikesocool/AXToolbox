import ApplicationServices.HIServices

public extension AXValue {
	// MARK: - AXValueGetType

	/// The encoded structure type.
	///
	/// If the type is not recognized, this property returns
	/// [`AXValueType.illegal`](https://developer.apple.com/documentation/applicationservices/axvaluetype/illegal)\.
	var type: AXValueType {
		AXValueGetType(self)
	}

	// MARK: - AXValueGetValue

	/// Decodes the stored structure and copies it into `valuePtr`.
	///
	/// If the stored structure is not the same as requested by `axValueType`, the function returns `false`.
	///
	/// - Parameters:
	///   - axValueType: The type of stored value.
	///   - valuePtr:
	/// - Returns: `true` if the stored structure was successfully decoded into `valuePtr`; `false` otherwise.
	@discardableResult
	func value(ofType axValueType: AXValueType, _ valuePtr: UnsafeMutableRawPointer) -> Bool {
		AXValueGetValue(self, axValueType, valuePtr)
	}

	/// Attempts to decode and return the stored structure as the given `valueType`.
	///
	/// - Parameter valueType: The type of stored value.
	/// - Returns: The stored value decoded as `valueType`.
	func value<Value>(ofType valueType: Value.Type) throws -> Value {
		let axValueType = AXValueType(valueType)
		guard axValueType != .illegal else {
			throw AXValueError.illegalType(valueType)
		}
		guard var value = axValueType.defaultValue as? Value else {
			throw AXValueError.invalidDefaultValue(valueType)
		}
		guard withUnsafeMutablePointer(to: &value, { ptr in
			self.value(ofType: axValueType, ptr)
		}) else {
			throw AXValueError.decodingFailed(axValueType)
		}
		return value
	}

	// MARK: - Values

//	/// Shorthand for `value(ofType: CGPoint.self)`.
//	var cgPoint: CGPoint {
//		get throws {
//			try value(ofType: CGPoint.self)
//		}
//	}
//
//	/// Shorthand for `value(ofType: CGSize.self)`.
//	var cgSize: CGSize {
//		get throws {
//			try value(ofType: CGSize.self)
//		}
//	}
//
//	/// Shorthand for `value(ofType: CGRect.self)`.
//	var cgRect: CGRect {
//		get throws {
//			try value(ofType: CGRect.self)
//		}
//	}
//
//	/// Shorthand for `value(ofType: CFRange.self)`.
//	var cfRange: CFRange {
//		get throws {
//			try value(ofType: CFRange.self)
//		}
//	}
//
//	/// Shorthand for `value(ofType: AXError.self)`.
//	var axError: AXError {
//		get throws {
//			try value(ofType: AXError.self)
//		}
//	}
}
