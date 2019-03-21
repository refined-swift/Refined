import Wrapper

extension Wrapper where WrappedValue: Sequence {
    public func makeIterator() -> WrappedValue.Iterator {
        return wrapped.makeIterator()
    }

    public func dropFirst(_ k: Int) -> WrappedValue.SubSequence {
        return wrapped.dropFirst(k)
    }

    public func dropLast(_ k: Int) -> WrappedValue.SubSequence {
        return wrapped.dropLast(k)
    }

    public func drop(while predicate: (WrappedValue.Element) throws -> Bool) rethrows -> WrappedValue.SubSequence {
        return try wrapped.drop(while: predicate)
    }

    public func prefix(_ maxLength: Int) -> WrappedValue.SubSequence {
        return wrapped.prefix(maxLength)
    }

    public func prefix(while predicate: (WrappedValue.Element) throws -> Bool) rethrows -> WrappedValue.SubSequence {
        return try wrapped.prefix(while: predicate)
    }

    public func suffix(_ maxLength: Int) -> WrappedValue.SubSequence {
        return wrapped.suffix(maxLength)
    }

    public func split(maxSplits: Int, omittingEmptySubsequences: Bool, whereSeparator isSeparator: (WrappedValue.Element) throws -> Bool) rethrows -> [WrappedValue.SubSequence] {
        return try wrapped.split(maxSplits: maxSplits, omittingEmptySubsequences: omittingEmptySubsequences, whereSeparator: isSeparator)
    }
}
