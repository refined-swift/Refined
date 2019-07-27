import Features

extension MaybeLetter where Self: MaybeNumber {
    public typealias Alphanumeric = Letter.Or.Number
}

extension Refined.And where Refined.Value: MaybeLetter & MaybeNumber  {
    public typealias Alphanumeric = Refined._And<Letter.Or.Number>
}

extension Refined.Or where Refined.Value: MaybeLetter & MaybeNumber {
    public typealias Alphanumeric = Refined._Or<Letter.Or.Number>
}
