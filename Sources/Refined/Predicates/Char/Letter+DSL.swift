import Features

public typealias _LetterPredicate = Letter

extension MaybeLetter {
    public typealias Letter = Refined<_LetterPredicate<Self>>
    public typealias NonLetter = Letter._Not
}

extension Refined.And where Refined.Value: MaybeLetter {
    public typealias Letter = Refined._And<_LetterPredicate<Refined.Value>>
    public typealias NonLetter = Refined._And<Letter._Not>
}

extension Refined.Or where Refined.Value: MaybeLetter {
    public typealias Letter = Refined._Or<_LetterPredicate<Refined.Value>>
    public typealias NonLetter = Refined._Or<Letter._Not>
}

extension MaybeLetter where Self: MaybeNumber {
    public typealias Alphanumeric = Letter.Or.Number
}

extension Refined.And where Refined.Value: MaybeLetter & MaybeNumber  {
    public typealias Alphanumeric = Refined._And<Letter.Or.Number>
}

extension Refined.Or where Refined.Value: MaybeLetter & MaybeNumber {
    public typealias Alphanumeric = Refined._Or<Letter.Or.Number>
}
