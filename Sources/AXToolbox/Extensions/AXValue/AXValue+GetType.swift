import ApplicationServices

// Extensions for `AXValue` that use
// [`AXValueGetType`]( https://developer.apple.com/documentation/applicationservices/1460911-axvaluegettype ).
public extension AXValue {
	/// The encoded structure type.
	///
	/// If the type is not recognized, this property returns
	/// [`AXValueType.illegal`]( https://developer.apple.com/documentation/applicationservices/axvaluetype/illegal ).
	var type: AXValueType {
		AXValueGetType(self)
	}
}
