import Features

/// Check if value is uppercased.
public struct Uppercase<V: MaybeUppercase>: Predicate {
    @available(*, unavailable)
    private init() {}
    
    public static func isValid(value: V) -> Bool {
        return value.isUppercase
    }
}
