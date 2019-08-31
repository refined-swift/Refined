import Wrapper

/// `Refined` conforms `Wrapper`, which also makes it conform any Wrapper protocol that is conformed by its constraint's value.
extension Refined: Wrapper {
    public typealias WrappedValue = Constraint.Value

    /// Wrapper initializer.
    public init?(wrapping value: Constraint.Value) {
        try? self.init(refining: value)
    }
    
    public init?(_ value: WrappedValue) {
        try? self.init(refining: value)
    }
}
