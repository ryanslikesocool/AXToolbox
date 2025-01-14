import ApplicationServices

// Extensions for `AXValue` that use
// [`AXValueGetValue`]( https://developer.apple.com/documentation/applicationservices/1462933-axvaluegetvalue ).
public extension AXValue {
	/// Decodes the stored structure and copies it into `valuePtr`.
	///
	/// If the stored structure is not the same as requested by `axValueType`, the function returns `false`.
	///
	/// - Parameters:
	///   - axValueType: The type of stored value.
	///   - valuePtr:
	/// - Returns: `true` if the stored structure was successfully decoded into `valuePtr`; `false` otherwise.
	@discardableResult
	func value(
		ofType axValueType: AXValueType,
		_ valuePtr: UnsafeMutableRawPointer
	) -> Bool {
		AXValueGetValue(self, axValueType, valuePtr)
	}

	/// Attempts to decode and return the stored structure as the given `valueType`.
	///
	/// - Parameter valueType: The type of stored value.
	/// - Returns: The stored value decoded as `valueType`.
	func value<Value>(
		ofType valueType: Value.Type
	) throws -> Value {
		let axValueType = AXValueType(valueType)
		guard axValueType != .illegal else {
			throw AccessibilityError.illegalType(valueType)
		}
		guard var value = axValueType.defaultValue as? Value else {
			throw AccessibilityError.invalidDefaultValue(valueType)
		}
		guard withUnsafeMutablePointer(to: &value, { ptr in
			self.value(ofType: axValueType, ptr)
		}) else {
			throw AccessibilityError.decodingFailed(axValueType)
		}
		return value
	}
}
