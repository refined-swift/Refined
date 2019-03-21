import Swift

extension Refined: Comparable where Constraint.Value: Comparable {
    public static func < (lhs: Refined<Constraint>, rhs: Refined<Constraint>) -> Bool {
        return lhs.wrapped < rhs.wrapped
    }

    public static func <= (lhs: Refined<Constraint>, rhs: Refined<Constraint>) -> Bool {
        return lhs.wrapped <= rhs.wrapped
    }

    public static func >= (lhs: Refined<Constraint>, rhs: Refined<Constraint>) -> Bool {
        return lhs.wrapped >= rhs.wrapped
    }

    public static func > (lhs: Refined<Constraint>, rhs: Refined<Constraint>) -> Bool {
        return lhs.wrapped > rhs.wrapped
    }
}

// TODO: add missing operators...
