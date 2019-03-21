import Swift

public struct Negate<D: PredicateNumeric>: PredicateNumeric {
    @available(*, unavailable)
    private init() {}

    public static var value: D.Value {
        return 0 - D.value
    }
}
