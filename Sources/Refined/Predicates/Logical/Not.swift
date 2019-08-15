import Swift

/// Negates predicate `P`.
public struct Not<P: Predicate>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: P.Value) -> Bool {
        return !P.isValid(value: value)
    }
}
