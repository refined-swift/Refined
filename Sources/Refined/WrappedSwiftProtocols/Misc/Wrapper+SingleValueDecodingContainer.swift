import Wrapper

extension Wrapper where WrappedValue: SingleValueDecodingContainer {
    public var codingPath: [CodingKey] {
        return wrapped.codingPath
    }

    public func decodeNil() -> Bool {
        return wrapped.decodeNil()
    }

    public func decode(_ type: Bool.Type) throws -> Bool {
        return try wrapped.decode(type)
    }

    public func decode(_ type: String.Type) throws -> String {
        return try wrapped.decode(type)
    }

    public func decode(_ type: Double.Type) throws -> Double {
        return try wrapped.decode(type)
    }

    public func decode(_ type: Float.Type) throws -> Float {
        return try wrapped.decode(type)
    }

    public func decode(_ type: Int.Type) throws -> Int {
        return try wrapped.decode(type)
    }

    public func decode(_ type: Int8.Type) throws -> Int8 {
        return try wrapped.decode(type)
    }

    public func decode(_ type: Int16.Type) throws -> Int16 {
        return try wrapped.decode(type)
    }

    public func decode(_ type: Int32.Type) throws -> Int32 {
        return try wrapped.decode(type)
    }

    public func decode(_ type: Int64.Type) throws -> Int64 {
        return try wrapped.decode(type)
    }

    public func decode(_ type: UInt.Type) throws -> UInt {
        return try wrapped.decode(type)
    }

    public func decode(_ type: UInt8.Type) throws -> UInt8 {
        return try wrapped.decode(type)
    }

    public func decode(_ type: UInt16.Type) throws -> UInt16 {
        return try wrapped.decode(type)
    }

    public func decode(_ type: UInt32.Type) throws -> UInt32 {
        return try wrapped.decode(type)
    }

    public func decode(_ type: UInt64.Type) throws -> UInt64 {
        return try wrapped.decode(type)
    }

    public func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        return try wrapped.decode(type)
    }
}
