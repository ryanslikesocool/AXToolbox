enum AXAttributeError: Swift.Error {
	case castFailed(input: Any.Type, output: Any.Type)
	case conversionFailed(input: Any.Type, output: Any.Type)
	case unexpectedNil
}