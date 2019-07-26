import Features

public typealias _LowercasePredicate = Lowercase

extension MaybeLowercase {
    public typealias Lowercase = Refined<_LowercasePredicate<Self>>
    public typealias NonLowercase = Lowercase._Not
}

extension Refined.And where Refined.Value: MaybeLowercase {
    public typealias Lowercase = Refined._And<_LowercasePredicate<Refined.Value>>
    public typealias NonLowercase = Refined._And<Lowercase._Not>
}

extension Refined.Or where Refined.Value: MaybeLowercase {
    public typealias Lowercase = Refined._Or<_LowercasePredicate<Refined.Value>>
    public typealias NonLowercase = Refined._Or<Lowercase._Not>
}
