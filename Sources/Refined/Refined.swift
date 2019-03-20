import Swift

/// Generic refinement type, parameterized with a predicate.
public struct Refined<Constraint: Predicate> {
    /// Wrapped value.
    public let wrapped: Constraint.Value

    /// Wrapper initializer.
    public init(wrapping value: Constraint.Value) throws {
        try Constraint.checkValue(value)
        self.wrapped = value
    }
}
