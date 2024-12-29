# Shorthand Accessors

Simplify attribute key access.


## Overview

Shorthand attribute key accessors can greatly simplify accessing attribute values.


## Example

The declaration for ``AXAttributeObject/title`` looks like this:
```swift
extension AXAttributeObject where
	Self == AXAttributeKeys.Title
{
	static var title: Self {
		Self()
	}
}
```

```swift
func readTitle(
	from element: AXUIElement
) throws -> String {
	var result: String

	// With a fully qualified initializer:
	result = try element.value(
		forAttribute: AXAttributeKeys.Title()
	)

	// With a shorthand accessor:
	result = try element.value(
		forAttribute: .title
	)

	return result
}
```
