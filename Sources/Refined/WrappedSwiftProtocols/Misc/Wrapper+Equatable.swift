import Wrapper

extension Wrapper where WrappedValue: Equatable {
    public static func == (lhs: WrappedValue, rhs: Self) -> Bool {
        return lhs == rhs.wrapped
    }

    public static func == (lhs: Self, rhs: WrappedValue) -> Bool {
        return lhs.wrapped == rhs
    }
}
