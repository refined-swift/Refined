import Wrapper

extension Wrapper where WrappedValue: CodingKey {
    public var stringValue: String {
        return wrapped.stringValue
    }

    public init?(stringValue: String) {
        guard let value = WrappedValue(stringValue: stringValue) else { return nil }
        self.init(value)
    }

    public var intValue: Int? {
        return wrapped.intValue
    }

    public init?(intValue: Int) {
        guard let value = WrappedValue(intValue: intValue) else { return nil }
        self.init(value)
    }
}
