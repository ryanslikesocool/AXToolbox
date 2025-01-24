import ApplicationServices

// Extensions for `AXUIElement` that use
// [`AXUIElementCopyMultipleAttributeValues`]( https://developer.apple.com/documentation/applicationservices/1462051-axuielementcopymultipleattribute ).
public extension AXUIElement {
	/// Returns the values of multiple attributes in the accessibility object.
	///
	/// - Parameters:
	///   - attributeNames: An array of attribute names.
	///   - options: A value that tells the function how to handle errors.
	/// - Returns: An array in which each position contains the value of the attribute that is in the corresponding position in the passed-in attributes array.
	/// If `options.isEmpty`, the array can contain an
	/// [`AXValue`]( https://developer.apple.com/documentation/applicationservices/axvalue )
	/// of type
	/// [`AXValueType.axError`]( https://developer.apple.com/documentation/applicationservices/axvaluetype/axerror )
	/// in the corresponding position.
	/// If `options.contains(.stopOnError)`, this function will return immediately when it gets an error.
	func values(
		forAttributes attributeNames: CFArray,
		options: AXCopyMultipleAttributeOptions = []
	) throws -> [AXValue] {
		var values: CFArray?
		let resultCode = AXUIElementCopyMultipleAttributeValues(self, attributeNames, options, &values)

		if !options.contains(.stopOnError) {
			try AccessibilityError.testAXError(resultCode)
		}

		guard let result = values as? [AXValue] else {
			throw AccessibilityError.castFailed(from: values, to: [AXValue].self)
		}
		return result
	}

	/// Returns the values of multiple attributes in the accessibility object.
	///
	/// - Parameters:
	///   - attributeNames: An array of attribute names.
	///   - options: A value that tells the function how to handle errors.
	/// - Returns: An array in which each position contains the value of the attribute that is in the corresponding position in the given `attributeNames`.
	/// If `options.isEmpty`, the array can contain an
	/// [`AXValue`]( https://developer.apple.com/documentation/applicationservices/axvalue )
	/// of type
	/// [`AXValueType.axError`]( https://developer.apple.com/documentation/applicationservices/axvaluetype/axerror )
	/// in the corresponding position.
	/// If `options.contains(.stopOnError)`, this function will return immediately when it gets an error.
	func values(
		forAttributes attributeNames: [CFString],
		options: AXCopyMultipleAttributeOptions = []
	) throws -> [AXValue] {
		try values(forAttributes: attributeNames as CFArray, options: options)
	}

	/// Returns the values of multiple attributes in the accessibility object.
	///
	/// - Parameters:
	///   - attributeNames: An array of attribute names.
	///   - options: A value that tells the function how to handle errors.
	/// - Returns: An array in which each position contains the value of the attribute that is in the corresponding position in the given `attributeNames`.
	/// If `options.isEmpty`, the array can contain an
	/// [`AXValue`]( https://developer.apple.com/documentation/applicationservices/axvalue )
	/// of type
	/// [`AXValueType.axError`]( https://developer.apple.com/documentation/applicationservices/axvaluetype/axerror )
	/// in the corresponding position.
	/// If `options.contains(.stopOnError)`, this function will return immediately when it gets an error.
	func values(
		forAttributes attributeNames: [String],
		options: AXCopyMultipleAttributeOptions = []
	) throws -> [AXValue] {
		try values(forAttributes: attributeNames.map { attributeName in attributeName as CFString }, options: options)
	}

//	/// Returns the values of multiple attributes in the accessibility object.
//	///
//	/// - Parameters:
//	///   - attributeKeys: An array of attribute keys.
//	///   - options: A value that tells the function how to handle errors.
//	/// - Returns: An array in which each position contains the value of the attribute that is in the corresponding position in the given `attributeKeys`.
//	/// If `options.isEmpty`, the array can contain an
//	/// [`AXValue`]( https://developer.apple.com/documentation/applicationservices/axvalue )
//	/// of type
//	/// [`AXValueType.axError`]( https://developer.apple.com/documentation/applicationservices/axvaluetype/axerror )
//	/// in the corresponding position.
//	/// If `options.contains(.stopOnError)`, this function will return immediately when it gets an error.
//	func values(
//		forAttributes attributeKeys: [any AXAttributeKey.Type],
//		options: AXCopyMultipleAttributeOptions = []
//	) throws -> [AXValue] {
//		// TODO: Handle each `attributeKey.process(_:)`.
//		try values(forAttributes: attributeKeys.map { attributeKey in attributeKey.attributeKey }, options: options)
//	}
}
