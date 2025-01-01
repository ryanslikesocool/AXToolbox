import class ApplicationServices.HIServices.AXUIElement

/// A key for accessing attribute values in an
/// [`AXUIElement`](https://developer.apple.com/documentation/applicationservices/axuielement)\.
public protocol AXAttributeKey: AXAttributeObject where
	Input == AXUIElement
{
	/// The underlying attribute key.
	///
	/// Attribute key constants can be found in
	/// [`AXAttributeConstants.h`](https://developer.apple.com/documentation/applicationservices/axattributeconstants_h)\.
	static var attributeKey: String { get }

	/// Retrieve and process the value for the attribute with the ``attributeKey``.
	// Shadows ``AXAttributeObject.process(_:)``
	func process(_ input: Input) throws -> Output
}

// MARK: - Default Implementation

public extension AXAttributeKey {
	func process(_ input: Input) throws -> Output {
		let originalValue = try input.value(forAttribute: Self.attributeKey)
		guard let castValue = originalValue as? Output else {
			throw AccessibilityError.castFailed(from: type(of: originalValue), to: Output.self)
		}
		return castValue
	}
}
