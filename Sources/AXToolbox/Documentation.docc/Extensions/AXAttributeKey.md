# ``AXAttributeKey``

## Discussion

### Additional Attribute Key Constants

Attribute key constants can be found in the documentation for
[`AXAttributeConstants.h`]( https://developer.apple.com/documentation/applicationservices/axattributeconstants_h ).

Value types of attribute keys can be found by using the Accessibility Inspector application bundled with Xcode.


## Example

Attribute keys are declared similarly to a SwiftUI
[`EnvironmentKey`]( https://developer.apple.com/documentation/swiftui/environmentkey ).
In most cases, declaring a new attribute key is as simple as knowing the key string and value type.

For example, the implementation for ``AXAttributeKeys/Focused`` looks like this:
```swift
extension AXAttributeKeys {
	struct Focused: AXAttributeKey {
		// The type of value that the key points to.
		// In this case, a `Bool`.
		public typealias Output = Bool

		// The underlying string for the attribute key.
		public static var attributeKey: String {
			// The `ApplicationServices` module already declares this constant for us,
			// so we can use that instead of declaring it manually.
			kAXFocusedAttribute
		}
	}
}
```