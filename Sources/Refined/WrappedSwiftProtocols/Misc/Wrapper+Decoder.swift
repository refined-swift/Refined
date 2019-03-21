import Wrapper

extension Wrapper where WrappedValue: Decoder {
    public var codingPath: [CodingKey] {
        return wrapped.codingPath
    }

    public var userInfo: [CodingUserInfoKey : Any] {
        return wrapped.userInfo
    }

    public func container<Key>(keyedBy type: Key.Type) throws -> KeyedDecodingContainer<Key> where Key : CodingKey {
        return try wrapped.container(keyedBy: type)
    }

    public func unkeyedContainer() throws -> UnkeyedDecodingContainer {
        return try wrapped.unkeyedContainer()
    }

    public func singleValueContainer() throws -> SingleValueDecodingContainer {
        return try wrapped.singleValueContainer()
    }
}
