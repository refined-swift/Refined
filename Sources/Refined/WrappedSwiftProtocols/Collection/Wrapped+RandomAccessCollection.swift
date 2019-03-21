import Wrapper

extension Wrapper where WrappedValue: RandomAccessCollection {
    public var indices: WrappedValue.Indices {
            return wrapped.indices
    }
}
