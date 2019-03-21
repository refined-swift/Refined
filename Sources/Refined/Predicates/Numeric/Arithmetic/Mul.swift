import Swift

public struct Mul<L: PredicateNumeric, R: PredicateNumeric>: PredicateNumeric  where L.Value == R.Value {
    @available(*, unavailable)
    private init() {}

    public static var value: L.Value {
        return L.value * R.value
    }
}
