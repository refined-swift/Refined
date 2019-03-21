import Wrapper

extension Wrapper where WrappedValue: CustomStringConvertible {
    public var description: String {
        return wrapped.description
    }
}
