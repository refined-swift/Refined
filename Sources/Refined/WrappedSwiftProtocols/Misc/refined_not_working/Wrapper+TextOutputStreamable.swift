import Wrapper

extension Wrapper where WrappedValue: TextOutputStreamable {
    public func write<Target>(to target: inout Target) where Target : TextOutputStream {
        wrapped.write(to: &target)
    }
}
