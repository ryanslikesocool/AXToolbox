import ApplicationServices

public extension AXUIElement {
	// MARK: - AXUIElementCreateSystemWide

	/// A wrapper for [`AXUIElementCreateSystemWide`](https://developer.apple.com/documentation/applicationservices/1462095-axuielementcreatesystemwide) .
	static func systemWide() -> AXUIElement {
		AXUIElementCreateSystemWide()
	}

	// MARK: - AXUIElementCreateApplication

	/// A wrapper for [`AXUIElementCreateApplication`](https://developer.apple.com/documentation/applicationservices/1459374-axuielementcreateapplication) .
	static func application(_ pid: pid_t) -> AXUIElement {
		AXUIElementCreateApplication(pid)
	}

	// MARK: - AXUIElementCopyAttributeValue

	func value(forAttribute attributeName: CFString) throws(AccessibilityError) -> CFTypeRef {
		var value: CFTypeRef?
		let resultCode = AXUIElementCopyAttributeValue(self, attributeName, &value)

		try AccessibilityError.test(resultCode)

		// VALIDATE: is force-unwrapping safe here?
		return value!
	}

	func value(forAttribute attributeName: String) throws(AccessibilityError) -> CFTypeRef {
		try value(forAttribute: attributeName as CFString)
	}

	func value(forAttribute attributeName: AXAttributeName) throws(AccessibilityError) -> CFTypeRef {
		try value(forAttribute: attributeName.rawValue as CFString)
	}

	// MARK: - AXUIElementCopyAttributeValues

	func values(forAttribute attributeName: CFString, startIndex: CFIndex = .zero, maxValues: CFIndex) throws(AccessibilityError) -> CFArray {
		var values: CFArray?
		let resultCode = AXUIElementCopyAttributeValues(self, attributeName, startIndex, maxValues, &values)

		try AccessibilityError.test(resultCode)

		// VALIDATE: is force-unwrapping safe here?
		return values!
	}

	func values(forAttribute attributeName: String, startIndex: CFIndex = .zero, maxValues: CFIndex) throws(AccessibilityError) -> CFArray {
		try values(forAttribute: attributeName as CFString, startIndex: startIndex, maxValues: maxValues)
	}

	func values(forAttribute attributeName: AXAttributeName, startIndex: CFIndex = .zero, maxValues: CFIndex) throws(AccessibilityError) -> CFArray {
		try values(forAttribute: attributeName.rawValue as CFString, startIndex: startIndex, maxValues: maxValues)
	}

	// MARK: - AXUIElementCopyMultipleAttributeValues

	func values(forAttributes attributeNames: CFArray, options: AXCopyMultipleAttributeOptions = []) throws(AccessibilityError) -> [AXValue] {
		var values: CFArray?
		let resultCode = AXUIElementCopyMultipleAttributeValues(self, attributeNames, options, &values)

		try AccessibilityError.test(resultCode)

		// VALIDATE: is force-unwrapping safe here?
		return values as! [AXValue]
	}

	func values(forAttributes attributeNames: [CFString], options: AXCopyMultipleAttributeOptions = []) throws(AccessibilityError) -> [AXValue] {
		try values(forAttributes: attributeNames as CFArray, options: options)
	}

	// overkill?
//	func values(forAttributes attributeNames: some Sequence<CFString>, options: AXCopyMultipleAttributeOptions = []) throws(AccessibilityError) -> [AXValue] {
//		try values(forAttributes: Array(attributeNames), options: options)
//	}
//
//	func values(forAttributes firstAttributeName: CFString, _ secondAttributeName: CFString, _ otherAttributeNames: CFString..., options: AXCopyMultipleAttributeOptions = []) throws(AccessibilityError) -> [AXValue] {
//		try values(forAttributes: [firstAttributeName, secondAttributeName] + Array(otherAttributeNames), options: options)
//	}

	func values(forAttributes attributeNames: [String], options: AXCopyMultipleAttributeOptions = []) throws(AccessibilityError) -> [AXValue] {
		try values(forAttributes: attributeNames.map { attributeName in attributeName as CFString }, options: options)
	}

	// overkill?
//	func values(forAttributes attributeNames: some Sequence<String>, options: AXCopyMultipleAttributeOptions = []) throws(AccessibilityError) -> [AXValue] {
//		try values(forAttributes: Array(attributeNames), options: options)
//	}
//
//	func values(forAttributes firstAttributeName: String, _ secondAttributeName: String, _ otherAttributeNames: String..., options: AXCopyMultipleAttributeOptions = []) throws(AccessibilityError) -> [AXValue] {
//		try values(forAttributes: [firstAttributeName, secondAttributeName] + Array(otherAttributeNames), options: options)
//	}

	func values(forAttributes attributeNames: [AXAttributeName], options: AXCopyMultipleAttributeOptions = []) throws(AccessibilityError) -> [AXValue] {
		try values(forAttributes: attributeNames.map { attributeName in attributeName.rawValue as CFString }, options: options)
	}

	// overkill?
//	func values(forAttributes attributeNames: some Sequence<AccessibilityAttributeName>, options: AXCopyMultipleAttributeOptions = []) throws(AccessibilityError) -> [AXValue] {
//		try values(forAttributes: Array(attributeNames), options: options)
//	}
//
//	func values(forAttributes firstAttributeName: AccessibilityAttributeName, _ secondAttributeName: AccessibilityAttributeName, _ otherAttributeNames: AccessibilityAttributeName..., options: AXCopyMultipleAttributeOptions = []) throws(AccessibilityError) -> [AXValue] {
//		try values(forAttributes: [firstAttributeName, secondAttributeName] + Array(otherAttributeNames), options: options)
//	}

	// MARK: - AXUIElementGetAttributeValueCount

	func valueCount(forAttribute attributeName: CFString) throws(AccessibilityError) -> CFIndex {
		var count: CFIndex = 0
		let resultCode = AXUIElementGetAttributeValueCount(self, attributeName, &count)

		try AccessibilityError.test(resultCode)

		return count
	}

	func valueCount(forAttribute attributeName: String) throws(AccessibilityError) -> CFIndex {
		try valueCount(forAttribute: attributeName as CFString)
	}

	func valueCount(forAttribute attributeName: AXAttributeName) throws(AccessibilityError) -> CFIndex {
		try valueCount(forAttribute: attributeName.rawValue as CFString)
	}

	// MARK: - subelements

	func subelements(forAttribute attributeName: CFString) throws(AccessibilityError) -> CFArray {
		let count = try valueCount(forAttribute: attributeName)
		return try values(forAttribute: attributeName, startIndex: 0, maxValues: count)
	}

	func subelements(forAttribute attributeName: String) throws(AccessibilityError) -> CFArray {
		try subelements(forAttribute: attributeName as CFString)
	}

	func subelements(forAttribute attributeName: AXAttributeName) throws(AccessibilityError) -> CFArray {
		try subelements(forAttribute: attributeName.rawValue as CFString)
	}

	// MARK: - children

	func children() throws(AccessibilityError) -> [AXUIElement] {
		// VALIDATE: is force-unwrapping safe here?
		try subelements(forAttribute: .children) as! [AXUIElement]
	}
}
