import Features

public typealias _CountPredicate = Count

extension Countable {
    public typealias Count<P: Predicate> = Refined<_CountPredicate<Self, P>> where P.Value == Int
}

extension Refined.And where Refined.Value: Countable {
    public typealias Count<P: Predicate> = Refined._And<_CountPredicate<Refined.Value, P>> where P.Value == Int
}

extension Refined.Or where Refined.Value: Countable {
    public typealias Count<P: Predicate> = Refined._Or<_CountPredicate<Refined.Value, P>> where P.Value == Int
}
