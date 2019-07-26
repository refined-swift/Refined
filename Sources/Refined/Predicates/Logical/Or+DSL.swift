import Swift

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
