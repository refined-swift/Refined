import Swift

/// Enumerated predicate errors.
public enum Error<P: Predicate>: Swift.Error {
    /// Representation of a predicate validation error.
    case invalidValue(P.Value)

    /// Returns the checking predicate.
    public static var predicate: P.Type { return P.self }

    /// Returns the invalid value.
    public var value: P.Value {
        switch self {
        case .invalidValue(let value): return value
        }
    }
}
