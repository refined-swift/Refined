import Swift

public struct RangeOf<Min: PredicateComparable, Max: PredicateComparable>: Predicate  where Min.Value == Max.Value {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: Min.Value) -> Bool {
        return Min.value <= value && value <= Max.value

    }
}
