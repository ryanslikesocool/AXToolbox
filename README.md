# AXToolbox

Extensions and conveniences for
[macOS accessibility APIs](https://developer.apple.com/documentation/applicationservices/carbon_accessibility)\.

## NOTICE

**This package is under development and not considered production-ready.**<br/>
Breaking changes are common, documentation is incomplete, and support is limited.  Use at your own risk.

---


## Installation (Swift Package Manager)

Add the following entry to your package dependencies...
```swift
.package(url: "https://github.com/ryanslikesocool/AXToolbox.git", from: "0.0.2"),
```
...and your target dependencies.
```swift
.target(
	name: "MyTarget",
	dependencies: [
		"AXToolbox",
	]
),
```

---


## Documentation

Most of this package is documented with
[DocC](https://www.swift.org/documentation/docc/)\.
<br/>
To view documentation in Xcode, select `Product > Build Documentation` from the menu bar.
