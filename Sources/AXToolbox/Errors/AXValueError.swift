import enum ApplicationServices.HIServices.AXValueType

enum AXValueError: Swift.Error {
	case illegalType(Any.Type)
	case invalidDefaultValue(Any.Type)
	case decodingFailed(AXValueType)
}