import Wrapper

extension Wrapper where WrappedValue: Hashable {
    public var hashValue: Int {
        return wrapped.hashValue
    }

    public func hash(into hasher: inout Hasher) {
        return wrapped.hash(into: &hasher)
    }
}
