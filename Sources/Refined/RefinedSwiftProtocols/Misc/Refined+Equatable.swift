import Swift

extension Refined: Equatable where Constraint.Value: Equatable {
    public static func == (lhs: Refined<Constraint>, rhs: Refined<Constraint>) -> Bool {
        return lhs.wrapped == rhs.wrapped
    }
}
