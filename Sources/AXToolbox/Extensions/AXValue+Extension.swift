import ApplicationServices

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
	/// If the stored structure is not the same as requested by `axValueType`, the function returns `false`.
	/// - Parameters:
	///   - axValueType:
	///   - valuePtr:
	/// - Returns: `true` if the stored structure was successfully decoded into `valuePtr`; `false` otherwise.
	@discardableResult
	func value(ofType axValueType: AXValueType, _ valuePtr: UnsafeMutableRawPointer) -> Bool {
		AXValueGetValue(self, axValueType, valuePtr)
	}

	/// Decodes the stored structure and returns it.
	/// If the stored structure is not the same as requested by `axValueType`, the function returns `nil`.
	/// - Parameters:
	///   - axValueType:
	///   - defaultValue:
	/// - Returns: The stored value, if it could be successfully decoded; `nil` otherwise.
	func value<Value>(ofType axValueType: AXValueType, default defaultValue: Value) -> Value? {
		var value: Value = defaultValue
		return if (withUnsafeMutablePointer(to: &value) { ptr in
			self.value(ofType: axValueType, ptr)
		}) {
			value
		} else {
			nil
		}
	}

	/// Decodes the stored structure and returns it.
	/// - Parameter valueType:
	/// - Returns: The stored value, if it could be successfully decoded as `valueType`; `nil` otherwise.
	func value<Value>(ofType valueType: Value.Type = Value.self) -> Value? {
		let axValueType = AXValueType(valueType)
		return if let defaultValue = axValueType.defaultValue as? Value {
			value(ofType: axValueType, default: defaultValue)
		} else {
			nil
		}
	}

	// MARK: - Values

	/// Shorthand for `value(ofType: CGPoint.self)`.
	var cgPoint: CGPoint? {
		value(ofType: CGPoint.self)
	}

	/// Shorthand for `value(ofType: CGSize.self)`.
	var cgSize: CGSize? {
		value(ofType: CGSize.self)
	}

	/// Shorthand for `value(ofType: CGRect.self)`.
	var cgRect: CGRect? {
		value(ofType: CGRect.self)
	}

	/// Shorthand for `value(ofType: CFRange.self)`.
	var cfRange: CFRange? {
		value(ofType: CFRange.self)
	}

	/// Shorthand for `value(ofType: AXError.self)`.
	var axError: AXError? {
		value(ofType: AXError.self)
	}
}
