import Features

public typealias _EmptyPredicate = Empty

extension MaybeEmpty {
    public typealias Empty = Refined<_EmptyPredicate<Self>>
    public typealias NonEmpty = Empty._Not
}

extension Refined.And where Refined.Value: MaybeEmpty {
    public typealias Empty = Refined._And<_EmptyPredicate<Refined.Value>>
    public typealias NonEmpty = Refined._And<Empty._Not>
}

extension Refined.Or where Refined.Value: MaybeEmpty {
    public typealias Empty = Refined._Or<_EmptyPredicate<Refined.Value>>
    public typealias NonEmpty = Refined._Or<Empty._Not>
}
