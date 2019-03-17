import Refined

struct IsTruePredicate: Predicate {
    static func isValid(value: Bool) -> Bool {
        return value
    }
}
