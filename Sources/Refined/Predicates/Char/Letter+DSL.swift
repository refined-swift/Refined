import Features

/// Alphanumeric DSL extension.
extension MaybeLetter where Self: MaybeNumber {
    public typealias Alphanumeric = Letter.or.Number
}

/// And + Alphanumeric DSL extension.
extension Refined.and where Refined.Value: MaybeLetter & MaybeNumber  {
    public typealias Alphanumeric = Refined._And<Letter.or.Number>
}

/// Or + Alphanumeric DSL extension.
extension Refined.or where Refined.Value: MaybeLetter & MaybeNumber {
    public typealias Alphanumeric = Refined._Or<Letter.or.Number>
}
