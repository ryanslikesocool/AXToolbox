import AppKit

public extension NSAccessibility.SortDirectionValue {
	/// An appropriate
	/// [`ComparisonResult`]( https://developer.apple.com/documentation/foundation/comparisonresult )
	/// interpretation for this value.
	var comparisonResult: ComparisonResult? {
		switch self {
			case .ascending: .orderedAscending
			case .descending: .orderedDescending
			case .unknown: nil
			default: nil
		}
	}

	/// An appropriate
	/// [`SortOrder`]( https://developer.apple.com/documentation/foundation/sortorder )
	/// interpretation for this value.
	@available(macOS 12, *)
	var sortOrder: SortOrder? {
		switch self {
			case .ascending: .forward
			case .descending: .reverse
			case .unknown: nil
			default: nil
		}
	}
}