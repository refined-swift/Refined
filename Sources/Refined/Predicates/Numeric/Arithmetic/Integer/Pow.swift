import Swift

public struct Pow<B: PredicateNumeric, E: PredicateBinaryInteger>: PredicateNumeric {
    @available(*, unavailable)
    private init() {}

    public static var value: B.Value {
        return compute(B.value, toThePowerOf: E.value)
    }

    // https://www.programminglogic.com/fast-exponentiation-algorithms/
    private static func compute(_ a: B.Value, toThePowerOf b: E.Value) -> B.Value {
        var base = a
        var power = b
        var result: B.Value = 1
        while (power != 0){
            if (power%2 == 1){
                result *= base
            }
            power /= 2
            base *= base
        }
        return result
    }
}
