import AppKit
import ApplicationServices

// Extensions for `AXUIElement` that use
// [`AXUIElementCreateApplication`]( https://developer.apple.com/documentation/applicationservices/1459374-axuielementcreateapplication ).
public extension AXUIElement {
	/// Creates and returns the top-level accessibility object for the application with the specified process ID.
	///
	/// - Parameter pid: The process ID of an application.
	/// - Returns: The `AXUIElement` representing the top-level accessibility object for the application with the specified process ID.
	static func application(
		_ pid: pid_t
	) -> AXUIElement {
		AXUIElementCreateApplication(pid)
	}

	/// Creates and returns the top-level accessibility object for the given running application.
	///
	/// - Parameter runningApplication: The running application.
	/// - Returns: The `AXUIElement` representing the top-level accessibility object for the running application.
	static func application(
		_ runningApplication: NSRunningApplication
	) -> AXUIElement {
		AXUIElement.application(runningApplication.processIdentifier)
	}

	/// Creates and returns the top-level accessibility objects applications with the specified bundle identifier.
	///
	/// - Parameter bundleIdentifier: The bundle identifier of an application.
	/// - Returns: The `AXUIElement`s representing the top-level accessibility objects for applications with the specified bundle identifier.
	static func applications(
		withBundleIdentifier bundleIdentifier: String
	) -> some LazyCollectionProtocol & RandomAccessCollection<AXUIElement> {
		NSRunningApplication
			.runningApplications(withBundleIdentifier: bundleIdentifier)
			.lazy
			.map(application(_:))
	}
}
