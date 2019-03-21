import Wrapper

extension Wrapper where WrappedValue: RangeExpression {
    public func relative<C>(to collection: C) -> Range<WrappedValue.Bound> where C : Collection, WrappedValue.Bound == C.Index {
        return wrapped.relative(to: collection)
    }

    public func contains(_ element: WrappedValue.Bound) -> Bool {
        return wrapped.contains(element)
    }
}
