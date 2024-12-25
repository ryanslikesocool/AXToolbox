import ApplicationServices.HIServices.AXRoleConstants

/// A wrapper for subrole names in
/// [AXRoleConstants.h](https://developer.apple.com/documentation/applicationservices/axroleconstants_h)\.
@frozen
public struct AXSubrole: RawRepresentable {
	public typealias RawValue = String

	public let rawValue: RawValue

	public init(rawValue: RawValue) {
		self.rawValue = rawValue
	}
}

// MARK: - Sendable

extension AXSubrole: Sendable { }

// MARK: - Equatable

extension AXSubrole: Equatable { }

// MARK: - Hashable

extension AXSubrole: Hashable { }

// MARK: - Codable

extension AXSubrole: Codable {
	public init(from decoder: any Decoder) throws {
		let container = try decoder.singleValueContainer()
		try self.init(rawValue: container.decode(RawValue.self))
	}

	public func encode(to encoder: any Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(rawValue)
	}
}

// MARK: - CustomStringConvertible

extension AXSubrole: CustomStringConvertible {
	public var description: String {
		"\(Self.self)(\(rawValue))"
	}
}

// MARK: - Constants

public extension AXSubrole {
	
	// MARK: A

	/// The constant for
	/// [`kAXApplicationDockItemSubrole`](https://developer.apple.com/documentation/applicationservices/kaxapplicationdockitemsubrole)\.
	static var applicationDockItem: Self { Self(rawValue: kAXApplicationDockItemSubrole) }

	// MARK: C

	/// The constant for
	/// [`kAXCloseButtonSubrole`](https://developer.apple.com/documentation/applicationservices/kaxclosebuttonsubrole)\.
	static var closeButton: Self { Self(rawValue: kAXCloseButtonSubrole) }

	/// The constant for
	/// [`kAXContentListSubrole`](https://developer.apple.com/documentation/applicationservices/kaxcontentlistsubrole)\.
	static var contentList: Self { Self(rawValue: kAXContentListSubrole) }

	// MARK: D

	/// The constant for
	/// [`kAXDecorativeSubrole`](https://developer.apple.com/documentation/applicationservices/kaxdecorativesubrole)\.
	static var decorative: Self { Self(rawValue: kAXDecorativeSubrole) }

	/// The constant for
	/// [`kAXDecrementArrowSubrole`](https://developer.apple.com/documentation/applicationservices/kaxdecrementarrowsubrole)\.
	static var decrementArrow: Self { Self(rawValue: kAXDecrementArrowSubrole) }

	/// The constant for
	/// [`kAXDecrementPageSubrole`](https://developer.apple.com/documentation/applicationservices/kaxdecrementpagesubrole)\.
	static var decrementPage: Self { Self(rawValue: kAXDecrementPageSubrole) }

	/// The constant for
	/// [`kAXDefinitionListSubrole`](https://developer.apple.com/documentation/applicationservices/kaxdefinitionlistsubrole)\.
	static var definitionList: Self { Self(rawValue: kAXDefinitionListSubrole) }

	/// The constant for
	/// [`kAXDescriptionListSubrole`](https://developer.apple.com/documentation/applicationservices/kaxdescriptionlistsubrole)\.
	static var descriptionList: Self { Self(rawValue: kAXDescriptionListSubrole) }

	/// The constant for
	/// [`kAXDialogSubrole`](https://developer.apple.com/documentation/applicationservices/kaxdialogsubrole)\.
	static var dialog: Self { Self(rawValue: kAXDialogSubrole) }

	/// The constant for
	/// [`kAXDockExtraDockItemSubrole`](https://developer.apple.com/documentation/applicationservices/kaxdockextradockitemsubrole)\.
	static var dockExtraDockItem: Self { Self(rawValue: kAXDockExtraDockItemSubrole) }

	/// The constant for
	/// [`kAXDocumentDockItemSubrole`](https://developer.apple.com/documentation/applicationservices/kaxdocumentdockitemsubrole)\.
	static var documentDockItem: Self { Self(rawValue: kAXDocumentDockItemSubrole) }

	// MARK: F

	/// The constant for
	/// [`kAXFloatingWindowSubrole`](https://developer.apple.com/documentation/applicationservices/kaxfloatingwindowsubrole)\.
	static var floatingWindow: Self { Self(rawValue: kAXFloatingWindowSubrole) }

	/// The constant for
	/// [`kAXFolderDockItemSubrole`](https://developer.apple.com/documentation/applicationservices/kaxfolderdockitemsubrole)\.
	static var folderDockItem: Self { Self(rawValue: kAXFolderDockItemSubrole) }

	/// The constant for
	/// [`kAXFullScreenButtonSubrole`](https://developer.apple.com/documentation/applicationservices/kaxfullscreenbuttonsubrole)\.
	static var fullScreenButton: Self { Self(rawValue: kAXFullScreenButtonSubrole) }

	// MARK: I

	/// The constant for
	/// [`kAXIncrementArrowSubrole`](https://developer.apple.com/documentation/applicationservices/kaxincrementarrowsubrole)\.
	static var incrementArrow: Self { Self(rawValue: kAXIncrementArrowSubrole) }

	/// The constant for
	/// [`kAXIncrementPageSubrole`](https://developer.apple.com/documentation/applicationservices/kaxincrementpagesubrole)\.
	static var incrementPage: Self { Self(rawValue: kAXIncrementPageSubrole) }

	// MARK: M

	/// The constant for
	/// [`kAXMinimizeButtonSubrole`](https://developer.apple.com/documentation/applicationservices/kaxminimizebuttonsubrole)\.
	static var minimizeButton: Self { Self(rawValue: kAXMinimizeButtonSubrole) }

	/// The constant for
	/// [`kAXMinimizedWindowDockItemSubrole`](https://developer.apple.com/documentation/applicationservices/kaxminimizedwindowdockitemsubrole)\.
	static var minimizedWindowDockItem: Self { Self(rawValue: kAXMinimizedWindowDockItemSubrole) }

	// MARK: O

	/// The constant for
	/// [`kAXOutlineRowSubrole`](https://developer.apple.com/documentation/applicationservices/kaxoutlinerowsubrole)\.
	static var outlineRow: Self { Self(rawValue: kAXOutlineRowSubrole) }

	// MARK: P

	/// The constant for
	/// [`kAXProcessSwitcherListSubrole`](https://developer.apple.com/documentation/applicationservices/kaxprocessswitcherlistsubrole)\.
	static var processSwitcherList: Self { Self(rawValue: kAXProcessSwitcherListSubrole) }

	// MARK: R

	/// The constant for
	/// [`kAXRatingIndicatorSubrole`](https://developer.apple.com/documentation/applicationservices/kaxratingindicatorsubrole)\.
	static var ratingIndicator: Self { Self(rawValue: kAXRatingIndicatorSubrole) }

	// MARK: S

	/// The constant for
	/// [`kAXSearchFieldSubrole`](https://developer.apple.com/documentation/applicationservices/kaxsearchfieldsubrole)\.
	static var searchField: Self { Self(rawValue: kAXSearchFieldSubrole) }

	/// The constant for
	/// [`kAXSecureTextFieldSubrole`](https://developer.apple.com/documentation/applicationservices/kaxsecuretextfieldsubrole)\.
	static var secureTextField: Self { Self(rawValue: kAXSecureTextFieldSubrole) }

	/// The constant for
	/// [`kAXSeparatorDockItemSubrole`](https://developer.apple.com/documentation/applicationservices/kaxseparatordockitemsubrole)\.
	static var separatorDockItem: Self { Self(rawValue: kAXSeparatorDockItemSubrole) }

	/// The constant for
	/// [`kAXSortButtonSubrole`](https://developer.apple.com/documentation/applicationservices/kaxsortbuttonsubrole)\.
	static var sortButton: Self { Self(rawValue: kAXSortButtonSubrole) }

	/// The constant for
	/// [`kAXStandardWindowSubrole`](https://developer.apple.com/documentation/applicationservices/kaxstandardwindowsubrole)\.
	static var standardWindow: Self { Self(rawValue: kAXStandardWindowSubrole) }

	/// The constant for
	/// [`kAXSwitchSubrole`](https://developer.apple.com/documentation/applicationservices/kaxswitchsubrole)\.
	static var `switch`: Self { Self(rawValue: kAXSwitchSubrole) }

	/// The constant for
	/// [`kAXSystemDialogSubrole`](https://developer.apple.com/documentation/applicationservices/kaxsystemdialogsubrole)\.
	static var systemDialog: Self { Self(rawValue: kAXSystemDialogSubrole) }

	/// The constant for
	/// [`kAXSystemFloatingWindowSubrole`](https://developer.apple.com/documentation/applicationservices/kaxsystemfloatingwindowsubrole)\.
	static var systemFloatingWindow: Self { Self(rawValue: kAXSystemFloatingWindowSubrole) }

	// MARK: T

	/// The constant for
	/// [`kAXTableRowSubrole`](https://developer.apple.com/documentation/applicationservices/kaxtablerowsubrole)\.
	static var tableRow: Self { Self(rawValue: kAXTableRowSubrole) }

	/// The constant for
	/// [`kAXTimelineSubrole`](https://developer.apple.com/documentation/applicationservices/kaxtimelinesubrole)\.
	static var timeline: Self { Self(rawValue: kAXTimelineSubrole) }

	/// The constant for
	/// [`kAXToggleSubrole`](https://developer.apple.com/documentation/applicationservices/kaxtogglesubrole)\.
	static var toggle: Self { Self(rawValue: kAXToggleSubrole) }

	/// The constant for
	/// [`kAXToolbarButtonSubrole`](https://developer.apple.com/documentation/applicationservices/kaxtoolbarbuttonsubrole)\.
	static var toolbarButton: Self { Self(rawValue: kAXToolbarButtonSubrole) }

	/// The constant for
	/// [`kAXTrashDockItemSubrole`](https://developer.apple.com/documentation/applicationservices/kaxtrashdockitemsubrole)\.
	static var trashDockItem: Self { Self(rawValue: kAXTrashDockItemSubrole) }

	// MARK: U

	/// The constant for
	/// [`kAXUnknownSubrole`](https://developer.apple.com/documentation/applicationservices/kaxunknownsubrole)\.
	static var unknown: Self { Self(rawValue: kAXUnknownSubrole) }

	/// The constant for
	/// [`kAXURLDockItemSubrole`](https://developer.apple.com/documentation/applicationservices/kaxurldockitemsubrole)\.
	static var urlDockItem: Self { Self(rawValue: kAXURLDockItemSubrole) }

	// MARK: Z

	/// The constant for
	/// [`kAXZoomButtonSubrole`](https://developer.apple.com/documentation/applicationservices/kaxzoombuttonsubrole)\.
	static var zoomButton: Self { Self(rawValue: kAXZoomButtonSubrole) }
}
