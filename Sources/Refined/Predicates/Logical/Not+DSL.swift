import Swift

/// Refined's internal typealias of `Not`.
public typealias _NotPredicate = Not

/// Refined's internal `Not` DSL extension.
extension Refined {
    public typealias _Not = Refined<_NotPredicate<Constraint>>
}
