# Quick Start

## Using Attribute Keys

This package provides a simple and type-safe way to access attribute values from
[`AXUIElement`](https://developer.apple.com/documentation/applicationservices/axuielement)
in the form of the ``AXAttributeKey`` protocol.
```swift
import ApplicationServices
import AXToolbox

func readTitle(
	from element: AXUIElement
) throws -> String {
	var result: String

	// Read the value with a fully qualified initializer...
	result = try element.value(
		forAttribute: AXAttributeKeys.Title()
	)

	// ...or with a shorthand accessor.
	result = try element.value(
		forAttribute: .title
	)

	return result
}
```

---


## Custom Attribute Keys

Multiple attribute keys are provided by the package,
and more can be added with a simple declaration.
```swift
// Declare the attribute key...
struct MyCustomValueAttributeKey: AXAttributeKey {
	// The type of attribute value that the `attributeKey` points to.
	typealias Output = String

	// The key used to access the attribute value.
	static let attributeKey: String = "MyCustomValueKey"
}
```

In cases where the fully-qualified key name is verbose or used frequently,
it can be useful to declare a shorthand info dictionary key accessor.
```swift
extension AXAttributeObject where
	Self == MyCustomValueAttributeKey
{
	static var myCustomValue: Self {
		Self()
	}
}
```
