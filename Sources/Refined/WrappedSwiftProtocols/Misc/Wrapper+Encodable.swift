import Wrapper

extension Wrapper where WrappedValue: Encodable {
    public func encode(to encoder: Encoder) throws {
        try wrapped.encode(to: encoder)
    }
}
