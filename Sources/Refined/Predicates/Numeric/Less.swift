import Swift

public struct Less<D>: Predicate where D: PredicateComparable {
    @available(*, unavailable)
    private init() {}
    
    public static func isValid(value lhs: D.Value) -> Bool {
        return lhs < D.value
    }
}
