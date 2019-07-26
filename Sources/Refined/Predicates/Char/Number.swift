import Features

/// Check if value is a Number.
public struct Number<V: MaybeNumber>: Predicate {
    @available(*, unavailable)
    private init() {}
    
    public static func isValid(value: V) -> Bool {
        return value.isNumber
    }
}
