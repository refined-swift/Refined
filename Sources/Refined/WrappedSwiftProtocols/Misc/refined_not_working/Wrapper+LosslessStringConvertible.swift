import Wrapper

extension Wrapper where WrappedValue: LosslessStringConvertible {
    public init?(_ description: String) {
        guard let value = WrappedValue.init(description) else { return nil }
        self.init(value)
    }
}
