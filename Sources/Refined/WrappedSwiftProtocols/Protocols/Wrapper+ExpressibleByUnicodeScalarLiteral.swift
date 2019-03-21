import Wrapper

extension Wrapper where WrappedValue: ExpressibleByUnicodeScalarLiteral {
    public init(unicodeScalarLiteral value: WrappedValue.UnicodeScalarLiteralType) {
        let value = WrappedValue.init(unicodeScalarLiteral: value)
        do {
            try self.init(wrapping: value)
        } catch {
            preconditionFailure("Runtime check failed: \(error)\n\t- method = \(#function)\n\t- value = \(value)")
        }
    }
}
