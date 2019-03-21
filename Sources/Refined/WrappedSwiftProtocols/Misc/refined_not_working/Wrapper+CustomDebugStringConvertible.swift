import Wrapper

extension Wrapper where WrappedValue: CustomDebugStringConvertible {
    public var debugDescription: String {
        return wrapped.debugDescription
    }
}
