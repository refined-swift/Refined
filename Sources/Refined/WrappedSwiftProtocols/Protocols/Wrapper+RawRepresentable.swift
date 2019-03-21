import Wrapper

extension Wrapper where WrappedValue: RawRepresentable {
    public init?(rawValue: WrappedValue.RawValue) {
        guard let value = WrappedValue(rawValue: rawValue) else { return nil }
        self.init(value)
    }

    public var rawValue: WrappedValue.RawValue {
        return wrapped.rawValue
    }
}
