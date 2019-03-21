import Wrapper

extension Wrapper where WrappedValue: ExpressibleByIntegerLiteral {
    public init(integerLiteral value: WrappedValue.IntegerLiteralType) {
        let value = WrappedValue.init(integerLiteral: value)
        do {
            try self.init(wrapping: value)
        } catch {
            preconditionFailure("Runtime check failed: \(error)\n\t- method = \(#function)\n\t- value = \(value)")
        }
    }
}
