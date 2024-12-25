private import ApplicationServices.HIServices.AXAttributeConstants
import class CoreFoundation.CFString

/// A wrapper for attribute names in
/// [AXAttributeConstants.h](https://developer.apple.com/documentation/applicationservices/axattributeconstants_h)\.
@frozen
public struct AXAttributeName: RawRepresentable {
	public typealias RawValue = String

	public let rawValue: RawValue

	public init(rawValue: RawValue) {
		self.rawValue = rawValue
	}
}

// MARK: - Sendable

extension AXAttributeName: Sendable { }

// MARK: - Equatable

extension AXAttributeName: Equatable { }

// MARK: - Hashable

extension AXAttributeName: Hashable { }

// MARK: - Codable

extension AXAttributeName: Codable {
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

extension AXAttributeName: CustomStringConvertible {
	public var description: String {
		"\(Self.self)(\(rawValue))"
	}
}

// MARK: - Constants

public extension AXAttributeName {
	// MARK: A

	/// The constant for [`kAXAllowedValuesAttribute`](https://developer.apple.com/documentation/applicationservices/kaxallowedvaluesattribute)\.
	static var allowedValues: Self { Self(rawValue: kAXAllowedValuesAttribute) }

	/// The constant for [`kAXAMPMFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxampmfieldattribute)\.
	static var amPmField: Self { Self(rawValue: kAXAMPMFieldAttribute) }

	// MARK: C

	/// The constant for [`kAXCancelButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxcancelbuttonattribute)\.
	static var cancelButton: Self { Self(rawValue: kAXCancelButtonAttribute) }

	/// The constant for [`kAXChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxchildrenattribute)\.
	static var children: Self { Self(rawValue: kAXChildrenAttribute) }

	/// The constant for [`kAXCloseButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxclosebuttonattribute)\.
	static var closeButton: Self { Self(rawValue: kAXCloseButtonAttribute) }

	/// The constant for [`kAXColumnTitleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxcolumntitleattribute)\.
	static var columnTitle: Self { Self(rawValue: kAXColumnTitleAttribute) }

	/// The constant for [`kAXContentsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxcontentsattribute)\.
	static var contents: Self { Self(rawValue: kAXContentsAttribute) }

	// MARK: D

	/// The constant for [`kAXDayFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdayfieldattribute)\.
	static var dayField: Self { Self(rawValue: kAXDayFieldAttribute) }

	/// The constant for [`kAXDefaultButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdefaultbuttonattribute)\.
	static var defaultButton: Self { Self(rawValue: kAXDefaultButtonAttribute) }

	/// The constant for [`kAXDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxdescriptionattribute)\.
	static var description: Self { Self(rawValue: kAXDescriptionAttribute) }

	// MARK: E

	/// The constant for [`kAXEnabledAttribute`](https://developer.apple.com/documentation/applicationservices/kaxenabledattribute)\.
	static var enabled: Self { Self(rawValue: kAXEnabledAttribute) }

	// MARK: F

	/// The constant for [`kAXFocusedAttribute`](https://developer.apple.com/documentation/applicationservices/kaxfocusedattribute)\.
	static var focused: Self { Self(rawValue: kAXFocusedAttribute) }

	// MARK: G

	/// The constant for [`kAXGrowAreaAttribute`](https://developer.apple.com/documentation/applicationservices/kaxgrowareaattribute)\.
	static var growArea: Self { Self(rawValue: kAXGrowAreaAttribute) }

	// MARK: H

	/// The constant for [`kAXHeaderAttribute`](https://developer.apple.com/documentation/applicationservices/kaxheaderattribute)\.
	static var header: Self { Self(rawValue: kAXHeaderAttribute) }

	/// The constant for [`kAXHelpAttribute`](https://developer.apple.com/documentation/applicationservices/kaxhelpattribute)\.
	static var help: Self { Self(rawValue: kAXHelpAttribute) }

	/// The constant for [`kAXHourFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxhourfieldattribute)\.
	static var hourField: Self { Self(rawValue: kAXHourFieldAttribute) }

	// MARK: I

	/// The constant for [`kAXIncrementorAttribute`](https://developer.apple.com/documentation/applicationservices/kaxincrementorattribute)\.
	static var incrementor: Self { Self(rawValue: kAXIncrementorAttribute) }

	/// The constant for [`kAXInsertionPointLineNumberAttribute`](https://developer.apple.com/documentation/applicationservices/kaxinsertionpointlinenumberattribute)\.
	static var insertionPointLineNumber: Self { Self(rawValue: kAXInsertionPointLineNumberAttribute) }

	// MARK: M

	/// The constant for [`kAXMainAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmainattribute)\.
	static var main: Self { Self(rawValue: kAXMainAttribute) }

	/// The constant for [`kAXMaxValueAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmaxvalueattribute)\.
	static var maxValue: Self { Self(rawValue: kAXMaxValueAttribute) }

	/// The constant for [`kAXMinimizeButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminimizebuttonattribute)\.
	static var minimizeButton: Self { Self(rawValue: kAXMinimizeButtonAttribute) }

	/// The constant for [`kAXMinimizedAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminimizedattribute)\.
	static var minimized: Self { Self(rawValue: kAXMinimizedAttribute) }

	/// The constant for [`kAXMinuteFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminutefieldattribute)\.
	static var minuteField: Self { Self(rawValue: kAXMinuteFieldAttribute) }

	/// The constant for [`kAXMinValueAttribute`](https://developer.apple.com/documentation/applicationservices/kaxminvalueattribute)\.
	static var minValue: Self { Self(rawValue: kAXMinValueAttribute) }

	/// The constant for [`kAXModalAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmodalattribute)\.
	static var modal: Self { Self(rawValue: kAXModalAttribute) }

	/// The constant for [`kAXMonthFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxmonthfieldattribute)\.
	static var monthField: Self { Self(rawValue: kAXMonthFieldAttribute) }

	// MARK: N

	/// The constant for [`kAXNumberOfCharactersAttribute`](https://developer.apple.com/documentation/applicationservices/kaxnumberofcharactersattribute)\.
	static var numberOfCharacters: Self { Self(rawValue: kAXNumberOfCharactersAttribute) }

	// MARK: O

	/// The constant for [`kAXOrientationAttribute`](https://developer.apple.com/documentation/applicationservices/kaxorientationattribute)\.
	static var orientation: Self { Self(rawValue: kAXOrientationAttribute) }

	// MARK: P

	/// The constant for [`kAXParentAttribute`](https://developer.apple.com/documentation/applicationservices/kaxparentattribute)\.
	static var parent: Self { Self(rawValue: kAXParentAttribute) }

	/// The constant for [`kAXPositionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxpositionattribute)\.
	static var position: Self { Self(rawValue: kAXPositionAttribute) }

	/// The constant for [`kAXProxyAttribute`](https://developer.apple.com/documentation/applicationservices/kaxproxyattribute)\.
	static var proxy: Self { Self(rawValue: kAXProxyAttribute) }

	// MARK: R

	/// The constant for [`kAXRoleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxroleattribute)\.
	static var role: Self { Self(rawValue: kAXRoleAttribute) }

	/// The constant for [`kAXRoleDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxroledescriptionattribute)\.
	static var roleDescription: Self { Self(rawValue: kAXRoleDescriptionAttribute) }

	// MARK: S

	/// The constant for [`kAXSecondFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsecondfieldattribute)\.
	static var secondField: Self { Self(rawValue: kAXSecondFieldAttribute) }

	/// The constant for [`kAXSelectedChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxselectedchildrenattribute)\.
	static var selectedChildren: Self { Self(rawValue: kAXSelectedChildrenAttribute) }

	/// The constant for [`kAXSelectedTextAttribute`](https://developer.apple.com/documentation/applicationservices/kaxselectedtextattribute)\.
	static var selectedText: Self { Self(rawValue: kAXSelectedTextAttribute) }

	/// The constant for [`kAXSelectedTextRangeAttribute`](https://developer.apple.com/documentation/applicationservices/kaxselectedtextrangeattribute)\.
	static var selectedTextRange: Self { Self(rawValue: kAXSelectedTextRangeAttribute) }

	/// The constant for [`kAXSelectedTextRangesAttribute`](https://developer.apple.com/documentation/applicationservices/kaxselectedtextrangesattribute)\.
	static var selectedTextRanges: Self { Self(rawValue: kAXSelectedTextRangesAttribute) }

	/// The constant for [`kAXSharedCharacterRangeAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsharedcharacterrangeattribute)\.
	static var sharedCharacterRange: Self { Self(rawValue: kAXSharedCharacterRangeAttribute) }

	/// The constant for [`kAXSharedTextUIElementsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsharedtextuielementsattribute)\.
	static var sharedTextUIElements: Self { Self(rawValue: kAXSharedTextUIElementsAttribute) }

	/// The constant for [`kAXSizeAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsizeattribute)\.
	static var size: Self { Self(rawValue: kAXSizeAttribute) }

	/// The constant for [`kAXSubroleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxsubroleattribute)\.
	static var subrole: Self { Self(rawValue: kAXSubroleAttribute) }

	// MARK: T

	/// The constant for [`kAXTitleAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtitleattribute)\.
	static var title: Self { Self(rawValue: kAXTitleAttribute) }

	/// The constant for [`kAXToolbarButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtoolbarbuttonattribute)\.
	static var toolbarButton: Self { Self(rawValue: kAXToolbarButtonAttribute) }

	/// The constant for [`kAXTopLevelUIElementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxtopleveluielementattribute)\.
	static var topLevelUIElement: Self { Self(rawValue: kAXTopLevelUIElementAttribute) }

	// MARK: U

	/// The constant for [`kAXURLAttribute`](https://developer.apple.com/documentation/applicationservices/kaxurlattribute)\.
	static var url: Self { Self(rawValue: kAXURLAttribute) }

	// MARK: V

	/// The constant for [`kAXValueAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvalueattribute)\.
	static var value: Self { Self(rawValue: kAXValueAttribute) }

	/// The constant for [`kAXValueDescriptionAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvaluedescriptionattribute)\.
	static var valueDescription: Self { Self(rawValue: kAXValueDescriptionAttribute) }

	/// The constant for [`kAXValueIncrementAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvalueincrementattribute)\.
	static var valueIncrement: Self { Self(rawValue: kAXValueIncrementAttribute) }

	/// The constant for [`kAXVisibleCharacterRangeAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvisiblecharacterrangeattribute)\.
	static var visibleCharacterRange: Self { Self(rawValue: kAXVisibleCharacterRangeAttribute) }

	/// The constant for [`kAXVisibleChildrenAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvisiblechildrenattribute)\.
	static var visibleChildren: Self { Self(rawValue: kAXVisibleChildrenAttribute) }

	/// The constant for [`kAXVisibleColumnsAttribute`](https://developer.apple.com/documentation/applicationservices/kaxvisiblecolumnsattribute)\.
	static var visibleColumns: Self { Self(rawValue: kAXVisibleColumnsAttribute) }

	// MARK: W

	/// The constant for [`kAXWindowAttribute`](https://developer.apple.com/documentation/applicationservices/kaxwindowattribute)\.
	static var window: Self { Self(rawValue: kAXWindowAttribute) }

	// MARK: Y

	/// The constant for [`kAXYearFieldAttribute`](https://developer.apple.com/documentation/applicationservices/kaxyearfieldattribute)\.
	static var yearField: Self { Self(rawValue: kAXYearFieldAttribute) }

	// MARK: Z

	/// The constant for [`kAXZoomButtonAttribute`](https://developer.apple.com/documentation/applicationservices/kaxzoombuttonattribute)\.
	static var zoomButton: Self { Self(rawValue: kAXZoomButtonAttribute) }
}

// MARK: - Convenience

public extension AXAttributeName {
	init(rawValue: CFString) {
		self.init(rawValue: rawValue as String)
	}
}
