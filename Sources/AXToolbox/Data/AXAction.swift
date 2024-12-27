import ApplicationServices.HIServices.AXActionConstants

/// Constants for actions defined in
/// [AXActionConstants.h](https://developer.apple.com/documentation/applicationservices/axactionconstants_h)\.
@frozen
public struct AXAction {
	public typealias RawValue = String

	public let rawValue: RawValue

	public init(rawValue: RawValue) {
		self.rawValue = rawValue
	}
}

// MARK: - Sendable

extension AXAction: Sendable { }

// MARK: - Equatable

extension AXAction: Equatable { }

// MARK: - Hashable

extension AXAction: Hashable { }

// MARK: - Codable

extension AXAction: Codable {
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

extension AXAction: CustomStringConvertible {
	public var description: String {
		"\(Self.self)(\(rawValue))"
	}
}

// MARK: - Constants

public extension AXAction {
	
	// MARK: C

	/// The constant for
	/// [`kAXCancelAction`](https://developer.apple.com/documentation/applicationservices/kaxcancelaction)\.
	static var cancel: Self { Self(rawValue: kAXCancelAction) }

	/// The constant for
	/// [`kAXConfirmAction`](https://developer.apple.com/documentation/applicationservices/kaxconfirmaction)\.
	static var confirm: Self { Self(rawValue: kAXConfirmAction) }

	// MARK: D

	/// The constant for
	/// [`kAXDecrementAction`](https://developer.apple.com/documentation/applicationservices/kaxdecrementaction)\.
	static var decrement: Self { Self(rawValue: kAXDecrementAction) }

	// MARK: I

	/// The constant for
	/// [`kAXIncrementAction`](https://developer.apple.com/documentation/applicationservices/kaxincrementaction)\.
	static var increment: Self { Self(rawValue: kAXIncrementAction) }

	// MARK: P

	/// The constant for
	/// [`kAXPickAction`](https://developer.apple.com/documentation/applicationservices/kaxpickaction)\.
	static var pick: Self { Self(rawValue: kAXPickAction) }

	/// The constant for
	/// [`kAXPressAction`](https://developer.apple.com/documentation/applicationservices/kaxpressaction)\.
	static var press: Self { Self(rawValue: kAXPressAction) }

	// MARK: R

	/// The constant for
	/// [`kAXRaiseAction`](https://developer.apple.com/documentation/applicationservices/kaxraiseaction)\.
	static var raise: Self { Self(rawValue: kAXRaiseAction) }

	// MARK: S

	/// The constant for
	/// [`kAXShowAlternateUIAction`](https://developer.apple.com/documentation/applicationservices/kaxshowalternateuiaction)\.
	static var showAlternateUI: Self { Self(rawValue: kAXShowAlternateUIAction) }

	/// The constant for
	/// [`kAXShowDefaultUIAction`](https://developer.apple.com/documentation/applicationservices/kaxshowdefaultuiaction)\.
	static var showDefaultUI: Self { Self(rawValue: kAXShowDefaultUIAction) }

	/// The constant for
	/// [`kAXShowMenuAction`](https://developer.apple.com/documentation/applicationservices/kaxshowmenuaction)\.
	static var showMenu: Self { Self(rawValue: kAXShowMenuAction) }
}
