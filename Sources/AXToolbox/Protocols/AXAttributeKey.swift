import class ApplicationServices.HIServices.AXUIElement

/// A key for accessing attribute values in an
/// [`AXUIElement`](https://developer.apple.com/documentation/applicationservices/axuielement)\.
public protocol AXAttributeKey: AXAttributeProtocol where
	Input == AXUIElement,
	Output == Value?
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
	func process(_ input: Input) -> Value? {
		try? input.value(forAttribute: Self.attributeKey) as? Value
	}
}