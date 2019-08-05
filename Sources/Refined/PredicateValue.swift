import Swift

/// Predicate that represents a concrete `Equatable` value.
public protocol PredicateValue: Predicate where Value: Equatable {
    associatedtype Value
    static var value: Value { get }
}

extension PredicateValue {
    public static func isValid(value: Value) -> Bool {
        return value == self.value
    }
}

