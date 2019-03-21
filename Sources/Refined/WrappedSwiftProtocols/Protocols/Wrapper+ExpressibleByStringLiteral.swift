import Wrapper

extension Wrapper where WrappedValue: ExpressibleByStringLiteral {
    public init(stringLiteral value: WrappedValue.StringLiteralType) {
        let value = WrappedValue.init(stringLiteral: value)
        do {
            try self.init(wrapping: value)
        } catch {
            preconditionFailure("Runtime check failed: \(error)\n\t- method = \(#function)\n\t- value = \(value)")
        }
    }
}
