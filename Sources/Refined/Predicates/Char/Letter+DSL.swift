import Features

/// Alphanumeric DSL extension.
extension MaybeLetter where Self: MaybeNumber {
    public typealias Alphanumeric = Letter.Or.Number
}

/// And + Alphanumeric DSL extension.
extension Refined.and where Refined.Value: MaybeLetter & MaybeNumber  {
    public typealias Alphanumeric = Refined._And<Letter.Or.Number>
}

/// Or + Alphanumeric DSL extension.
extension Refined.Or where Refined.Value: MaybeLetter & MaybeNumber {
    public typealias Alphanumeric = Refined._Or<Letter.Or.Number>
}
