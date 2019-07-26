import Features

/// Check if value is a whitespace.
public struct Whitespace<V: MaybeWhitespace>: Predicate {
    @available(*, unavailable)
    private init() {}
    
    public static func isValid(value: V) -> Bool {
        return value.isWhitespace
    }
}
