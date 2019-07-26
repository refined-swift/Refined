import Features

/// Check if value is uppercased.
public struct Lowercase<V: MaybeLowercase>: Predicate {
    @available(*, unavailable)
    private init() {}
    
    public static func isValid(value: V) -> Bool {
        return value.isLowercase
    }
}
