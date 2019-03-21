import Wrapper

extension Wrapper where WrappedValue: KeyedDecodingContainerProtocol {
    public var codingPath: [CodingKey] {
        return wrapped.codingPath
    }

    public var allKeys: [WrappedValue.Key] {
        return wrapped.allKeys
    }

    public func contains(_ key: WrappedValue.Key) -> Bool {
        return wrapped.contains(key)
    }

    public func decodeNil(forKey key: WrappedValue.Key) throws -> Bool {
        return try wrapped.decodeNil(forKey: key)
    }

    public func decode(_ type: Bool.Type, forKey key: WrappedValue.Key) throws -> Bool {
        return try wrapped.decode(type, forKey: key)
    }

    public func decode(_ type: String.Type, forKey key: WrappedValue.Key) throws -> String {
        return try wrapped.decode(type, forKey: key)
    }

    public func decode(_ type: Double.Type, forKey key: WrappedValue.Key) throws -> Double {
        return try wrapped.decode(type, forKey: key)
    }

    public func decode(_ type: Float.Type, forKey key: WrappedValue.Key) throws -> Float {
        return try wrapped.decode(type, forKey: key)
    }

    public func decode(_ type: Int.Type, forKey key: WrappedValue.Key) throws -> Int {
        return try wrapped.decode(type, forKey: key)
    }

    public func decode(_ type: Int8.Type, forKey key: WrappedValue.Key) throws -> Int8 {
        return try wrapped.decode(type, forKey: key)
    }

    public func decode(_ type: Int16.Type, forKey key: WrappedValue.Key) throws -> Int16 {
        return try wrapped.decode(type, forKey: key)
    }

    public func decode(_ type: Int32.Type, forKey key: WrappedValue.Key) throws -> Int32 {
        return try wrapped.decode(type, forKey: key)
    }

    public func decode(_ type: Int64.Type, forKey key: WrappedValue.Key) throws -> Int64 {
        return try wrapped.decode(type, forKey: key)
    }

    public func decode(_ type: UInt.Type, forKey key: WrappedValue.Key) throws -> UInt {
        return try wrapped.decode(type, forKey: key)
    }

    public func decode(_ type: UInt8.Type, forKey key: WrappedValue.Key) throws -> UInt8 {
        return try wrapped.decode(type, forKey: key)
    }

    public func decode(_ type: UInt16.Type, forKey key: WrappedValue.Key) throws -> UInt16 {
        return try wrapped.decode(type, forKey: key)
    }

    public func decode(_ type: UInt32.Type, forKey key: WrappedValue.Key) throws -> UInt32 {
        return try wrapped.decode(type, forKey: key)
    }

    public func decode(_ type: UInt64.Type, forKey key: WrappedValue.Key) throws -> UInt64 {
        return try wrapped.decode(type, forKey: key)
    }

    public func decode<T>(_ type: T.Type, forKey key: WrappedValue.Key) throws -> T where T : Decodable {
        return try wrapped.decode(type, forKey: key)
    }

    public func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type, forKey key: WrappedValue.Key) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        return try wrapped.nestedContainer(keyedBy: type, forKey: key)
    }

    public func nestedUnkeyedContainer(forKey key: WrappedValue.Key) throws -> UnkeyedDecodingContainer {
        return try wrapped.nestedUnkeyedContainer(forKey: key)
    }

    public func superDecoder() throws -> Decoder {
        return try wrapped.superDecoder()
    }

    public func superDecoder(forKey key: WrappedValue.Key) throws -> Decoder {
        return try wrapped.superDecoder(forKey: key)
    }
}
