import AppKit

public extension NSAccessibility.Role {
	// MARK: D

	/// The constant for
	/// [`kAXDateFieldRole`]( https://developer.apple.com/documentation/applicationservices/kaxdatefieldrole ).
	static var dateField: Self { Self(rawValue: kAXDateFieldRole) }

	/// The constant for
	/// [`kAXDockItemRole`]( https://developer.apple.com/documentation/applicationservices/kaxdockitemrole ).
	static var dockItem: Self { Self(rawValue: kAXDockItemRole) }

	// MARK: H

	/// The constant for
	/// [`kAXHeadingRole`]( https://developer.apple.com/documentation/applicationservices/kaxheadingrole ).
	static var heading: Self { Self(rawValue: kAXHeadingRole) }
}