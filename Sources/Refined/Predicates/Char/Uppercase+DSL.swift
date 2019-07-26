import Features

public typealias _UppercasePredicate = Uppercase

extension MaybeUppercase {
    public typealias Uppercase = Refined<_UppercasePredicate<Self>>
    public typealias NonUppercase = Uppercase._Not
}

extension Refined.And where Refined.Value: MaybeUppercase {
    public typealias Uppercase = Refined._And<_UppercasePredicate<Refined.Value>>
    public typealias NonUppercase = Refined._And<Uppercase._Not>
}

extension Refined.Or where Refined.Value: MaybeUppercase {
    public typealias Uppercase = Refined._Or<_UppercasePredicate<Refined.Value>>
    public typealias NonUppercase = Refined._Or<Uppercase._Not>
}
