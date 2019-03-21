import Swift

public struct LessThan<D>: Predicate where D: PredicateComparable {
    @available(*, unavailable)
    private init() {}
    
    public static func isValid(value lhs: D.Value) -> Bool {
        return lhs < D.value
    }
}
