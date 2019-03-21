import Wrapper

extension Wrapper where WrappedValue: ExpressibleByNilLiteral {
    public init(nilLiteral: ()) {
        let value = WrappedValue.init(nilLiteral: ())
        do {
            try self.init(wrapping: value)
        } catch {
            preconditionFailure("Runtime check failed: \(error)\n\t- method = \(#function)\n\t- nilLiteral = \(())")
        }
    }
}
