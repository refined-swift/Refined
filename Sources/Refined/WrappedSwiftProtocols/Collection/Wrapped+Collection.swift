import Wrapper

extension Wrapper where WrappedValue: Collection {
    public var startIndex: WrappedValue.Index {
        return wrapped.startIndex
    }

    public var endIndex: WrappedValue.Index {
        return wrapped.endIndex
    }

    public subscript(position: WrappedValue.Index) -> WrappedValue.Element {
        return wrapped[position]
    }

    public func index(after i: WrappedValue.Index) -> WrappedValue.Index {
        return wrapped.index(after: i)
    }

    public var indices: WrappedValue.Indices {
        return wrapped.indices
    }

    public func makeIterator() -> WrappedValue.Iterator {
        return wrapped.makeIterator()
    }

    public subscript(bounds: Range<WrappedValue.Index>) -> WrappedValue.SubSequence {
        return wrapped[bounds]
    }
}
