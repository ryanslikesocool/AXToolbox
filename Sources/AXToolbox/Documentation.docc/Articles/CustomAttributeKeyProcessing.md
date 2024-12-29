# Custom Processing

Customize attribute key processing.


## Overview

In some circumstances, additional processing may be desired for an attribute key.


## Example

This example converts the attribute value for the key
[`kAXRoleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxorientationattribute)
to an
``AXRole``
by declaring a custom implementation for
``AXAttributeKey/process(_:)``.
```swift
import ApplicationServices

extension AXAttributeKeys {
	struct Role: AXAttributeKey {
		static var attributeKey: String { 
			kAXRoleAttribute
		}

		// The associated `Output` type is inferred
		// from the function's return type.
		func process(_ input: AXUIElement) throws -> AXRole {
			// Retrieve the `attributeValue` from the given `AXUIElement`.
			let attributeValue: CFTypeRef = try input.value(forAttribute: Self.attributeKey)

			// Cast the `attributeValue` to the expected type for the `attributeKey` (`String`).
			guard
				let rawValue: String = attributeValue as? String
			else {
				throw AccessibilityError
					.castFailed(from: attributeValue, to: String.self)
			}

			// Convert the `rawValue` to the output `AXRole`.
			let resultValue: AXRole = AXRole(rawValue: rawValue)

			// Return the processed `resultValue`.
			return resultValue
		}
	}
}
```

- Remark: The functionality shown in this example is provided by ``AXAttributeKeys/Role``.


## See Also

- ``AXAttributeKey/process(_:)``
