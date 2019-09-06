import Refined

struct IsTruePredicate: Predicate {
    static func isValid(value: Bool) -> Bool {
        return value
    }
}

struct One: PredicateInt { static let value = 1 }
struct TwoDotFive: PredicateDouble { static let value = 2.5 }
struct Three: PredicateInt { static let value = 3 }
struct Four: PredicateInt { static let value = 4 }

struct Foo: Decodable {
    let foo: String.NonEmpty.and.Count<Three>
}
