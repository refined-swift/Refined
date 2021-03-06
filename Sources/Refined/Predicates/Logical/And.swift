import Swift

// Conjunction of predicates `P` and `Q`.
public struct And<P: Predicate, Q: Predicate>: Predicate where P.Value == Q.Value {
    @available(*, unavailable)
    private init() {}
    
    public static func isValid(value: P.Value) -> Bool {
        return P.isValid(value: value) && Q.isValid(value: value)
    }
}
