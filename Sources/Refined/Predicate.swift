import Swift

public protocol Predicate {
    associatedtype Value
    static func checkValue(_ value: Value) throws
    static func isValid(value: Value) -> Bool
}

extension Predicate {
    public static func checkValue(_ value: Value) throws {
        if !isValid(value: value) {
            throw Error<Self>.invalidValue(value)
        }
    }
}
