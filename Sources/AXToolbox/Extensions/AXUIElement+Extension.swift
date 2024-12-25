import AppKit
import ApplicationServices

public extension AXUIElement {
	// MARK: - AXUIElementCreateSystemWide

	/// Returns an accessibility object that provides access to system attributes.
	///
	/// This is useful for things like finding the focused accessibility object regardless of which application is currently active.
	/// - Returns: The `AXUIElement` representing the system-wide accessibility object.
	static func systemWide() -> AXUIElement {
		AXUIElementCreateSystemWide()
	}

	// MARK: - AXUIElementCreateApplication

	/// Creates and returns the top-level accessibility object for the application with the specified process ID.
	/// - Parameter pid: The process ID of an application.
	/// - Returns: The `AXUIElement` representing the top-level accessibility object for the application with the specified process ID.
	static func application(_ pid: pid_t) -> AXUIElement {
		AXUIElementCreateApplication(pid)
	}

	/// Creates and returns the top-level accessibility object for the given running application.
	/// - Parameter runningApplication: The running application.
	/// - Returns: The `AXUIElement` representing the top-level accessibility object for the running application.
	static func application(_ runningApplication: NSRunningApplication) -> AXUIElement {
		AXUIElement.application(runningApplication.processIdentifier)
	}

	/// Creates and returns the top-level accessibility objects applications with the specified bundle identifier.
	/// - Parameter bundleIdentifier: The bundle identifier of an application.
	/// - Returns: The `AXUIElement`s representing the top-level accessibility objects for applications with the specified bundle identifier.
	static func applications(withBundleIdentifier bundleIdentifier: String) -> some LazyCollectionProtocol & RandomAccessCollection<AXUIElement> {
		NSRunningApplication
			.runningApplications(withBundleIdentifier: bundleIdentifier)
			.lazy
			.map(application(_:))
	}

	// MARK: - AXUIElementCopyAttributeValue

	/// Returns the value of an accessibility object's attribute.
	/// - Parameter attributeName: The attribute name.
	/// - Returns: The value associated with the specified attribute.
	func value(forAttribute attributeName: CFString) throws(AccessibilityError) -> CFTypeRef {
		var value: CFTypeRef?
		let resultCode = AXUIElementCopyAttributeValue(self, attributeName, &value)

		try AccessibilityError.test(resultCode)

		// VALIDATE: is force-unwrapping safe here?
		return value!
	}

	/// Returns the value of an accessibility object's attribute.
	/// - Parameter attributeName: The attribute name.
	/// - Returns: The value associated with the specified attribute.
	func value(forAttribute attributeName: String) throws(AccessibilityError) -> CFTypeRef {
		try value(forAttribute: attributeName as CFString)
	}

	/// Returns the value for the attribute name specified by the given key.
	/// - Parameter attributeKey: The key that specifies the name of a accessibility attribute.
	/// - Returns: The value for the attribute name specified by `attributeKey`, if it could be found; `nil` otherwise.
	func value<Key>(forAttribute attributeKey: Key) -> Key.Output where
		Key: AXAttributeProtocol,
		Key.Input == AXUIElement
	{
		attributeKey.process(self)
	}

	// MARK: - AXUIElementCopyAttributeValues

	/// Returns an array of attribute values for the accessibility object's attribute, starting at the specified `startIndex`.
	/// - Parameters:
	///   - attributeName: The attribute name.
	///   - startIndex: The index into the array.
	///   - maxValues: The maximum number of values you want (this may be more or less than the number of values associated with the attribute).
	/// - Returns: The attribute values you requested.
	/// If `maxValues` is greater than the number of values associated with the attribute, the array will contain values found between `startIndex` and the end of the attribute's array, inclusive.
	func values(forAttribute attributeName: CFString, startIndex: CFIndex = .zero, maxValues: CFIndex) throws(AccessibilityError) -> CFArray {
		var values: CFArray?
		let resultCode = AXUIElementCopyAttributeValues(self, attributeName, startIndex, maxValues, &values)

		try AccessibilityError.test(resultCode)

		// VALIDATE: is force-unwrapping safe here?
		return values!
	}

	/// Returns an array of attribute values for the accessibility object's attribute, starting at the specified `startIndex`.
	/// - Parameters:
	///   - attributeName: The attribute name.
	///   - startIndex: The index into the array.
	///   - maxValues: The maximum number of values you want (this may be more or less than the number of values associated with the attribute).
	/// - Returns: The attribute values you requested.
	/// If `maxValues` is greater than the number of values associated with the attribute, the array will contain values found between `startIndex` and the end of the attribute's array, inclusive.
	func values(forAttribute attributeName: String, startIndex: CFIndex = .zero, maxValues: CFIndex) throws(AccessibilityError) -> CFArray {
		try values(forAttribute: attributeName as CFString, startIndex: startIndex, maxValues: maxValues)
	}

	/// Returns an array of attribute values for the accessibility object's attribute, starting at the specified `startIndex`.
	/// - Parameters:
	///   - attributeKey: The attribute key.
	///   - startIndex: The index into the array.
	///   - maxValues: The maximum number of values you want (this may be more or less than the number of values associated with the attribute).
	/// - Returns: The attribute values you requested.
	/// If `maxValues` is greater than the number of values associated with the attribute, the array will contain values found between `startIndex` and the end of the attribute's array, inclusive.
	// TODO: Restrict to `Key.Value == Array`
//	func values<Key>(forAttribute attributeKey: Key, startIndex: CFIndex = .zero, maxValues: CFIndex) -> CFArray? where
//		Key: AXAttributeKey
//	{
//		try? values(forAttribute: Key.attributeKey, startIndex: startIndex, maxValues: maxValues)
//	}

	// MARK: - AXUIElementCopyMultipleAttributeValues

	/// Returns the values of multiple attributes in the accessibility object.
	/// - Parameters:
	///   - attributeNames: An array of attribute names.
	///   - options: A value that tells the function how to handle errors.
	/// - Returns: An array in which each position contains the value of the attribute that is in the corresponding position in the passed-in attributes array.
	/// If `options.isEmpty`, the array can contain an
	/// [`AXValue`](https://developer.apple.com/documentation/applicationservices/axvalue)
	/// of type
	/// [`AXValueType.axError`](https://developer.apple.com/documentation/applicationservices/axvaluetype/axerror)
	/// in the corresponding position.
	/// If `options.contains(.stopOnError)`, this function will return immediately when it gets an error.
	func values(forAttributes attributeNames: CFArray, options: AXCopyMultipleAttributeOptions = []) throws(AccessibilityError) -> [AXValue] {
		var values: CFArray?
		let resultCode = AXUIElementCopyMultipleAttributeValues(self, attributeNames, options, &values)

		if !options.contains(.stopOnError) {
			try AccessibilityError.test(resultCode)
		}

		// VALIDATE: is force-unwrapping safe here?
		return values as! [AXValue]
	}

	/// Returns the values of multiple attributes in the accessibility object.
	/// - Parameters:
	///   - attributeNames: An array of attribute names.
	///   - options: A value that tells the function how to handle errors.
	/// - Returns: An array in which each position contains the value of the attribute that is in the corresponding position in the given `attributeNames`.
	/// If `options.isEmpty`, the array can contain an
	/// [`AXValue`](https://developer.apple.com/documentation/applicationservices/axvalue)
	/// of type
	/// [`AXValueType.axError`](https://developer.apple.com/documentation/applicationservices/axvaluetype/axerror)
	/// in the corresponding position.
	/// If `options.contains(.stopOnError)`, this function will return immediately when it gets an error.
	func values(forAttributes attributeNames: [CFString], options: AXCopyMultipleAttributeOptions = []) throws(AccessibilityError) -> [AXValue] {
		try values(forAttributes: attributeNames as CFArray, options: options)
	}

	/// Returns the values of multiple attributes in the accessibility object.
	/// - Parameters:
	///   - attributeNames: An array of attribute names.
	///   - options: A value that tells the function how to handle errors.
	/// - Returns: An array in which each position contains the value of the attribute that is in the corresponding position in the given `attributeNames`.
	/// If `options.isEmpty`, the array can contain an
	/// [`AXValue`](https://developer.apple.com/documentation/applicationservices/axvalue)
	/// of type
	/// [`AXValueType.axError`](https://developer.apple.com/documentation/applicationservices/axvaluetype/axerror)
	/// in the corresponding position.
	/// If `options.contains(.stopOnError)`, this function will return immediately when it gets an error.
	func values(forAttributes attributeNames: [String], options: AXCopyMultipleAttributeOptions = []) throws(AccessibilityError) -> [AXValue] {
		try values(forAttributes: attributeNames.map { attributeName in attributeName as CFString }, options: options)
	}

	/// Returns the values of multiple attributes in the accessibility object.
	/// - Parameters:
	///   - attributeKeys: An array of attribute keys.
	///   - options: A value that tells the function how to handle errors.
	/// - Returns: An array in which each position contains the value of the attribute that is in the corresponding position in the given `attributeKeys`.
	/// If `options.isEmpty`, the array can contain an
	/// [`AXValue`](https://developer.apple.com/documentation/applicationservices/axvalue)
	/// of type
	/// [`AXValueType.axError`](https://developer.apple.com/documentation/applicationservices/axvaluetype/axerror)
	/// in the corresponding position.
	/// If `options.contains(.stopOnError)`, this function will return immediately when it gets an error.
	func values(forAttributes attributeKeys: [any AXAttributeKey.Type], options: AXCopyMultipleAttributeOptions = []) throws(AccessibilityError) -> [AXValue] {
		try values(forAttributes: attributeKeys.map { attributeKey in attributeKey.attributeKey }, options: options)
	}

	// MARK: - AXUIElementGetAttributeValueCount

	/// Returns the count of the array of an accessibility object's attribute value.
	/// - Parameter attributeName: The attribute name.
	/// - Returns: The size of the array that is the attribute's value.
	func valueCount(forAttribute attributeName: CFString) throws(AccessibilityError) -> CFIndex {
		var count: CFIndex = 0
		let resultCode = AXUIElementGetAttributeValueCount(self, attributeName, &count)

		try AccessibilityError.test(resultCode)

		return count
	}

	/// Returns the count of the array of an accessibility object's attribute value.
	/// - Parameter attributeName: The attribute name.
	/// - Returns: The size of the array that is the attribute's value.
	func valueCount(forAttribute attributeName: String) throws(AccessibilityError) -> CFIndex {
		try valueCount(forAttribute: attributeName as CFString)
	}

	/// Returns the count of the array of an accessibility object's attribute value.
	/// - Parameter attributeKey: The attribute key.
	/// - Returns: The size of the array that is the attribute's value.
	// TODO: Restrict to `Key.Value == Array`
//	func valueCount<Key>(forAttribute attributeKey: Key) -> CFIndex? where
//		Key: AXAttributeKey
//	{
//		try? valueCount(forAttribute: Key.attributeKey)
//	}

	// MARK: - subelements

	func subelements(forAttribute attributeName: CFString) throws(AccessibilityError) -> CFArray {
		let count = try valueCount(forAttribute: attributeName)
		return try values(forAttribute: attributeName, startIndex: 0, maxValues: count)
	}

	func subelements(forAttribute attributeName: String) throws(AccessibilityError) -> CFArray {
		try subelements(forAttribute: attributeName as CFString)
	}

	// TODO: Restrict to `Key.Value == Array`
//	func subelements<Key>(forAttribute attributeKey: Key) -> CFArray? where
//		Key: AXAttributeKey
//	{
//		try? subelements(forAttribute: Key.attributeKey)
//	}

	// MARK: - children

	func children() throws(AccessibilityError) -> [AXUIElement] {
		// VALIDATE: is force-unwrapping safe here?
		try subelements(forAttribute: AXAttribute.ChildrenKey.attributeKey) as! [AXUIElement]
	}
}
