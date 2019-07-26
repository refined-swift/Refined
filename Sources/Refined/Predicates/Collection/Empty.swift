import Features

/// Check if value is empty.
public struct Empty<V: MaybeEmpty>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isEmpty
    }
}

public typealias _EmptyPredicate = Empty

extension MaybeEmpty {
    public typealias Empty = Refined<_EmptyPredicate<Self>>
    public typealias NonEmpty = Empty.Not
}
