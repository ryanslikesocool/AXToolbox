import AppKit
import ApplicationServices

public extension AXUIElement {
	// MARK: - AXUIElementCreateSystemWide

	/// Returns an accessibility object that provides access to system attributes.
	///
	/// This is useful for things like finding the focused accessibility object regardless of which application is currently active.
	///
	/// - Returns: The `AXUIElement` representing the system-wide accessibility object.
	static func systemWide() -> AXUIElement {
		AXUIElementCreateSystemWide()
	}

	// MARK: - AXUIElementCreateApplication

	/// Creates and returns the top-level accessibility object for the application with the specified process ID.
	///
	/// - Parameter pid: The process ID of an application.
	/// - Returns: The `AXUIElement` representing the top-level accessibility object for the application with the specified process ID.
	static func application(_ pid: pid_t) -> AXUIElement {
		AXUIElementCreateApplication(pid)
	}

	/// Creates and returns the top-level accessibility object for the given running application.
	///
	/// - Parameter runningApplication: The running application.
	/// - Returns: The `AXUIElement` representing the top-level accessibility object for the running application.
	static func application(_ runningApplication: NSRunningApplication) -> AXUIElement {
		AXUIElement.application(runningApplication.processIdentifier)
	}

	/// Creates and returns the top-level accessibility objects applications with the specified bundle identifier.
	///
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
	///
	/// - Parameter attributeName: The attribute name.
	/// - Returns: The value associated with the specified attribute.
	func value(forAttribute attributeName: CFString) throws -> CFTypeRef {
		var value: CFTypeRef?
		let resultCode = AXUIElementCopyAttributeValue(self, attributeName, &value)

		try AccessibilityError.test(resultCode)

		guard let value else {
			throw AXAttributeError.unexpectedNil
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

	// MARK: - AXUIElementCopyAttributeValues

	/// Returns an array of attribute values for the accessibility object's attribute, starting at the specified `startIndex`.
	///
	/// - Parameters:
	///   - attributeName: The attribute name.
	///   - startIndex: The index into the array.
	///   - maxValues: The maximum number of values you want (this may be more or less than the number of values associated with the attribute).
	/// - Returns: The attribute values you requested.
	/// If `maxValues` is greater than the number of values associated with the attribute, the array will contain values found between `startIndex` and the end of the attribute's array, inclusive.
	func values(forAttribute attributeName: CFString, startIndex: CFIndex = .zero, maxValues: CFIndex) throws -> CFArray {
		var values: CFArray?
		let resultCode = AXUIElementCopyAttributeValues(self, attributeName, startIndex, maxValues, &values)

		try AccessibilityError.test(resultCode)

		guard let values else {
			throw AXAttributeError.unexpectedNil
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
	func values(forAttribute attributeName: String, startIndex: CFIndex = .zero, maxValues: CFIndex) throws -> CFArray {
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
//	func values<Key>(forAttribute attributeKey: Key, startIndex: CFIndex = .zero, maxValues: CFIndex) throws -> Key.Output where
//		Key: AXAttributeKey,
//		Key.Output: Collection
//	{
//		try values(forAttribute: Key.attributeKey, startIndex: startIndex, maxValues: maxValues)
//	}

	// MARK: - AXUIElementCopyMultipleAttributeValues

	/// Returns the values of multiple attributes in the accessibility object.
	///
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
	func values(forAttributes attributeNames: CFArray, options: AXCopyMultipleAttributeOptions = []) throws -> [AXValue] {
		var values: CFArray?
		let resultCode = AXUIElementCopyMultipleAttributeValues(self, attributeNames, options, &values)

		if !options.contains(.stopOnError) {
			try AccessibilityError.test(resultCode)
		}

		guard let result = values as? [AXValue] else {
			throw AXAttributeError.castFailed(input: CFArray?.self, output: [AXValue].self)
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
	/// [`AXValue`](https://developer.apple.com/documentation/applicationservices/axvalue)
	/// of type
	/// [`AXValueType.axError`](https://developer.apple.com/documentation/applicationservices/axvaluetype/axerror)
	/// in the corresponding position.
	/// If `options.contains(.stopOnError)`, this function will return immediately when it gets an error.
	func values(forAttributes attributeNames: [CFString], options: AXCopyMultipleAttributeOptions = []) throws -> [AXValue] {
		try values(forAttributes: attributeNames as CFArray, options: options)
	}

	/// Returns the values of multiple attributes in the accessibility object.
	///
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
	func values(forAttributes attributeNames: [String], options: AXCopyMultipleAttributeOptions = []) throws -> [AXValue] {
		try values(forAttributes: attributeNames.map { attributeName in attributeName as CFString }, options: options)
	}

//	/// Returns the values of multiple attributes in the accessibility object.
//	///
//	/// - Parameters:
//	///   - attributeKeys: An array of attribute keys.
//	///   - options: A value that tells the function how to handle errors.
//	/// - Returns: An array in which each position contains the value of the attribute that is in the corresponding position in the given `attributeKeys`.
//	/// If `options.isEmpty`, the array can contain an
//	/// [`AXValue`](https://developer.apple.com/documentation/applicationservices/axvalue)
//	/// of type
//	/// [`AXValueType.axError`](https://developer.apple.com/documentation/applicationservices/axvaluetype/axerror)
//	/// in the corresponding position.
//	/// If `options.contains(.stopOnError)`, this function will return immediately when it gets an error.
//	func values(forAttributes attributeKeys: [any AXAttributeKey.Type], options: AXCopyMultipleAttributeOptions = []) throws -> [AXValue] {
//		// TODO: This should `.process` the result for each `attributeKeys`.
//		try values(forAttributes: attributeKeys.map { attributeKey in attributeKey.attributeKey }, options: options)
//	}

	// MARK: - AXUIElementGetAttributeValueCount

	/// Returns the count of the array of an accessibility object's attribute value.
	///
	/// - Parameter attributeName: The attribute name.
	/// - Returns: The size of the array that is the attribute's value.
	func valueCount(forAttribute attributeName: CFString) throws -> CFIndex {
		var count: CFIndex = 0
		let resultCode = AXUIElementGetAttributeValueCount(self, attributeName, &count)

		try AccessibilityError.test(resultCode)

		return count
	}

	/// Returns the count of the array of an accessibility object's attribute value.
	///
	/// - Parameter attributeName: The attribute name.
	/// - Returns: The size of the array that is the attribute's value.
	func valueCount(forAttribute attributeName: String) throws -> CFIndex {
		try valueCount(forAttribute: attributeName as CFString)
	}

	/// Returns the count of the array of an accessibility object's attribute value.
	///
	/// - Parameter attributeKey: The attribute key.
	/// - Returns: The size of the array that is the attribute's value.
	func valueCount<Key>(forAttribute attributeKey: Key) throws -> CFIndex where
		Key: AXAttributeKey,
		Key.Output: Collection
	{
		try valueCount(forAttribute: Key.attributeKey)
	}

	// MARK: - subelements

	// VALIDATE: `func subelements(forAttribute:)` and overloads can probably be removed.
	// The functionality provided in implementations of `AXAttributeObject`
	// should cover most, if not all, cases.

	func subelements(forAttribute attributeName: CFString) throws -> CFArray {
		let count = try valueCount(forAttribute: attributeName)
		return try values(forAttribute: attributeName, startIndex: 0, maxValues: count)
	}

	func subelements(forAttribute attributeName: String) throws -> CFArray {
		try subelements(forAttribute: attributeName as CFString)
	}

	// MARK: - children

	// VALIDATE: `func children()` can probably be removed.
	// The functionality provided by `AXAttributeKeys.ChildrenKey`
	// should cover most, if not all, cases.

	func children() throws -> [AXUIElement] {
		let subelements = try self.subelements(forAttribute: AXAttributeKeys.Children.attributeKey)
		guard let result = subelements as? [AXUIElement] else {
			throw AXAttributeError.castFailed(input: CFArray.self, output: [AXUIElement].self)
		}
		return result
	}
}
