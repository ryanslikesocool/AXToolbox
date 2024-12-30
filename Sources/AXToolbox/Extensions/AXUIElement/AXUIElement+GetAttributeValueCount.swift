import ApplicationServices

// Extensions for `AXUIElement` that use
// [`AXUIElementGetAttributeValueCount`](https://developer.apple.com/documentation/applicationservices/1459066-axuielementgetattributevaluecoun)\.
public extension AXUIElement {
	/// Returns the count of the array of an accessibility object's attribute value.
	///
	/// - Parameter attributeName: The attribute name.
	/// - Returns: The size of the array that is the attribute's value.
	func valueCount(forAttribute attributeName: CFString) throws -> CFIndex {
		var count: CFIndex = 0
		let resultCode = AXUIElementGetAttributeValueCount(self, attributeName, &count)

		try AccessibilityError.testAXError(resultCode)

		return count
	}

	/// Returns the count of the array of an accessibility object's attribute value.
	///
	/// - Parameter attributeName: The attribute name.
	/// - Returns: The size of the array that is the attribute's value.
	func valueCount(forAttribute attributeName: String) throws -> CFIndex {
		try valueCount(forAttribute: attributeName as CFString)
	}

//	/// Returns the count of the array of an accessibility object's attribute value.
//	///
//	/// - Parameter attributeKey: The attribute key.
//	/// - Returns: The size of the array that is the attribute's value.
//	func valueCount<Key>(forAttribute attributeKey: Key) throws -> CFIndex where
//		Key: AXAttributeKey,
//		Key.Output: Collection
//	{
//		// TODO: Handle `attributeKey.process(_:)`
//		try valueCount(forAttribute: Key.attributeKey)
//	}
}
