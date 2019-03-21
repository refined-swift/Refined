import Wrapper

extension Wrapper where WrappedValue: ExpressibleByExtendedGraphemeClusterLiteral {
    public init(extendedGraphemeClusterLiteral value: WrappedValue.ExtendedGraphemeClusterLiteralType) {
        let value = WrappedValue.init(extendedGraphemeClusterLiteral: value)
        do {
            try self.init(wrapping: value)
        } catch {
            preconditionFailure("Runtime check failed: \(error)\n\t- method = \(#function)\n\t- value = \(value)")
        }
    }
}
