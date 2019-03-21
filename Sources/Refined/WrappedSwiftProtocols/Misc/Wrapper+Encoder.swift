import Wrapper

extension Wrapper where WrappedValue: Encoder {
    public var codingPath: [CodingKey] {
        return wrapped.codingPath
    }

    public var userInfo: [CodingUserInfoKey : Any] {
        return wrapped.userInfo
    }

    public func container<Key>(keyedBy type: Key.Type) -> KeyedEncodingContainer<Key> where Key : CodingKey {
        return wrapped.container(keyedBy: type)
    }

    public func unkeyedContainer() -> UnkeyedEncodingContainer {
        return wrapped.unkeyedContainer()
    }

    public func singleValueContainer() -> SingleValueEncodingContainer {
        return wrapped.singleValueContainer()
    }
}
