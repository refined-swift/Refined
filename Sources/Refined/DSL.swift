// Generated with gyb. Do not edit.

import Features

public typealias _CountPredicate = Count

extension Countable {
    public typealias Count<T: Predicate> = Refined<_CountPredicate<Self, T>> where T.Value == Int
}

extension Refined.And where Refined.Value: Countable {
    public typealias Count<T: Predicate> = Refined._And<_CountPredicate<Refined.Value, T>> where T.Value == Int
}

extension Refined.Or where Refined.Value: Countable {
public typealias Count<T: Predicate> = Refined._Or<_CountPredicate<Refined.Value, T>> where T.Value == Int
}

public typealias _EmptyPredicate = Empty

extension MaybeEmpty {
    public typealias Empty = Refined<_EmptyPredicate<Self>>
    public typealias NonEmpty = Refined<_EmptyPredicate<Self>>._Not
}

extension Refined.And where Refined.Value: MaybeEmpty {
    public typealias Empty = Refined._And<_EmptyPredicate<Refined.Value>>
    public typealias NonEmpty = Refined._And<Empty._Not>
}

extension Refined.Or where Refined.Value: MaybeEmpty {
    public typealias Empty = Refined._Or<_EmptyPredicate<Refined.Value>>
    public typealias NonEmpty = Refined._Or<Empty._Not>
}

public typealias _LetterPredicate = Letter

extension MaybeLetter {
    public typealias Letter = Refined<_LetterPredicate<Self>>
    public typealias NonLetter = Refined<_LetterPredicate<Self>>._Not
}

extension Refined.And where Refined.Value: MaybeLetter {
    public typealias Letter = Refined._And<_LetterPredicate<Refined.Value>>
    public typealias NonLetter = Refined._And<Letter._Not>
}

extension Refined.Or where Refined.Value: MaybeLetter {
    public typealias Letter = Refined._Or<_LetterPredicate<Refined.Value>>
    public typealias NonLetter = Refined._Or<Letter._Not>
}

public typealias _LowercasePredicate = Lowercase

extension MaybeLowercase {
    public typealias Lowercase = Refined<_LowercasePredicate<Self>>
    public typealias NonLowercase = Refined<_LowercasePredicate<Self>>._Not
}

extension Refined.And where Refined.Value: MaybeLowercase {
    public typealias Lowercase = Refined._And<_LowercasePredicate<Refined.Value>>
    public typealias NonLowercase = Refined._And<Lowercase._Not>
}

extension Refined.Or where Refined.Value: MaybeLowercase {
    public typealias Lowercase = Refined._Or<_LowercasePredicate<Refined.Value>>
    public typealias NonLowercase = Refined._Or<Lowercase._Not>
}

public typealias _UppercasePredicate = Uppercase

extension MaybeUppercase {
    public typealias Uppercase = Refined<_UppercasePredicate<Self>>
    public typealias NonUppercase = Refined<_UppercasePredicate<Self>>._Not
}

extension Refined.And where Refined.Value: MaybeUppercase {
    public typealias Uppercase = Refined._And<_UppercasePredicate<Refined.Value>>
    public typealias NonUppercase = Refined._And<Uppercase._Not>
}

extension Refined.Or where Refined.Value: MaybeUppercase {
    public typealias Uppercase = Refined._Or<_UppercasePredicate<Refined.Value>>
    public typealias NonUppercase = Refined._Or<Uppercase._Not>
}

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

public typealias _WhitespacePredicate = Whitespace

extension MaybeWhitespace {
    public typealias Whitespace = Refined<_WhitespacePredicate<Self>>
    public typealias NonWhitespace = Refined<_WhitespacePredicate<Self>>._Not
}

extension Refined.And where Refined.Value: MaybeWhitespace {
    public typealias Whitespace = Refined._And<_WhitespacePredicate<Refined.Value>>
    public typealias NonWhitespace = Refined._And<Whitespace._Not>
}

extension Refined.Or where Refined.Value: MaybeWhitespace {
    public typealias Whitespace = Refined._Or<_WhitespacePredicate<Refined.Value>>
    public typealias NonWhitespace = Refined._Or<Whitespace._Not>
}
