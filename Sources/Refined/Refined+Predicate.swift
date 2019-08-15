import Swift

/// `Refined` conforms `Predicate`, which makes it possible to implement the DSL extensions that combine predicates.
extension Refined: Predicate {
    public typealias Value = Constraint.Value

    public static func isValid(value: Constraint.Value) -> Bool {
        return Constraint.isValid(value: value)
    }
}
