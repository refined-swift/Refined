import Wrapper

extension Wrapper where WrappedValue: Decodable {
    public init(from decoder: Decoder) throws {
        let value = try WrappedValue(from: decoder)
        try self.init(wrapping: value)
    }
}
