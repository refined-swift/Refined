import Swift

// Conjunction of predicates P and Q.
public struct And<P: Predicate, Q: Predicate>: Predicate where P.Value == Q.Value {
    @available(*, unavailable)
    private init() {}
    
    public static func isValid(value: P.Value) -> Bool {
        return P.isValid(value: value) && Q.isValid(value: value)
    }
}

public typealias _AndPredicate = And

extension Refined {
    public struct And: Predicate {
        @available(*, unavailable)
        private init() {}
        
        public static func isValid(value: Refined.Value) -> Bool {
            return Refined.isValid(value: value)
        }
    }
    
     public typealias _And<T: Predicate> = Refined<_AndPredicate<Constraint, T>> where T.Value == Constraint.Value
}
