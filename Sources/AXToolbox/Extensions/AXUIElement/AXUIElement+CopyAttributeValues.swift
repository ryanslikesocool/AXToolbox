import ApplicationServices

// Extensions for `AXUIElement` that use
// [`AXUIElementCopyAttributeValues`]( https://developer.apple.com/documentation/applicationservices/1462060-axuielementcopyattributevalues ).
public extension AXUIElement {
	/// Returns an array of attribute values for the accessibility object's attribute, starting at the specified `startIndex`.
	///
	/// - Parameters:
	///   - attributeName: The attribute name.
	///   - startIndex: The index into the array.
	///   - maxValues: The maximum number of values you want (this may be more or less than the number of values associated with the attribute).
	/// - Returns: The attribute values you requested.
	/// If `maxValues` is greater than the number of values associated with the attribute, the array will contain values found between `startIndex` and the end of the attribute's array, inclusive.
	func values(
		forAttribute attributeName: CFString,
		startIndex: CFIndex = .zero,
		maxValues: CFIndex
	) throws -> CFArray {
		var values: CFArray?
		let resultCode = AXUIElementCopyAttributeValues(self, attributeName, startIndex, maxValues, &values)

		try AccessibilityError.testAXError(resultCode)

		guard let values else {
			throw AccessibilityError.axError(.noValue)!
		}
		return values
	}

	/// Returns an array of attribute values for the accessibility object's attribute, starting at the specified `startIndex`.
	///
	/// - Parameters:
	///   - attributeName: The attribute name.
	///   - startIndex: The index into the array.
	///   - maxValues: The maximum number of values you want (this may be more or less than the number of values associated with the attribute).
	/// - Returns: The attribute values you requested.
	/// If `maxValues` is greater than the number of values associated with the attribute, the array will contain values found between `startIndex` and the end of the attribute's array, inclusive.
	func values(
		forAttribute attributeName: String,
		startIndex: CFIndex = .zero,
		maxValues: CFIndex
	) throws -> CFArray {
		try values(forAttribute: attributeName as CFString, startIndex: startIndex, maxValues: maxValues)
	}

//	/// Returns an array of attribute values for the accessibility object's attribute, starting at the specified `startIndex`.
//	///
//	/// - Parameters:
//	///   - attributeKey: The attribute key.
//	///   - startIndex: The index into the array.
//	///   - maxValues: The maximum number of values you want (this may be more or less than the number of values associated with the attribute).
//	/// - Returns: The attribute values you requested.
//	/// If `maxValues` is greater than the number of values associated with the attribute, the array will contain values found between `startIndex` and the end of the attribute's array, inclusive.
//	// TODO: Restrict to `Key.Value: Collection`
//	func values<Key>(
//		forAttribute attributeKey: Key,
//		startIndex: CFIndex = .zero,
//		maxValues: CFIndex
//	) throws -> Key.Output where
//		Key: AXAttributeObject,
//		Key.Input == AXUIElement,
//		Key.Output: Collection
//	{
//		try values(forAttribute: Key.attributeKey, startIndex: startIndex, maxValues: maxValues)
//	}
}
