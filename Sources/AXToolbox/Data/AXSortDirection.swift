import let ApplicationServices.HIServices.kAXAscendingSortDirectionValue
import let ApplicationServices.HIServices.kAXDescendingSortDirectionValue
import let ApplicationServices.HIServices.kAXUnknownSortDirectionValue
import Foundation

// TODO: Should this be `@frozen`?

/// Constants describing the sort direction of an accessibility object.
public enum AXSortDirection {
	/// The constant for
	/// [`kAXAscendingSortDirectionValue`]( https://developer.apple.com/documentation/applicationservices/kaxascendingsortdirectionvalue ).
	case ascending

	/// The constant for
	/// [`kAXDescendingSortDirectionValue`]( https://developer.apple.com/documentation/applicationservices/kaxdescendingsortdirectionvalue ).
	case descending

	/// The constant for
	/// [`kAXUnknownSortDirectionValue`]( https://developer.apple.com/documentation/applicationservices/kaxunknownsortdirectionvalue ).
	case unknown
}

// MARK: - RawRepresentable

// NOTE: We can't assign constants to each `case` directly,
// so we have to manually implement `RawRepresentable`.
extension AXSortDirection: RawRepresentable {
	public typealias RawValue = String

	public init(rawValue: RawValue) {
		// TODO: Optimize
		// - Is the Swift compiler already smart enough to optimize this away?
		// - Should we store this as a `static let initializerLookupTable: [RawValue : Self]`?
		// - Should `switch` cases be `case Self.<case>.rawValue:` for safety?
		// - Should we implement this using `Self.allCases`?
		//		```swift
		//		guard let result = Self.allCases.first(where: { (element: Self) -> Bool in
		//			element.rawValue == rawValue
		//		}) else {
		//			return nil
		//		}
		//		self = result
		//		```

		self = switch rawValue {
			case kAXAscendingSortDirectionValue: Self.ascending
			case kAXDescendingSortDirectionValue: Self.descending
			case kAXUnknownSortDirectionValue: Self.unknown
			default: .unknown
		}
	}

	public var rawValue: RawValue {
		// TODO: Optimize
		// - Is the Swift compiler already smart enough to optimize this away?
		// - Should we store this as a `static let rawValueLookupTable: [Self : RawValue]`?

		switch self {
			case Self.ascending: kAXAscendingSortDirectionValue
			case Self.descending: kAXDescendingSortDirectionValue
			case Self.unknown: kAXUnknownSortDirectionValue
		}
	}
}

// MARK: - Sendable

extension AXSortDirection: Sendable { }

// MARK: - Equatable

extension AXSortDirection: Equatable { }

// MARK: - Hashable

extension AXSortDirection: Hashable { }

// MARK: - Codable

// VALIDATE: Do we need to manually implement `Codable`?
extension AXSortDirection: Codable {
	public init(from decoder: any Decoder) throws {
		let container = try decoder.singleValueContainer()
		self = try Self(rawValue: container.decode(RawValue.self))
	}

	public func encode(to encoder: any Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(rawValue)
	}
}

// MARK: - CaseIterable

// extension AXSortDirection: CaseIterable { }

// MARK: - CustomStringConvertible

// extension AXSortDirection: CustomStringConvertible {
//	public var description: String {
//		// TODO: Optimize
//		// - Is the Swift compiler already smart enough to optimize this away?
//		// - Should we store this as a `static let customStringConvertibleLookupTable: [Self : String]`?
//
//		let suffix: String = switch self {
//			case Self.ascending: "ascending"
//			case Self.descending: "descending"
//			case Self.unknown: "unknown"
//		}
//
//		return "\(Self.self).\(suffix)"
//	}
// }

// MARK: -

public extension AXSortDirection {
	/// An appropriate
	/// [`ComparisonResult`]( https://developer.apple.com/documentation/foundation/comparisonresult )
	/// interpretation for this value.
	///
	/// | `AXSortDirection` | `ComparisonResult?` |
	/// | ``ascending`` | [`orderedAscending`]( https://developer.apple.com/documentation/foundation/comparisonresult/orderedascending ) |
	/// | ``descending`` | [`orderedDescending`]( https://developer.apple.com/documentation/foundation/comparisonresult/ordereddescending ) |
	/// | ``unknown`` | `nil` |
	var comparisonResult: ComparisonResult? {
		// TODO: Optimize
		// - Is the Swift compiler already smart enough to optimize this away?
		// - Should we store this as a `static let comparisonResultLookupTable: [Self : ComparisonResult]`?

		switch self {
			case Self.ascending: ComparisonResult.orderedAscending
			case Self.descending: ComparisonResult.orderedDescending
			case Self.unknown: nil
		}
	}

	/// An appropriate
	/// [`SortOrder`]( https://developer.apple.com/documentation/foundation/sortorder )
	/// interpretation for this value.
	///
	/// | `AXSortDirection` | `SortOrder?` |
	/// | - | - |
	/// | ``ascending`` | [`forward`]( https://developer.apple.com/documentation/foundation/sortorder/forward ) |
	/// | ``descending`` | [`reverse`]( https://developer.apple.com/documentation/foundation/sortorder/reverse ) |
	/// | ``unknown`` | `nil` |
	@available(iOS 15, macCatalyst 15, macOS 12, tvOS 15, watchOS 8, *)
	var sortOrder: SortOrder? {
		// TODO: Optimize
		// - Is the Swift compiler already smart enough to optimize this away?
		// - Should we store this as a `static let sortOrderLookupTable: [Self : SortOrder]`?

		switch self {
			case Self.ascending: SortOrder.forward
			case Self.descending: SortOrder.reverse
			case Self.unknown: nil
		}
	}
}
