import Swift

/// Refined's internal typealias of And.
public typealias _AndPredicate = And

/// And DSL extension.
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
