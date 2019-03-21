import Wrapper

extension Wrapper where WrappedValue: ExpressibleByFloatLiteral {
    public init(floatLiteral value: WrappedValue.FloatLiteralType) {
        let value = WrappedValue.init(floatLiteral: value)
        do {
            try self.init(wrapping: value)
        } catch {
            preconditionFailure("Runtime check failed: \(error)\n\t- method = \(#function)\n\t- value = \(value)")
        }
    }
}
