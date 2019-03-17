import Swift

public enum Error<P: Predicate>: Swift.Error {
    case invalidValue(P.Value)

    public static var predicate: P.Type { return P.self }

    public var value: P.Value {
        switch self {
        case .invalidValue(let value): return value
        }
    }
}
