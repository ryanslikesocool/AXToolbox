import AppKit

public extension NSAccessibility.Subrole {
	// MARK: A

	/// The constant for
	/// [`kAXApplicationDockItemSubrole`]( https://developer.apple.com/documentation/applicationservices/kaxapplicationdockitemsubrole ).
	static var applicationDockItem: Self { Self(rawValue: kAXApplicationDockItemSubrole) }

	// MARK: D

	/// The constant for
	/// [`kAXDecorativeSubrole`]( https://developer.apple.com/documentation/applicationservices/kaxdecorativesubrole ).
	static var decorative: Self { Self(rawValue: kAXDecorativeSubrole) }

	/// The constant for
	/// [`kAXDockExtraDockItemSubrole`]( https://developer.apple.com/documentation/applicationservices/kaxdockextradockitemsubrole ).
	static var dockExtraDockItem: Self { Self(rawValue: kAXDockExtraDockItemSubrole) }

	/// The constant for
	/// [`kAXDocumentDockItemSubrole`]( https://developer.apple.com/documentation/applicationservices/kaxdocumentdockitemsubrole ).
	static var documentDockItem: Self { Self(rawValue: kAXDocumentDockItemSubrole) }

	// MARK: F

	/// The constant for
	/// [`kAXFolderDockItemSubrole`]( https://developer.apple.com/documentation/applicationservices/kaxfolderdockitemsubrole ).
	static var folderDockItem: Self { Self(rawValue: kAXFolderDockItemSubrole) }

	// MARK: M

	/// The constant for
	/// [`kAXMinimizedWindowDockItemSubrole`]( https://developer.apple.com/documentation/applicationservices/kaxminimizedwindowdockitemsubrole ).
	static var minimizedWindowDockItem: Self { Self(rawValue: kAXMinimizedWindowDockItemSubrole) }

	// MARK: P

	/// The constant for
	/// [`kAXProcessSwitcherListSubrole`]( https://developer.apple.com/documentation/applicationservices/kaxprocessswitcherlistsubrole ).
	static var processSwitcherList: Self { Self(rawValue: kAXProcessSwitcherListSubrole) }

	/// The constant for
	/// [`kAXSeparatorDockItemSubrole`]( https://developer.apple.com/documentation/applicationservices/kaxseparatordockitemsubrole ).
	static var separatorDockItem: Self { Self(rawValue: kAXSeparatorDockItemSubrole) }

	// MARK: T

	/// The constant for
	/// [`kAXTrashDockItemSubrole`]( https://developer.apple.com/documentation/applicationservices/kaxtrashdockitemsubrole ).
	static var trashDockItem: Self { Self(rawValue: kAXTrashDockItemSubrole) }

	// MARK: U

	/// The constant for
	/// [`kAXURLDockItemSubrole`]( https://developer.apple.com/documentation/applicationservices/kaxurldockitemsubrole ).
	static var urlDockItem: Self { Self(rawValue: kAXURLDockItemSubrole) }
}