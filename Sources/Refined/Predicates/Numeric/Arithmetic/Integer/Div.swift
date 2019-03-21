import Swift

public struct Div<A: PredicateBinaryInteger, B: PredicateBinaryInteger>: PredicateBinaryInteger where A.Value  == B.Value {
    @available(*, unavailable)
    private init() {}

    public static var value: A.Value {
        return A.value / B.value
    }
}
