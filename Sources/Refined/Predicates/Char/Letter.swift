import Features

/// Check if value is a letter.
public struct Letter<V: MaybeLetter>: Predicate {
    @available(*, unavailable)
    private init() {}
    
    public static func isValid(value: V) -> Bool {
        return value.isLetter
    }
}
