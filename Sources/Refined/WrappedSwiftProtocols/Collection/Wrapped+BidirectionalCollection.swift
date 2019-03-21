import Wrapper

extension Wrapper where WrappedValue: BidirectionalCollection {
    public func index(before i: WrappedValue.Index) -> WrappedValue.Index {
        return wrapped.index(before: i)
    }

    public func index(after i: WrappedValue.Index) -> WrappedValue.Index {
        return wrapped.index(after: i)
    }

    public var indices: WrappedValue.Indices {
        return wrapped.indices
    }

    public var startIndex: WrappedValue.Index {
        return wrapped.startIndex
    }

    public var endIndex: WrappedValue.Index {
        return wrapped.endIndex
    }
}
