import Swift

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
