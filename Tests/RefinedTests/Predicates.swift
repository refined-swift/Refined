import Refined

struct IsTruePredicate: Predicate {
    static func isValid(value: Bool) -> Bool {
        return value
    }
}

struct One: PredicateInt { static let value = 1 }
struct Three: PredicateInt { static let value = 3 }
struct Four: PredicateInt { static let value = 4 }
