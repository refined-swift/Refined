import Swift

public typealias _NotPredicate = Not

extension Refined {
    public typealias _Not = Refined<_NotPredicate<Constraint>>
}
