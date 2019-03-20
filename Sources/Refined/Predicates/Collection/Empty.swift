import Features

/// Check if value is empty.
public struct Empty<V: MaybeEmpty>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isEmpty
    }
}

public typealias EmptyPredicate = Empty

extension MaybeEmpty {
    public typealias Empty = Refined<EmptyPredicate<Self>>
    public typealias NonEmpty = Refined<Not<EmptyPredicate<Self>>>
}
