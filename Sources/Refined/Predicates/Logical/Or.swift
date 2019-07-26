import Swift

// Disjunction of predicates P and Q.
public struct Or<P: Predicate, Q: Predicate>: Predicate where P.Value == Q.Value {
    @available(*, unavailable)
    private init() {}
    
    public static func isValid(value: P.Value) -> Bool {
        return P.isValid(value: value) || Q.isValid(value: value)
    }
}

public typealias _OrPredicate = Or

extension Refined {
    public struct Or: Predicate {
        @available(*, unavailable)
        private init() {}
        
        public static func isValid(value: Refined.Value) -> Bool {
            return Refined.isValid(value: value)
        }
    }
    
    public typealias _Or<T: Predicate> = Refined<_OrPredicate<Constraint, T>> where T.Value == Constraint.Value
}
