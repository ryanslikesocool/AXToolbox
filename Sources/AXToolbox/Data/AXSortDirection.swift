import let ApplicationServices.HIServices.kAXAscendingSortDirectionValue
import let ApplicationServices.HIServices.kAXDescendingSortDirectionValue
import let ApplicationServices.HIServices.kAXUnknownSortDirectionValue

// TODO: Should this be `@frozen`?
public enum AXSortDirection {
	/// The constant for
	/// [`kAXAscendingSortDirectionValue`](https://developer.apple.com/documentation/applicationservices/kaxascendingsortdirectionvalue)\.
	case ascending

	/// The constant for
	/// [`kAXDescendingSortDirectionValue`](https://developer.apple.com/documentation/applicationservices/kaxdescendingsortdirectionvalue)\.
	case descending

	/// The constant for
	/// [`kAXUnknownSortDirectionValue`](https://developer.apple.com/documentation/applicationservices/kaxunknownsortdirectionvalue)\.
	case unknown
}

// MARK: - RawRepresentable

// NOTE: We can't assign constants to each `case` directly,
// so we have to manually implement `RawRepresentable`.
extension AXSortDirection: RawRepresentable {
	public typealias RawValue = String

	public init?(rawValue: RawValue) {
		// TODO: Optimize
		// - Is the Swift compiler already smart enough to optimize this away?
		// - Should we store this as a `static let initializerLookupTable: [String : Self]`?
		// - Should `switch` cases be `case Self.<case>.rawValue:` for safety?

		switch rawValue {
			case kAXAscendingSortDirectionValue: self = .ascending
			case kAXDescendingSortDirectionValue: self = .descending
			case kAXUnknownSortDirectionValue: self = .unknown
			default: return nil // TODO: Should the `default` case be `.unknown`?
		}
	}

	public var rawValue: RawValue {
		// TODO: Optimize
		// - Is the Swift compiler already smart enough to optimize this away?
		// - Should we store this as a `static let rawValueLookupTable: [Self : String]`?

		switch self {
			case .ascending: kAXAscendingSortDirectionValue
			case .descending: kAXDescendingSortDirectionValue
			case .unknown: kAXUnknownSortDirectionValue
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

extension AXSortDirection: Codable {
	public init(from decoder: any Decoder) throws {
		let container = try decoder.singleValueContainer()
		self = try Self(rawValue: container.decode(RawValue.self)) ?? .unknown
	}

	public func encode(to encoder: any Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(rawValue)
	}
}
