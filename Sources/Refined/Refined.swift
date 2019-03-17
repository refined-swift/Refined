import Swift

public struct Refined<Constraint: Predicate> {
    public private(set) var wrapped: Constraint.Value

    public init(wrapping value: Constraint.Value) throws {
        try Constraint.checkValue(value)
        self.wrapped = value
    }
}
