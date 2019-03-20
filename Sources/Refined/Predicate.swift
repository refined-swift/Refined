import Swift

/// Representation of a refinement constraint.
public protocol Predicate {
    associatedtype Value
    /// Checks the given value.
    static func checkValue(_ value: Value) throws
    /// Validates the given value.
    static func isValid(value: Value) -> Bool
}

extension Predicate {
    public static func checkValue(_ value: Value) throws {
        if !isValid(value: value) {
            throw Error<Self>.invalidValue(value)
        }
    }
}
