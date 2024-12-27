import ApplicationServices

// Extensions for `AXUIElement` that use
// [`AXUIElementCreateSystemWide`](https://developer.apple.com/documentation/applicationservices/1462095-axuielementcreatesystemwide)\.
public extension AXUIElement {
	/// Returns an accessibility object that provides access to system attributes.
	///
	/// This is useful for things like finding the focused accessibility object regardless of which application is currently active.
	///
	/// - Returns: The `AXUIElement` representing the system-wide accessibility object.
	static func systemWide() -> AXUIElement {
		AXUIElementCreateSystemWide()
	}
}
