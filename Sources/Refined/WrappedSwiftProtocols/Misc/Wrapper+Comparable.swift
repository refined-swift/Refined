import Wrapper

extension Wrapper where WrappedValue: Comparable {
    public static func < (lhs: WrappedValue, rhs: Self) -> Bool {
        return lhs < rhs.wrapped
    }

    public static func < (lhs: Self, rhs: WrappedValue) -> Bool {
        return lhs.wrapped < rhs
    }

    public static func <= (lhs: WrappedValue, rhs: Self) -> Bool {
        return lhs <= rhs.wrapped
    }

    public static func <= (lhs: Self, rhs: WrappedValue) -> Bool {
        return lhs.wrapped <= rhs
    }

    public static func >= (lhs: WrappedValue, rhs: Self) -> Bool {
        return lhs >= rhs.wrapped
    }

    public static func >= (lhs: Self, rhs: WrappedValue) -> Bool {
        return lhs.wrapped >= rhs
    }

    public static func > (lhs: WrappedValue, rhs: Self) -> Bool {
        return lhs > rhs.wrapped
    }

    public static func > (lhs: Self, rhs: WrappedValue) -> Bool {
        return lhs.wrapped > rhs
    }
}

// TODO: add missing operators...
