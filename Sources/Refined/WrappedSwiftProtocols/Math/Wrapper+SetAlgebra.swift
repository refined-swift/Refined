import Wrapper

extension Wrapper where WrappedValue: SetAlgebra {
    public func contains(_ member: WrappedValue.Element) -> Bool {
        return wrapped.contains(member)
    }

    public func union(_ other: Self) -> WrappedValue {
        return wrapped.union(other.wrapped)
    }

    public func union(_ other: WrappedValue) -> WrappedValue {
        return wrapped.union(other)
    }

    public func intersection(_ other: Self) -> WrappedValue {
        return wrapped.intersection(other.wrapped)
    }

    public func intersection(_ other: WrappedValue) -> WrappedValue {
        return wrapped.intersection(other)
    }

    public func symmetricDifference(_ other: Self) -> WrappedValue {
        return wrapped.symmetricDifference(other.wrapped)
    }

    public func symmetricDifference(_ other: WrappedValue) -> WrappedValue {
        return wrapped.symmetricDifference(other)
    }

    public func subtracting(_ other: Self) -> WrappedValue {
        return wrapped.subtracting(other.wrapped)
    }

    public func subtracting(_ other: WrappedValue) -> WrappedValue {
        return wrapped.subtracting(other)
    }

    public func isSubset(of other: Self) -> Bool {
        return wrapped.isSubset(of: other.wrapped)
    }

    public func isSubset(of other: WrappedValue) -> Bool {
        return wrapped.isSubset(of: other)
    }

    public func isDisjoint(with other: Self) -> Bool {
        return wrapped.isDisjoint(with: other.wrapped)
    }

    public func isDisjoint(with other: WrappedValue) -> Bool {
        return wrapped.isDisjoint(with: other)
    }

    public func isSuperset(of other: Self) -> Bool {
        return wrapped.isSuperset(of: other.wrapped)
    }

    public func isSuperset(of other: WrappedValue) -> Bool {
        return wrapped.isSuperset(of: other)
    }

    public var isEmpty: Bool {
        return wrapped.isEmpty
    }

    public func isStrictSuperset(of other: Self) -> Bool {
        return wrapped.isStrictSuperset(of: other.wrapped)
    }

    public func isStrictSuperset(of other: WrappedValue) -> Bool {
        return wrapped.isStrictSuperset(of: other)
    }

    public func isStrictSubset(of other: Self) -> Bool {
        return wrapped.isStrictSubset(of: other.wrapped)
    }

    public func isStrictSubset(of other: WrappedValue) -> Bool {
        return wrapped.isStrictSubset(of: other)
    }
}
