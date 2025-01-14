import ApplicationServices.HIServices.AXRoleConstants

// TODO: Should this be converted to an `enum`?

/// Constants for roles defined in
/// [AXRoleConstants.h]( https://developer.apple.com/documentation/applicationservices/axroleconstants_h ).
@frozen
public struct AXRole: RawRepresentable {
	public typealias RawValue = String

	public let rawValue: RawValue

	public init(rawValue: RawValue) {
		self.rawValue = rawValue
	}
}

// MARK: - Sendable

extension AXRole: Sendable { }

// MARK: - Equatable

extension AXRole: Equatable { }

// MARK: - Hashable

extension AXRole: Hashable { }

// MARK: - Codable

extension AXRole: Codable {
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

//extension AXRole: CustomStringConvertible {
//	public var description: String {
//		"\(Self.self)(\(rawValue))"
//	}
//}

// MARK: - Constants

public extension AXRole {
	
	// MARK: A

	/// The constant for
	/// [`kAXApplicationRole`]( https://developer.apple.com/documentation/applicationservices/kaxapplicationrole ).
	static var application: Self { Self(rawValue: kAXApplicationRole) }

	// MARK: B

	/// The constant for
	/// [`kAXBusyIndicatorRole`]( https://developer.apple.com/documentation/applicationservices/kaxbusyindicatorrole ).
	static var busyIndicator: Self { Self(rawValue: kAXBusyIndicatorRole) }

	/// The constant for
	/// [`kAXBrowserRole`]( https://developer.apple.com/documentation/applicationservices/kaxbrowserrole ).
	static var browser: Self { Self(rawValue: kAXBrowserRole) }

	/// The constant for
	/// [`kAXButtonRole`]( https://developer.apple.com/documentation/applicationservices/kaxbuttonrole ).
	static var button: Self { Self(rawValue: kAXButtonRole) }

	// MARK: C

	/// The constant for
	/// [`kAXCellRole`]( https://developer.apple.com/documentation/applicationservices/kaxcellrole ).
	static var cell: Self { Self(rawValue: kAXCellRole) }

	/// The constant for
	/// [`kAXCheckBoxRole`]( https://developer.apple.com/documentation/applicationservices/kaxcheckboxrole ).
	static var checkBox: Self { Self(rawValue: kAXCheckBoxRole) }

	/// The constant for
	/// [`kAXColorWellRole`]( https://developer.apple.com/documentation/applicationservices/kaxcolorwellrole ).
	static var colorWell: Self { Self(rawValue: kAXColorWellRole) }

	/// The constant for
	/// [`kAXColumnRole`]( https://developer.apple.com/documentation/applicationservices/kaxcolumnrole ).
	static var column: Self { Self(rawValue: kAXColumnRole) }

	/// The constant for
	/// [`kAXComboBoxRole`]( https://developer.apple.com/documentation/applicationservices/kaxcomboboxrole ).
	static var comboBox: Self { Self(rawValue: kAXComboBoxRole) }

	// MARK: D

	/// The constant for
	/// [`kAXDateFieldRole`]( https://developer.apple.com/documentation/applicationservices/kaxdatefieldrole ).
	static var dateField: Self { Self(rawValue: kAXDateFieldRole) }

	/// The constant for
	/// [`kAXDisclosureTriangleRole`]( https://developer.apple.com/documentation/applicationservices/kaxdisclosuretrianglerole ).
	static var disclosureTriangle: Self { Self(rawValue: kAXDisclosureTriangleRole) }

	/// The constant for
	/// [`kAXDockItemRole`]( https://developer.apple.com/documentation/applicationservices/kaxdockitemrole ).
	static var dockItem: Self { Self(rawValue: kAXDockItemRole) }

	/// The constant for
	/// [`kAXDrawerRole`]( https://developer.apple.com/documentation/applicationservices/kaxdrawerrole ).
	static var drawer: Self { Self(rawValue: kAXDrawerRole) }

	// MARK: G

	/// The constant for
	/// [`kAXGridRole`]( https://developer.apple.com/documentation/applicationservices/kaxgridrole ).
	static var grid: Self { Self(rawValue: kAXGridRole) }

	/// The constant for
	/// [`kAXGroupRole`]( https://developer.apple.com/documentation/applicationservices/kaxgrouprole ).
	static var group: Self { Self(rawValue: kAXGroupRole) }

	/// The constant for
	/// [`kAXGrowAreaRole`]( https://developer.apple.com/documentation/applicationservices/kaxgrowarearole ).
	static var growArea: Self { Self(rawValue: kAXGrowAreaRole) }

	// MARK: H

	/// The constant for
	/// [`kAXHandleRole`]( https://developer.apple.com/documentation/applicationservices/kaxhandlerole ).
	static var handle: Self { Self(rawValue: kAXHandleRole) }

	/// The constant for
	/// [`kAXHeadingRole`]( https://developer.apple.com/documentation/applicationservices/kaxheadingrole ).
	static var heading: Self { Self(rawValue: kAXHeadingRole) }

	/// The constant for
	/// [`kAXHelpTagRole`]( https://developer.apple.com/documentation/applicationservices/kaxhelptagrole ).
	static var helpTag: Self { Self(rawValue: kAXHelpTagRole) }

	// MARK: I

	/// The constant for
	/// [`kAXImageRole`]( https://developer.apple.com/documentation/applicationservices/kaximagerole ).
	static var image: Self { Self(rawValue: kAXImageRole) }

	/// The constant for
	/// [`kAXIncrementorRole`]( https://developer.apple.com/documentation/applicationservices/kaxincrementorrole ).
	static var incrementor: Self { Self(rawValue: kAXIncrementorRole) }

	// MARK: L

	/// The constant for
	/// [`kAXLayoutAreaRole`]( https://developer.apple.com/documentation/applicationservices/kaxlayoutarearole ).
	static var layoutArea: Self { Self(rawValue: kAXLayoutAreaRole) }

	/// The constant for
	/// [`kAXLayoutItemRole`]( https://developer.apple.com/documentation/applicationservices/kaxlayoutitemrole ).
	static var layoutItem: Self { Self(rawValue: kAXLayoutItemRole) }

	/// The constant for
	/// [`kAXLevelIndicatorRole`]( https://developer.apple.com/documentation/applicationservices/kaxlevelindicatorrole ).
	static var levelIndicator: Self { Self(rawValue: kAXLevelIndicatorRole) }

	/// The constant for
	/// [`kAXListRole`]( https://developer.apple.com/documentation/applicationservices/kaxlistrole ).
	static var list: Self { Self(rawValue: kAXListRole) }

	// MARK: M

	/// The constant for
	/// [`kAXMatteRole`]( https://developer.apple.com/documentation/applicationservices/kaxmatterole ).
	static var matte: Self { Self(rawValue: kAXMatteRole) }

	/// The constant for
	/// [`kAXMenuRole`]( https://developer.apple.com/documentation/applicationservices/kaxmenurole ).
	static var menu: Self { Self(rawValue: kAXMenuRole) }

	/// The constant for
	/// [`kAXMenuBarRole`]( https://developer.apple.com/documentation/applicationservices/kaxmenubarrole ).
	static var menuBar: Self { Self(rawValue: kAXMenuBarRole) }

	/// The constant for
	/// [`kAXMenuBarItemRole`]( https://developer.apple.com/documentation/applicationservices/kaxmenubaritemrole ).
	static var menuBarItem: Self { Self(rawValue: kAXMenuBarItemRole) }

	/// The constant for
	/// [`kAXMenuButtonRole`]( https://developer.apple.com/documentation/applicationservices/kaxmenubuttonrole ).
	static var menuButton: Self { Self(rawValue: kAXMenuButtonRole) }

	/// The constant for
	/// [`kAXMenuItemRole`]( https://developer.apple.com/documentation/applicationservices/kaxmenuitemrole ).
	static var menuItem: Self { Self(rawValue: kAXMenuItemRole) }

	// MARK: O

	/// The constant for
	/// [`kAXOutlineRole`]( https://developer.apple.com/documentation/applicationservices/kaxoutlinerole ).
	static var outline: Self { Self(rawValue: kAXOutlineRole) }

	// MARK: P

	/// The constant for
	/// [`kAXPopoverRole`]( https://developer.apple.com/documentation/applicationservices/kaxpopoverrole ).
	static var popover: Self { Self(rawValue: kAXPopoverRole) }

	/// The constant for
	/// [`kAXPopUpButtonRole`]( https://developer.apple.com/documentation/applicationservices/kaxpopupbuttonrole ).
	static var popUpButton: Self { Self(rawValue: kAXPopUpButtonRole) }

	/// The constant for
	/// [`kAXProgressIndicatorRole`]( https://developer.apple.com/documentation/applicationservices/kaxprogressindicatorrole ).
	static var progressIndicator: Self { Self(rawValue: kAXProgressIndicatorRole) }

	// MARK: R

	/// The constant for
	/// [`kAXRadioButtonRole`]( https://developer.apple.com/documentation/applicationservices/kaxradiobuttonrole ).
	static var radioButton: Self { Self(rawValue: kAXRadioButtonRole) }

	/// The constant for
	/// [`kAXRadioGroupRole`]( https://developer.apple.com/documentation/applicationservices/kaxradiogrouprole ).
	static var radioGroup: Self { Self(rawValue: kAXRadioGroupRole) }

	/// The constant for
	/// [`kAXRelevanceIndicatorRole`]( https://developer.apple.com/documentation/applicationservices/kaxrelevanceindicatorrole ).
	static var relevanceIndicator: Self { Self(rawValue: kAXRelevanceIndicatorRole) }

	/// The constant for
	/// [`kAXRowRole`]( https://developer.apple.com/documentation/applicationservices/kaxrowrole ).
	static var row: Self { Self(rawValue: kAXRowRole) }

	/// The constant for
	/// [`kAXRulerRole`]( https://developer.apple.com/documentation/applicationservices/kaxrulerrole ).
	static var ruler: Self { Self(rawValue: kAXRulerRole) }

	/// The constant for
	/// [`kAXRulerMarkerRole`]( https://developer.apple.com/documentation/applicationservices/kaxrulermarkerrole ).
	static var rulerMarker: Self { Self(rawValue: kAXRulerMarkerRole) }

	// MARK: S

	/// The constant for
	/// [`kAXScrollAreaRole`]( https://developer.apple.com/documentation/applicationservices/kaxscrollarearole ).
	static var scrollArea: Self { Self(rawValue: kAXScrollAreaRole) }

	/// The constant for
	/// [`kAXScrollBarRole`]( https://developer.apple.com/documentation/applicationservices/kaxscrollbarrole ).
	static var scrollBar: Self { Self(rawValue: kAXScrollBarRole) }

	/// The constant for
	/// [`kAXSheetRole`]( https://developer.apple.com/documentation/applicationservices/kaxsheetrole ).
	static var sheet: Self { Self(rawValue: kAXSheetRole) }

	/// The constant for
	/// [`kAXSliderRole`]( https://developer.apple.com/documentation/applicationservices/kaxsliderrole ).
	static var slider: Self { Self(rawValue: kAXSliderRole) }

	/// The constant for
	/// [`kAXSplitGroupRole`]( https://developer.apple.com/documentation/applicationservices/kaxsplitgrouprole ).
	static var splitGroup: Self { Self(rawValue: kAXSplitGroupRole) }

	/// The constant for
	/// [`kAXSplitterRole`]( https://developer.apple.com/documentation/applicationservices/kaxsplitterrole ).
	static var splitter: Self { Self(rawValue: kAXSplitterRole) }

	/// The constant for
	/// [`kAXStaticTextRole`]( https://developer.apple.com/documentation/applicationservices/kaxstatictextrole ).
	static var staticText: Self { Self(rawValue: kAXStaticTextRole) }

	/// The constant for
	/// [`kAXSystemWideRole`]( https://developer.apple.com/documentation/applicationservices/kaxsystemwiderole ).
	static var systemWide: Self { Self(rawValue: kAXSystemWideRole) }

	// MARK: T

	/// The constant for
	/// [`kAXTabGroupRole`]( https://developer.apple.com/documentation/applicationservices/kaxtabgrouprole ).
	static var tabGroup: Self { Self(rawValue: kAXTabGroupRole) }

	/// The constant for
	/// [`kAXTableRole`]( https://developer.apple.com/documentation/applicationservices/kaxtablerole ).
	static var table: Self { Self(rawValue: kAXTableRole) }

	/// The constant for
	/// [`kAXTextAreaRole`]( https://developer.apple.com/documentation/applicationservices/kaxtextarearole ).
	static var textArea: Self { Self(rawValue: kAXTextAreaRole) }

	/// The constant for
	/// [`kAXTextFieldRole`]( https://developer.apple.com/documentation/applicationservices/kaxtextfieldrole ).
	static var textField: Self { Self(rawValue: kAXTextFieldRole) }

	/// The constant for
	/// [`kAXTimeFieldRole`]( https://developer.apple.com/documentation/applicationservices/kaxtimefieldrole ).
	static var timeField: Self { Self(rawValue: kAXTimeFieldRole) }

	/// The constant for
	/// [`kAXToolbarRole`]( https://developer.apple.com/documentation/applicationservices/kaxtoolbarrole ).
	static var toolbar: Self { Self(rawValue: kAXToolbarRole) }

	// MARK: U

	/// The constant for
	/// [`kAXUnknownRole`]( https://developer.apple.com/documentation/applicationservices/kaxunknownrole ).
	static var unknown: Self { Self(rawValue: kAXUnknownRole) }

	// MARK: V

	/// The constant for
	/// [`kAXValueIndicatorRole`]( https://developer.apple.com/documentation/applicationservices/kaxvalueindicatorrole ).
	static var valueIndicator: Self { Self(rawValue: kAXValueIndicatorRole) }

	// MARK: W

	/// The constant for
	/// [`kAXWindowRole`]( https://developer.apple.com/documentation/applicationservices/kaxwindowrole ).
	static var window: Self { Self(rawValue: kAXWindowRole) }
}
