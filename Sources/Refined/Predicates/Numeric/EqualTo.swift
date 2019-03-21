import Swift

public struct EqualTo<D>: Predicate where D: PredicateValue {
    @available(*, unavailable)
    private init() {}
    
    public static func isValid(value lhs: D.Value) -> Bool {
        return lhs == D.value
    }
}
