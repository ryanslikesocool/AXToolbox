import class ApplicationServices.HIServices.AXUIElement
import DeclarativeCore

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
}

// MARK: - Default Implementation

public extension AXAttributeKey {
	/// Retrieve and process the value for the attribute with the ``attributeKey``.
	func process(_ input: Input) throws -> Output {
		let originalValue = try input.value(forAttribute: Self.attributeKey)
		guard let castValue = originalValue as? Output else {
			throw AccessibilityError.castFailed(from: type(of: originalValue), to: Output.self)
		}
		return castValue
	}
}
