import let ApplicationServices.HIServices.kAXHorizontalOrientationValue
import let ApplicationServices.HIServices.kAXUnknownOrientationValue
import let ApplicationServices.HIServices.kAXVerticalOrientationValue

// TODO: Should this be `@frozen`?
public enum AXOrientation {
	/// The constant for
	/// [`kAXHorizontalOrientationValue`](https://developer.apple.com/documentation/applicationservices/kaxhorizontalorientationvalue)\.
	case horizontal

	/// The constant for
	/// [`kAXVerticalOrientationValue`](https://developer.apple.com/documentation/applicationservices/kaxverticalorientationvalue)\.
	case vertical

	/// The constant for
	/// [`kAXUnknownOrientationValue`](https://developer.apple.com/documentation/applicationservices/kaxunknownorientationvalue)\.
	case unknown
}

// MARK: - RawRepresentable

// NOTE: We can't assign constants to each `case` directly,
// so we have to manually implement `RawRepresentable`.
extension AXOrientation: RawRepresentable {
	public typealias RawValue = String

	public init(rawValue: RawValue) {
		// TODO: Optimize
		// - Is the Swift compiler already smart enough to optimize this away?
		// - Should we store this as a `static let initializerLookupTable: [String : Self]`?
		// - Should `switch` cases be `case Self.<case>.rawValue:` for safety?

		self = switch rawValue {
			case kAXHorizontalOrientationValue: .horizontal
			case kAXVerticalOrientationValue: .vertical
			case kAXUnknownOrientationValue: .unknown
			default: .unknown
		}
	}

	public var rawValue: RawValue {
		// TODO: Optimize
		// - Is the Swift compiler already smart enough to optimize this away?
		// - Should we store this as a `static let rawValueLookupTable: [Self : String]`?

		switch self {
			case .horizontal: kAXHorizontalOrientationValue
			case .vertical: kAXVerticalOrientationValue
			case .unknown: kAXUnknownOrientationValue
		}
	}
}

// MARK: - Sendable

extension AXOrientation: Sendable { }

// MARK: - Equatable

extension AXOrientation: Equatable { }

// MARK: - Hashable

extension AXOrientation: Hashable { }

// MARK: - Codable

extension AXOrientation: Codable {
	public init(from decoder: any Decoder) throws {
		let container = try decoder.singleValueContainer()
		self = try Self(rawValue: container.decode(RawValue.self))
	}

	public func encode(to encoder: any Encoder) throws {
		var container = encoder.singleValueContainer()
		try container.encode(rawValue)
	}
}

// MARK: - CustomStringConvertible

//extension AXOrientation: CustomStringConvertible {
//	public var description: String {
//		// TODO: Optimize
//		// - Is the Swift compiler already smart enough to optimize this away?
//		// - Should we store this as a `static let customStringConvertibleLookupTable: [Self : String]`?
//
//		let suffix: String = switch self {
//			case .horizontal: "horizontal"
//			case .vertical: "vertical"
//			case .unknown: "unknown"
//		}
//
//		return "\(Self.self).\(suffix)"
//	}
//}