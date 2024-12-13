import ApplicationServices

public extension AXValue {
	// MARK: - AXValueGetType

	var type: AXValueType {
		AXValueGetType(self)
	}

	// MARK: - AXValueGetValue

	@discardableResult
	func value(ofType axValueType: AXValueType, _ valuePtr: UnsafeMutableRawPointer) -> Bool {
		AXValueGetValue(self, axValueType, valuePtr)
	}

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

	func value<Value>(ofType valueType: Value.Type = Value.self) -> Value? {
		let axValueType = AXValueType(valueType)
		return if let defaultValue = axValueType.defaultValue as? Value {
			value(ofType: axValueType, default: defaultValue)
		} else {
			nil
		}
	}

	// MARK: - Values

	var cgPoint: CGPoint? {
		value(ofType: CGPoint.self)
	}

	var cgSize: CGSize? {
		value(ofType: CGSize.self)
	}

	var cgRect: CGRect? {
		value(ofType: CGRect.self)
	}

	var cfRange: CFRange? {
		value(ofType: CFRange.self)
	}

	var axError: AXError? {
		value(ofType: AXError.self)
	}
}
