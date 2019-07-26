import Swift

extension Refined: Predicate {
    public typealias Value = Constraint.Value

    public static func isValid(value: Constraint.Value) -> Bool {
        return Constraint.isValid(value: value)
    }
}
