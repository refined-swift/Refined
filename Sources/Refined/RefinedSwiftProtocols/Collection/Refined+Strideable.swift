import Swift

extension Refined where Constraint.Value: Strideable, Constraint.Value.Stride: SignedInteger { // FIXME: @hectr Make it conform Strideable Constraint.Value.Stride == Refined.Stride
    public static func < (x: Refined<Constraint>, y: Refined<Constraint>) -> Bool {
        return x.wrapped < y.wrapped
    }

    public static func == (x: Refined<Constraint>, y: Refined<Constraint>) -> Bool {
        return x.wrapped == y.wrapped
    }

    public static func ... (minimum: Refined<Constraint>, maximum: Refined<Constraint>) -> ClosedRange<WrappedValue> {
        return minimum.wrapped ... maximum.wrapped
    }
}
