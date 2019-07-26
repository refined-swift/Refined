import Features

public typealias _WhitespacePredicate = Whitespace

extension MaybeWhitespace {
    public typealias Whitespace = Refined<_WhitespacePredicate<Self>>
    public typealias NonWhitespace = Whitespace._Not
}

extension Refined.And where Refined.Value: MaybeWhitespace {
    public typealias Whitespace = Refined._And<_WhitespacePredicate<Refined.Value>>
    public typealias NonWhitespace = Refined._And<Whitespace._Not>
}

extension Refined.Or where Refined.Value: MaybeWhitespace {
    public typealias Whitespace = Refined._Or<_WhitespacePredicate<Refined.Value>>
    public typealias NonWhitespace = Refined._Or<Whitespace._Not>
}
