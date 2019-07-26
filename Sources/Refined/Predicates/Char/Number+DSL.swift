import Features

public typealias _NumberPredicate = Number

extension MaybeNumber {
    public typealias Number = Refined<_NumberPredicate<Self>>
    public typealias NonNumber = Refined<_NumberPredicate<Self>>._Not
}

extension Refined.And where Refined.Value: MaybeNumber {
    public typealias Number = Refined._And<_NumberPredicate<Refined.Value>>
    public typealias NonNumber = Refined._And<Number._Not>
}

extension Refined.Or where Refined.Value: MaybeNumber {
    public typealias Number = Refined._Or<_NumberPredicate<Refined.Value>>
    public typealias NonNumber = Refined._Or<Number._Not>
}
