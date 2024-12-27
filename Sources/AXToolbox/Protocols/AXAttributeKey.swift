import class ApplicationServices.HIServices.AXUIElement

/// A key for accessing attribute values in an
/// [`AXUIElement`](https://developer.apple.com/documentation/applicationservices/axuielement)\.
public protocol AXAttributeKey: AXAttributeObject where
	Input == AXUIElement,
	Output == Value
{
	/// The expected type of the value returned by
	/// [`value(forAttribute:)`](https://developer.apple.com/documentation/foundation/nsmetadataitem/1411721-value)\.
	associatedtype Value

	/// The underlying attribute key.
	///
	/// Attribute key constants can be found in
	/// [`AXAttributeConstants.h`](https://developer.apple.com/documentation/applicationservices/axattributeconstants_h)\.
	static var attributeKey: String { get }
}

// MARK: - Default Implementation

public extension AXAttributeKey {
	func process(_ input: Input) throws -> Output {
		let originalValue = try input.value(forAttribute: Self.attributeKey)
		guard let castValue = originalValue as? Output else {
			throw AXAttributeError.castFailed(input: type(of: originalValue), output: Output.self)
		}
		return castValue
	}
}
