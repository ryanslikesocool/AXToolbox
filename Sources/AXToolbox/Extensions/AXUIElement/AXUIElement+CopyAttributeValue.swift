import ApplicationServices

// Extensions for `AXUIElement` that use
// [`AXUIElementCopyAttributeValue`](https://developer.apple.com/documentation/applicationservices/1462085-axuielementcopyattributevalue)\.
public extension AXUIElement {
	/// Returns the value of an accessibility object's attribute.
	///
	/// - Parameter attributeName: The attribute name.
	/// - Returns: The value associated with the specified attribute.
	func value(forAttribute attributeName: CFString) throws -> CFTypeRef {
		var value: CFTypeRef?
		let resultCode = AXUIElementCopyAttributeValue(self, attributeName, &value)

		try AccessibilityError.testAXError(resultCode)

		guard let value else {
			throw AccessibilityError.axError(.noValue)!
		}
		return value
	}

	/// Returns the value of an accessibility object's attribute.
	///
	/// - Parameter attributeName: The attribute name.
	/// - Returns: The value associated with the specified attribute.
	func value(forAttribute attributeName: String) throws -> CFTypeRef {
		try value(forAttribute: attributeName as CFString)
	}

	/// Returns the value for the attribute name specified by the given key.
	///
	/// - Parameter attributeKey: The key that specifies the name of a accessibility attribute.
	/// - Returns: The value for the attribute name specified by `attributeKey`, if it could be found; `nil` otherwise.
	func value<Key>(forAttribute attributeKey: Key) throws -> Key.Output where
		Key: AXAttributeObject,
		Key.Input == AXUIElement
	{
		try attributeKey.process(self)
	}

//	/// Returns the values for the attribute names specified by the given keys.
//	///
//	/// - Parameter attributeKeys: The keys that specify the names of accessibility attributes.
//	/// - Returns: For each element: the value for the attribute name specified by the corresponding item in `attributeKeys`, if it could be found; `nil` otherwise.
//	func values<each Key>(forAttributes attributeKeys: repeat each Key) -> (repeat (each Key).Output) where
//		repeat each Key: AXAttributeObject,
//		repeat (each Key).Input == AXUIElement // NOTE: Parameter packs do not support this constraint yet.
//	{
//		// In an ideal world, this function would:
//		// - Create an array from `repeat (each Key).attributeKey`.
//		// - Pass the array into a function that wraps `AXUIElementCopyMultipleAttributeValues`, with no `AXCopyMultipleAttributeOptions`.
//		// - Convert the result into `[Result<(each Key).Value, AXError>]`
//		// - Unpack the array into the output tuple and `return`.
//
//		(repeat value(forAttribute: each attributeKeys))
//	}
}
