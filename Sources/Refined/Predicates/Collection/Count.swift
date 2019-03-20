import Features

/// Check if value's count satisfies predicate.
public struct Count<V: Countable, P: Predicate>: Predicate where P.Value == Int {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return P.isValid(value: value.count)
    }
}
