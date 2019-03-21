import Wrapper

extension Wrapper where WrappedValue: Strideable {
    public func distance(to other: Self) -> WrappedValue.Stride {
        return wrapped.distance(to: other.wrapped)
    }

    public func distance(to other: WrappedValue) -> WrappedValue.Stride {
        return wrapped.distance(to: other)
    }

    public func advanced(by n: WrappedValue.Stride) -> WrappedValue {
        return wrapped.advanced(by: n)
    }
}

extension Wrapper where WrappedValue: Strideable {
    public static func < (x: Self, y: WrappedValue) -> Bool {
        return x.wrapped < y
    }

    public static func < (x: WrappedValue, y: Self) -> Bool {
        return x < y.wrapped
    }

    public static func == (x: Self, y: WrappedValue) -> Bool {
        return x.wrapped == y
    }

    public static func == (x: WrappedValue, y: Self) -> Bool {
        return x == y.wrapped
    }
}

extension Wrapper where WrappedValue: Strideable, WrappedValue.Stride: SignedInteger {
    public static func ... (minimum: Self, maximum: WrappedValue) -> ClosedRange<WrappedValue> {
        return minimum.wrapped ... maximum
    }

    public static func ... (minimum: WrappedValue, maximum: Self) -> ClosedRange<WrappedValue> {
        return minimum ... maximum.wrapped
    }
}
