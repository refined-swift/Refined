import Wrapper

extension Wrapper where WrappedValue: ExpressibleByBooleanLiteral {
    public init(booleanLiteral value: WrappedValue.BooleanLiteralType) {
        let value = WrappedValue.init(booleanLiteral: value)
        do {
            try self.init(wrapping: value)
        } catch {
            preconditionFailure("Runtime check failed: \(error)\n\t- method = \(#function)\n\t- value = \(value)")
        }
    }
}
