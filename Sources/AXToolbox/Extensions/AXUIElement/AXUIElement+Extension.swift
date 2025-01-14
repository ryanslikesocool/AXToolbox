import ApplicationServices

public extension AXUIElement {
	// MARK: - subelements

	// VALIDATE: `func subelements(forAttribute:)` and overloads can probably be removed.
	// The functionality provided in implementations of `AXAttributeObject`
	// should cover most, if not all, cases.

	func subelements(
		forAttribute attributeName: CFString
	) throws -> CFArray {
		let count = try valueCount(forAttribute: attributeName)
		return try values(forAttribute: attributeName, startIndex: 0, maxValues: count)
	}

	func subelements(
		forAttribute attributeName: String
	) throws -> CFArray {
		try subelements(forAttribute: attributeName as CFString)
	}

	// MARK: - children

	// VALIDATE: `func children()` can probably be removed.
	// The functionality provided by `AXAttributeKeys.ChildrenKey`
	// should cover most, if not all, cases.

	func children() throws -> [AXUIElement] {
		let subelements = try self.subelements(forAttribute: AXAttributeKeys.Children.attributeKey)
		guard let result = subelements as? [AXUIElement] else {
			throw AccessibilityError.castFailed(from: CFArray.self, to: [AXUIElement].self)
		}
		return result
	}
}
