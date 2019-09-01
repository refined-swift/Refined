// Generated with gyb. Do not edit.

import Features
import Wrapper

// MARK: - Zero

/// `Refined` + `MaybeZero` extension.
extension Refined: MaybeZero where WrappedValue: MaybeZero {}

/// Predicate that checks if value is zero.
public struct Zero<V: MaybeZero>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isZero
    }
}

/// Refined's internal typealias of `Zero`.
public typealias _ZeroPredicate = Zero

/// `Zero` DSL extension.
extension MaybeZero {
    public typealias Zero = Refined<_ZeroPredicate<Self>>
    public typealias NonZero = Refined<_ZeroPredicate<Self>>._Not
}

/// `And` + `Zero` DSL extension.
extension Refined.and where Refined.Value: MaybeZero {
    public typealias Zero = Refined._And<_ZeroPredicate<Refined.Value>>
    public typealias NonZero = Refined._And<Zero._Not>
}

/// `Or` + `Zero` DSL extension.
extension Refined.or where Refined.Value: MaybeZero {
    public typealias Zero = Refined._Or<_ZeroPredicate<Refined.Value>>
    public typealias NonZero = Refined._Or<Zero._Not>
}

// MARK: - Xidstart

/// `Refined` + `MaybeXidstart` extension.
extension Refined: MaybeXidstart where WrappedValue: MaybeXidstart {}

/// Predicate that checks if value is xidstart.
public struct Xidstart<V: MaybeXidstart>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isXIDStart
    }
}

/// Refined's internal typealias of `Xidstart`.
public typealias _XidstartPredicate = Xidstart

/// `Xidstart` DSL extension.
extension MaybeXidstart {
    public typealias Xidstart = Refined<_XidstartPredicate<Self>>
    public typealias NonXidstart = Refined<_XidstartPredicate<Self>>._Not
}

/// `And` + `Xidstart` DSL extension.
extension Refined.and where Refined.Value: MaybeXidstart {
    public typealias Xidstart = Refined._And<_XidstartPredicate<Refined.Value>>
    public typealias NonXidstart = Refined._And<Xidstart._Not>
}

/// `Or` + `Xidstart` DSL extension.
extension Refined.or where Refined.Value: MaybeXidstart {
    public typealias Xidstart = Refined._Or<_XidstartPredicate<Refined.Value>>
    public typealias NonXidstart = Refined._Or<Xidstart._Not>
}

// MARK: - Xidcontinue

/// `Refined` + `MaybeXidcontinue` extension.
extension Refined: MaybeXidcontinue where WrappedValue: MaybeXidcontinue {}

/// Predicate that checks if value is xidcontinue.
public struct Xidcontinue<V: MaybeXidcontinue>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isXIDContinue
    }
}

/// Refined's internal typealias of `Xidcontinue`.
public typealias _XidcontinuePredicate = Xidcontinue

/// `Xidcontinue` DSL extension.
extension MaybeXidcontinue {
    public typealias Xidcontinue = Refined<_XidcontinuePredicate<Self>>
    public typealias NonXidcontinue = Refined<_XidcontinuePredicate<Self>>._Not
}

/// `And` + `Xidcontinue` DSL extension.
extension Refined.and where Refined.Value: MaybeXidcontinue {
    public typealias Xidcontinue = Refined._And<_XidcontinuePredicate<Refined.Value>>
    public typealias NonXidcontinue = Refined._And<Xidcontinue._Not>
}

/// `Or` + `Xidcontinue` DSL extension.
extension Refined.or where Refined.Value: MaybeXidcontinue {
    public typealias Xidcontinue = Refined._Or<_XidcontinuePredicate<Refined.Value>>
    public typealias NonXidcontinue = Refined._Or<Xidcontinue._Not>
}

// MARK: - WholeNumber

/// `Refined` + `MaybeWholeNumber` extension.
extension Refined: MaybeWholeNumber where WrappedValue: MaybeWholeNumber {}

/// Predicate that checks if value is wholeNumber.
public struct WholeNumber<V: MaybeWholeNumber>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isWholeNumber
    }
}

/// Refined's internal typealias of `WholeNumber`.
public typealias _WholeNumberPredicate = WholeNumber

/// `WholeNumber` DSL extension.
extension MaybeWholeNumber {
    public typealias WholeNumber = Refined<_WholeNumberPredicate<Self>>
    public typealias NonWholeNumber = Refined<_WholeNumberPredicate<Self>>._Not
}

/// `And` + `WholeNumber` DSL extension.
extension Refined.and where Refined.Value: MaybeWholeNumber {
    public typealias WholeNumber = Refined._And<_WholeNumberPredicate<Refined.Value>>
    public typealias NonWholeNumber = Refined._And<WholeNumber._Not>
}

/// `Or` + `WholeNumber` DSL extension.
extension Refined.or where Refined.Value: MaybeWholeNumber {
    public typealias WholeNumber = Refined._Or<_WholeNumberPredicate<Refined.Value>>
    public typealias NonWholeNumber = Refined._Or<WholeNumber._Not>
}

// MARK: - Whitespace

/// `Refined` + `MaybeWhitespace` extension.
extension Refined: MaybeWhitespace where WrappedValue: MaybeWhitespace {}

/// Predicate that checks if value is whitespace.
public struct Whitespace<V: MaybeWhitespace>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isWhitespace
    }
}

/// Refined's internal typealias of `Whitespace`.
public typealias _WhitespacePredicate = Whitespace

/// `Whitespace` DSL extension.
extension MaybeWhitespace {
    public typealias Whitespace = Refined<_WhitespacePredicate<Self>>
    public typealias NonWhitespace = Refined<_WhitespacePredicate<Self>>._Not
}

/// `And` + `Whitespace` DSL extension.
extension Refined.and where Refined.Value: MaybeWhitespace {
    public typealias Whitespace = Refined._And<_WhitespacePredicate<Refined.Value>>
    public typealias NonWhitespace = Refined._And<Whitespace._Not>
}

/// `Or` + `Whitespace` DSL extension.
extension Refined.or where Refined.Value: MaybeWhitespace {
    public typealias Whitespace = Refined._Or<_WhitespacePredicate<Refined.Value>>
    public typealias NonWhitespace = Refined._Or<Whitespace._Not>
}

// MARK: - VariationSelector

/// `Refined` + `MaybeVariationSelector` extension.
extension Refined: MaybeVariationSelector where WrappedValue: MaybeVariationSelector {}

/// Predicate that checks if value is variationSelector.
public struct VariationSelector<V: MaybeVariationSelector>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isVariationSelector
    }
}

/// Refined's internal typealias of `VariationSelector`.
public typealias _VariationSelectorPredicate = VariationSelector

/// `VariationSelector` DSL extension.
extension MaybeVariationSelector {
    public typealias VariationSelector = Refined<_VariationSelectorPredicate<Self>>
    public typealias NonVariationSelector = Refined<_VariationSelectorPredicate<Self>>._Not
}

/// `And` + `VariationSelector` DSL extension.
extension Refined.and where Refined.Value: MaybeVariationSelector {
    public typealias VariationSelector = Refined._And<_VariationSelectorPredicate<Refined.Value>>
    public typealias NonVariationSelector = Refined._And<VariationSelector._Not>
}

/// `Or` + `VariationSelector` DSL extension.
extension Refined.or where Refined.Value: MaybeVariationSelector {
    public typealias VariationSelector = Refined._Or<_VariationSelectorPredicate<Refined.Value>>
    public typealias NonVariationSelector = Refined._Or<VariationSelector._Not>
}

// MARK: - Uppercase

/// `Refined` + `MaybeUppercase` extension.
extension Refined: MaybeUppercase where WrappedValue: MaybeUppercase {}

/// Predicate that checks if value is uppercase.
public struct Uppercase<V: MaybeUppercase>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isUppercase
    }
}

/// Refined's internal typealias of `Uppercase`.
public typealias _UppercasePredicate = Uppercase

/// `Uppercase` DSL extension.
extension MaybeUppercase {
    public typealias Uppercase = Refined<_UppercasePredicate<Self>>
    public typealias NonUppercase = Refined<_UppercasePredicate<Self>>._Not
}

/// `And` + `Uppercase` DSL extension.
extension Refined.and where Refined.Value: MaybeUppercase {
    public typealias Uppercase = Refined._And<_UppercasePredicate<Refined.Value>>
    public typealias NonUppercase = Refined._And<Uppercase._Not>
}

/// `Or` + `Uppercase` DSL extension.
extension Refined.or where Refined.Value: MaybeUppercase {
    public typealias Uppercase = Refined._Or<_UppercasePredicate<Refined.Value>>
    public typealias NonUppercase = Refined._Or<Uppercase._Not>
}

// MARK: - UnifiedIdeograph

/// `Refined` + `MaybeUnifiedIdeograph` extension.
extension Refined: MaybeUnifiedIdeograph where WrappedValue: MaybeUnifiedIdeograph {}

/// Predicate that checks if value is unifiedIdeograph.
public struct UnifiedIdeograph<V: MaybeUnifiedIdeograph>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isUnifiedIdeograph
    }
}

/// Refined's internal typealias of `UnifiedIdeograph`.
public typealias _UnifiedIdeographPredicate = UnifiedIdeograph

/// `UnifiedIdeograph` DSL extension.
extension MaybeUnifiedIdeograph {
    public typealias UnifiedIdeograph = Refined<_UnifiedIdeographPredicate<Self>>
    public typealias NonUnifiedIdeograph = Refined<_UnifiedIdeographPredicate<Self>>._Not
}

/// `And` + `UnifiedIdeograph` DSL extension.
extension Refined.and where Refined.Value: MaybeUnifiedIdeograph {
    public typealias UnifiedIdeograph = Refined._And<_UnifiedIdeographPredicate<Refined.Value>>
    public typealias NonUnifiedIdeograph = Refined._And<UnifiedIdeograph._Not>
}

/// `Or` + `UnifiedIdeograph` DSL extension.
extension Refined.or where Refined.Value: MaybeUnifiedIdeograph {
    public typealias UnifiedIdeograph = Refined._Or<_UnifiedIdeographPredicate<Refined.Value>>
    public typealias NonUnifiedIdeograph = Refined._Or<UnifiedIdeograph._Not>
}

// MARK: - TerminalPunctuation

/// `Refined` + `MaybeTerminalPunctuation` extension.
extension Refined: MaybeTerminalPunctuation where WrappedValue: MaybeTerminalPunctuation {}

/// Predicate that checks if value is terminalPunctuation.
public struct TerminalPunctuation<V: MaybeTerminalPunctuation>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isTerminalPunctuation
    }
}

/// Refined's internal typealias of `TerminalPunctuation`.
public typealias _TerminalPunctuationPredicate = TerminalPunctuation

/// `TerminalPunctuation` DSL extension.
extension MaybeTerminalPunctuation {
    public typealias TerminalPunctuation = Refined<_TerminalPunctuationPredicate<Self>>
    public typealias NonTerminalPunctuation = Refined<_TerminalPunctuationPredicate<Self>>._Not
}

/// `And` + `TerminalPunctuation` DSL extension.
extension Refined.and where Refined.Value: MaybeTerminalPunctuation {
    public typealias TerminalPunctuation = Refined._And<_TerminalPunctuationPredicate<Refined.Value>>
    public typealias NonTerminalPunctuation = Refined._And<TerminalPunctuation._Not>
}

/// `Or` + `TerminalPunctuation` DSL extension.
extension Refined.or where Refined.Value: MaybeTerminalPunctuation {
    public typealias TerminalPunctuation = Refined._Or<_TerminalPunctuationPredicate<Refined.Value>>
    public typealias NonTerminalPunctuation = Refined._Or<TerminalPunctuation._Not>
}

// MARK: - Symbol

/// `Refined` + `MaybeSymbol` extension.
extension Refined: MaybeSymbol where WrappedValue: MaybeSymbol {}

/// Predicate that checks if value is symbol.
public struct Symbol<V: MaybeSymbol>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isSymbol
    }
}

/// Refined's internal typealias of `Symbol`.
public typealias _SymbolPredicate = Symbol

/// `Symbol` DSL extension.
extension MaybeSymbol {
    public typealias Symbol = Refined<_SymbolPredicate<Self>>
    public typealias NonSymbol = Refined<_SymbolPredicate<Self>>._Not
}

/// `And` + `Symbol` DSL extension.
extension Refined.and where Refined.Value: MaybeSymbol {
    public typealias Symbol = Refined._And<_SymbolPredicate<Refined.Value>>
    public typealias NonSymbol = Refined._And<Symbol._Not>
}

/// `Or` + `Symbol` DSL extension.
extension Refined.or where Refined.Value: MaybeSymbol {
    public typealias Symbol = Refined._Or<_SymbolPredicate<Refined.Value>>
    public typealias NonSymbol = Refined._Or<Symbol._Not>
}

// MARK: - Subnormal

/// `Refined` + `MaybeSubnormal` extension.
extension Refined: MaybeSubnormal where WrappedValue: MaybeSubnormal {}

/// Predicate that checks if value is subnormal.
public struct Subnormal<V: MaybeSubnormal>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isSubnormal
    }
}

/// Refined's internal typealias of `Subnormal`.
public typealias _SubnormalPredicate = Subnormal

/// `Subnormal` DSL extension.
extension MaybeSubnormal {
    public typealias Subnormal = Refined<_SubnormalPredicate<Self>>
    public typealias NonSubnormal = Refined<_SubnormalPredicate<Self>>._Not
}

/// `And` + `Subnormal` DSL extension.
extension Refined.and where Refined.Value: MaybeSubnormal {
    public typealias Subnormal = Refined._And<_SubnormalPredicate<Refined.Value>>
    public typealias NonSubnormal = Refined._And<Subnormal._Not>
}

/// `Or` + `Subnormal` DSL extension.
extension Refined.or where Refined.Value: MaybeSubnormal {
    public typealias Subnormal = Refined._Or<_SubnormalPredicate<Refined.Value>>
    public typealias NonSubnormal = Refined._Or<Subnormal._Not>
}

// MARK: - SoftDotted

/// `Refined` + `MaybeSoftDotted` extension.
extension Refined: MaybeSoftDotted where WrappedValue: MaybeSoftDotted {}

/// Predicate that checks if value is softDotted.
public struct SoftDotted<V: MaybeSoftDotted>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isSoftDotted
    }
}

/// Refined's internal typealias of `SoftDotted`.
public typealias _SoftDottedPredicate = SoftDotted

/// `SoftDotted` DSL extension.
extension MaybeSoftDotted {
    public typealias SoftDotted = Refined<_SoftDottedPredicate<Self>>
    public typealias NonSoftDotted = Refined<_SoftDottedPredicate<Self>>._Not
}

/// `And` + `SoftDotted` DSL extension.
extension Refined.and where Refined.Value: MaybeSoftDotted {
    public typealias SoftDotted = Refined._And<_SoftDottedPredicate<Refined.Value>>
    public typealias NonSoftDotted = Refined._And<SoftDotted._Not>
}

/// `Or` + `SoftDotted` DSL extension.
extension Refined.or where Refined.Value: MaybeSoftDotted {
    public typealias SoftDotted = Refined._Or<_SoftDottedPredicate<Refined.Value>>
    public typealias NonSoftDotted = Refined._Or<SoftDotted._Not>
}

// MARK: - SignalingNaN

/// `Refined` + `MaybeSignalingNaN` extension.
extension Refined: MaybeSignalingNaN where WrappedValue: MaybeSignalingNaN {}

/// Predicate that checks if value is signalingNaN.
public struct SignalingNaN<V: MaybeSignalingNaN>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isSignalingNaN
    }
}

/// Refined's internal typealias of `SignalingNaN`.
public typealias _SignalingNaNPredicate = SignalingNaN

/// `SignalingNaN` DSL extension.
extension MaybeSignalingNaN {
    public typealias SignalingNaN = Refined<_SignalingNaNPredicate<Self>>
    public typealias NonSignalingNaN = Refined<_SignalingNaNPredicate<Self>>._Not
}

/// `And` + `SignalingNaN` DSL extension.
extension Refined.and where Refined.Value: MaybeSignalingNaN {
    public typealias SignalingNaN = Refined._And<_SignalingNaNPredicate<Refined.Value>>
    public typealias NonSignalingNaN = Refined._And<SignalingNaN._Not>
}

/// `Or` + `SignalingNaN` DSL extension.
extension Refined.or where Refined.Value: MaybeSignalingNaN {
    public typealias SignalingNaN = Refined._Or<_SignalingNaNPredicate<Refined.Value>>
    public typealias NonSignalingNaN = Refined._Or<SignalingNaN._Not>
}

// MARK: - SentenceTerminal

/// `Refined` + `MaybeSentenceTerminal` extension.
extension Refined: MaybeSentenceTerminal where WrappedValue: MaybeSentenceTerminal {}

/// Predicate that checks if value is sentenceTerminal.
public struct SentenceTerminal<V: MaybeSentenceTerminal>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isSentenceTerminal
    }
}

/// Refined's internal typealias of `SentenceTerminal`.
public typealias _SentenceTerminalPredicate = SentenceTerminal

/// `SentenceTerminal` DSL extension.
extension MaybeSentenceTerminal {
    public typealias SentenceTerminal = Refined<_SentenceTerminalPredicate<Self>>
    public typealias NonSentenceTerminal = Refined<_SentenceTerminalPredicate<Self>>._Not
}

/// `And` + `SentenceTerminal` DSL extension.
extension Refined.and where Refined.Value: MaybeSentenceTerminal {
    public typealias SentenceTerminal = Refined._And<_SentenceTerminalPredicate<Refined.Value>>
    public typealias NonSentenceTerminal = Refined._And<SentenceTerminal._Not>
}

/// `Or` + `SentenceTerminal` DSL extension.
extension Refined.or where Refined.Value: MaybeSentenceTerminal {
    public typealias SentenceTerminal = Refined._Or<_SentenceTerminalPredicate<Refined.Value>>
    public typealias NonSentenceTerminal = Refined._Or<SentenceTerminal._Not>
}

// MARK: - Radical

/// `Refined` + `MaybeRadical` extension.
extension Refined: MaybeRadical where WrappedValue: MaybeRadical {}

/// Predicate that checks if value is radical.
public struct Radical<V: MaybeRadical>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isRadical
    }
}

/// Refined's internal typealias of `Radical`.
public typealias _RadicalPredicate = Radical

/// `Radical` DSL extension.
extension MaybeRadical {
    public typealias Radical = Refined<_RadicalPredicate<Self>>
    public typealias NonRadical = Refined<_RadicalPredicate<Self>>._Not
}

/// `And` + `Radical` DSL extension.
extension Refined.and where Refined.Value: MaybeRadical {
    public typealias Radical = Refined._And<_RadicalPredicate<Refined.Value>>
    public typealias NonRadical = Refined._And<Radical._Not>
}

/// `Or` + `Radical` DSL extension.
extension Refined.or where Refined.Value: MaybeRadical {
    public typealias Radical = Refined._Or<_RadicalPredicate<Refined.Value>>
    public typealias NonRadical = Refined._Or<Radical._Not>
}

// MARK: - QuotationMark

/// `Refined` + `MaybeQuotationMark` extension.
extension Refined: MaybeQuotationMark where WrappedValue: MaybeQuotationMark {}

/// Predicate that checks if value is quotationMark.
public struct QuotationMark<V: MaybeQuotationMark>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isQuotationMark
    }
}

/// Refined's internal typealias of `QuotationMark`.
public typealias _QuotationMarkPredicate = QuotationMark

/// `QuotationMark` DSL extension.
extension MaybeQuotationMark {
    public typealias QuotationMark = Refined<_QuotationMarkPredicate<Self>>
    public typealias NonQuotationMark = Refined<_QuotationMarkPredicate<Self>>._Not
}

/// `And` + `QuotationMark` DSL extension.
extension Refined.and where Refined.Value: MaybeQuotationMark {
    public typealias QuotationMark = Refined._And<_QuotationMarkPredicate<Refined.Value>>
    public typealias NonQuotationMark = Refined._And<QuotationMark._Not>
}

/// `Or` + `QuotationMark` DSL extension.
extension Refined.or where Refined.Value: MaybeQuotationMark {
    public typealias QuotationMark = Refined._Or<_QuotationMarkPredicate<Refined.Value>>
    public typealias NonQuotationMark = Refined._Or<QuotationMark._Not>
}

// MARK: - Punctuation

/// `Refined` + `MaybePunctuation` extension.
extension Refined: MaybePunctuation where WrappedValue: MaybePunctuation {}

/// Predicate that checks if value is punctuation.
public struct Punctuation<V: MaybePunctuation>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isPunctuation
    }
}

/// Refined's internal typealias of `Punctuation`.
public typealias _PunctuationPredicate = Punctuation

/// `Punctuation` DSL extension.
extension MaybePunctuation {
    public typealias Punctuation = Refined<_PunctuationPredicate<Self>>
    public typealias NonPunctuation = Refined<_PunctuationPredicate<Self>>._Not
}

/// `And` + `Punctuation` DSL extension.
extension Refined.and where Refined.Value: MaybePunctuation {
    public typealias Punctuation = Refined._And<_PunctuationPredicate<Refined.Value>>
    public typealias NonPunctuation = Refined._And<Punctuation._Not>
}

/// `Or` + `Punctuation` DSL extension.
extension Refined.or where Refined.Value: MaybePunctuation {
    public typealias Punctuation = Refined._Or<_PunctuationPredicate<Refined.Value>>
    public typealias NonPunctuation = Refined._Or<Punctuation._Not>
}

// MARK: - PatternWhitespace

/// `Refined` + `MaybePatternWhitespace` extension.
extension Refined: MaybePatternWhitespace where WrappedValue: MaybePatternWhitespace {}

/// Predicate that checks if value is patternWhitespace.
public struct PatternWhitespace<V: MaybePatternWhitespace>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isPatternWhitespace
    }
}

/// Refined's internal typealias of `PatternWhitespace`.
public typealias _PatternWhitespacePredicate = PatternWhitespace

/// `PatternWhitespace` DSL extension.
extension MaybePatternWhitespace {
    public typealias PatternWhitespace = Refined<_PatternWhitespacePredicate<Self>>
    public typealias NonPatternWhitespace = Refined<_PatternWhitespacePredicate<Self>>._Not
}

/// `And` + `PatternWhitespace` DSL extension.
extension Refined.and where Refined.Value: MaybePatternWhitespace {
    public typealias PatternWhitespace = Refined._And<_PatternWhitespacePredicate<Refined.Value>>
    public typealias NonPatternWhitespace = Refined._And<PatternWhitespace._Not>
}

/// `Or` + `PatternWhitespace` DSL extension.
extension Refined.or where Refined.Value: MaybePatternWhitespace {
    public typealias PatternWhitespace = Refined._Or<_PatternWhitespacePredicate<Refined.Value>>
    public typealias NonPatternWhitespace = Refined._Or<PatternWhitespace._Not>
}

// MARK: - PatternSyntax

/// `Refined` + `MaybePatternSyntax` extension.
extension Refined: MaybePatternSyntax where WrappedValue: MaybePatternSyntax {}

/// Predicate that checks if value is patternSyntax.
public struct PatternSyntax<V: MaybePatternSyntax>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isPatternSyntax
    }
}

/// Refined's internal typealias of `PatternSyntax`.
public typealias _PatternSyntaxPredicate = PatternSyntax

/// `PatternSyntax` DSL extension.
extension MaybePatternSyntax {
    public typealias PatternSyntax = Refined<_PatternSyntaxPredicate<Self>>
    public typealias NonPatternSyntax = Refined<_PatternSyntaxPredicate<Self>>._Not
}

/// `And` + `PatternSyntax` DSL extension.
extension Refined.and where Refined.Value: MaybePatternSyntax {
    public typealias PatternSyntax = Refined._And<_PatternSyntaxPredicate<Refined.Value>>
    public typealias NonPatternSyntax = Refined._And<PatternSyntax._Not>
}

/// `Or` + `PatternSyntax` DSL extension.
extension Refined.or where Refined.Value: MaybePatternSyntax {
    public typealias PatternSyntax = Refined._Or<_PatternSyntaxPredicate<Refined.Value>>
    public typealias NonPatternSyntax = Refined._Or<PatternSyntax._Not>
}

// MARK: - Number

/// `Refined` + `MaybeNumber` extension.
extension Refined: MaybeNumber where WrappedValue: MaybeNumber {}

/// Predicate that checks if value is number.
public struct Number<V: MaybeNumber>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isNumber
    }
}

/// Refined's internal typealias of `Number`.
public typealias _NumberPredicate = Number

/// `Number` DSL extension.
extension MaybeNumber {
    public typealias Number = Refined<_NumberPredicate<Self>>
    public typealias NonNumber = Refined<_NumberPredicate<Self>>._Not
}

/// `And` + `Number` DSL extension.
extension Refined.and where Refined.Value: MaybeNumber {
    public typealias Number = Refined._And<_NumberPredicate<Refined.Value>>
    public typealias NonNumber = Refined._And<Number._Not>
}

/// `Or` + `Number` DSL extension.
extension Refined.or where Refined.Value: MaybeNumber {
    public typealias Number = Refined._Or<_NumberPredicate<Refined.Value>>
    public typealias NonNumber = Refined._Or<Number._Not>
}

// MARK: - Normal

/// `Refined` + `MaybeNormal` extension.
extension Refined: MaybeNormal where WrappedValue: MaybeNormal {}

/// Predicate that checks if value is normal.
public struct Normal<V: MaybeNormal>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isNormal
    }
}

/// Refined's internal typealias of `Normal`.
public typealias _NormalPredicate = Normal

/// `Normal` DSL extension.
extension MaybeNormal {
    public typealias Normal = Refined<_NormalPredicate<Self>>
    public typealias NonNormal = Refined<_NormalPredicate<Self>>._Not
}

/// `And` + `Normal` DSL extension.
extension Refined.and where Refined.Value: MaybeNormal {
    public typealias Normal = Refined._And<_NormalPredicate<Refined.Value>>
    public typealias NonNormal = Refined._And<Normal._Not>
}

/// `Or` + `Normal` DSL extension.
extension Refined.or where Refined.Value: MaybeNormal {
    public typealias Normal = Refined._Or<_NormalPredicate<Refined.Value>>
    public typealias NonNormal = Refined._Or<Normal._Not>
}

// MARK: - NoncharacterCodePoint

/// `Refined` + `MaybeNoncharacterCodePoint` extension.
extension Refined: MaybeNoncharacterCodePoint where WrappedValue: MaybeNoncharacterCodePoint {}

/// Predicate that checks if value is noncharacterCodePoint.
public struct NoncharacterCodePoint<V: MaybeNoncharacterCodePoint>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isNoncharacterCodePoint
    }
}

/// Refined's internal typealias of `NoncharacterCodePoint`.
public typealias _NoncharacterCodePointPredicate = NoncharacterCodePoint

/// `NoncharacterCodePoint` DSL extension.
extension MaybeNoncharacterCodePoint {
    public typealias NoncharacterCodePoint = Refined<_NoncharacterCodePointPredicate<Self>>
    public typealias NonNoncharacterCodePoint = Refined<_NoncharacterCodePointPredicate<Self>>._Not
}

/// `And` + `NoncharacterCodePoint` DSL extension.
extension Refined.and where Refined.Value: MaybeNoncharacterCodePoint {
    public typealias NoncharacterCodePoint = Refined._And<_NoncharacterCodePointPredicate<Refined.Value>>
    public typealias NonNoncharacterCodePoint = Refined._And<NoncharacterCodePoint._Not>
}

/// `Or` + `NoncharacterCodePoint` DSL extension.
extension Refined.or where Refined.Value: MaybeNoncharacterCodePoint {
    public typealias NoncharacterCodePoint = Refined._Or<_NoncharacterCodePointPredicate<Refined.Value>>
    public typealias NonNoncharacterCodePoint = Refined._Or<NoncharacterCodePoint._Not>
}

// MARK: - Newline

/// `Refined` + `MaybeNewline` extension.
extension Refined: MaybeNewline where WrappedValue: MaybeNewline {}

/// Predicate that checks if value is newline.
public struct Newline<V: MaybeNewline>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isNewline
    }
}

/// Refined's internal typealias of `Newline`.
public typealias _NewlinePredicate = Newline

/// `Newline` DSL extension.
extension MaybeNewline {
    public typealias Newline = Refined<_NewlinePredicate<Self>>
    public typealias NonNewline = Refined<_NewlinePredicate<Self>>._Not
}

/// `And` + `Newline` DSL extension.
extension Refined.and where Refined.Value: MaybeNewline {
    public typealias Newline = Refined._And<_NewlinePredicate<Refined.Value>>
    public typealias NonNewline = Refined._And<Newline._Not>
}

/// `Or` + `Newline` DSL extension.
extension Refined.or where Refined.Value: MaybeNewline {
    public typealias Newline = Refined._Or<_NewlinePredicate<Refined.Value>>
    public typealias NonNewline = Refined._Or<Newline._Not>
}

// MARK: - NaN

/// `Refined` + `MaybeNaN` extension.
extension Refined: MaybeNaN where WrappedValue: MaybeNaN {}

/// Predicate that checks if value is naN.
public struct NaN<V: MaybeNaN>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isNaN
    }
}

/// Refined's internal typealias of `NaN`.
public typealias _NaNPredicate = NaN

/// `NaN` DSL extension.
extension MaybeNaN {
    public typealias NaN = Refined<_NaNPredicate<Self>>
    public typealias NonNaN = Refined<_NaNPredicate<Self>>._Not
}

/// `And` + `NaN` DSL extension.
extension Refined.and where Refined.Value: MaybeNaN {
    public typealias NaN = Refined._And<_NaNPredicate<Refined.Value>>
    public typealias NonNaN = Refined._And<NaN._Not>
}

/// `Or` + `NaN` DSL extension.
extension Refined.or where Refined.Value: MaybeNaN {
    public typealias NaN = Refined._Or<_NaNPredicate<Refined.Value>>
    public typealias NonNaN = Refined._Or<NaN._Not>
}

// MARK: - MathSymbol

/// `Refined` + `MaybeMathSymbol` extension.
extension Refined: MaybeMathSymbol where WrappedValue: MaybeMathSymbol {}

/// Predicate that checks if value is mathSymbol.
public struct MathSymbol<V: MaybeMathSymbol>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isMathSymbol
    }
}

/// Refined's internal typealias of `MathSymbol`.
public typealias _MathSymbolPredicate = MathSymbol

/// `MathSymbol` DSL extension.
extension MaybeMathSymbol {
    public typealias MathSymbol = Refined<_MathSymbolPredicate<Self>>
    public typealias NonMathSymbol = Refined<_MathSymbolPredicate<Self>>._Not
}

/// `And` + `MathSymbol` DSL extension.
extension Refined.and where Refined.Value: MaybeMathSymbol {
    public typealias MathSymbol = Refined._And<_MathSymbolPredicate<Refined.Value>>
    public typealias NonMathSymbol = Refined._And<MathSymbol._Not>
}

/// `Or` + `MathSymbol` DSL extension.
extension Refined.or where Refined.Value: MaybeMathSymbol {
    public typealias MathSymbol = Refined._Or<_MathSymbolPredicate<Refined.Value>>
    public typealias NonMathSymbol = Refined._Or<MathSymbol._Not>
}

// MARK: - Math

/// `Refined` + `MaybeMath` extension.
extension Refined: MaybeMath where WrappedValue: MaybeMath {}

/// Predicate that checks if value is math.
public struct Math<V: MaybeMath>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isMath
    }
}

/// Refined's internal typealias of `Math`.
public typealias _MathPredicate = Math

/// `Math` DSL extension.
extension MaybeMath {
    public typealias Math = Refined<_MathPredicate<Self>>
    public typealias NonMath = Refined<_MathPredicate<Self>>._Not
}

/// `And` + `Math` DSL extension.
extension Refined.and where Refined.Value: MaybeMath {
    public typealias Math = Refined._And<_MathPredicate<Refined.Value>>
    public typealias NonMath = Refined._And<Math._Not>
}

/// `Or` + `Math` DSL extension.
extension Refined.or where Refined.Value: MaybeMath {
    public typealias Math = Refined._Or<_MathPredicate<Refined.Value>>
    public typealias NonMath = Refined._Or<Math._Not>
}

// MARK: - Lowercase

/// `Refined` + `MaybeLowercase` extension.
extension Refined: MaybeLowercase where WrappedValue: MaybeLowercase {}

/// Predicate that checks if value is lowercase.
public struct Lowercase<V: MaybeLowercase>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isLowercase
    }
}

/// Refined's internal typealias of `Lowercase`.
public typealias _LowercasePredicate = Lowercase

/// `Lowercase` DSL extension.
extension MaybeLowercase {
    public typealias Lowercase = Refined<_LowercasePredicate<Self>>
    public typealias NonLowercase = Refined<_LowercasePredicate<Self>>._Not
}

/// `And` + `Lowercase` DSL extension.
extension Refined.and where Refined.Value: MaybeLowercase {
    public typealias Lowercase = Refined._And<_LowercasePredicate<Refined.Value>>
    public typealias NonLowercase = Refined._And<Lowercase._Not>
}

/// `Or` + `Lowercase` DSL extension.
extension Refined.or where Refined.Value: MaybeLowercase {
    public typealias Lowercase = Refined._Or<_LowercasePredicate<Refined.Value>>
    public typealias NonLowercase = Refined._Or<Lowercase._Not>
}

// MARK: - LogicalOrderException

/// `Refined` + `MaybeLogicalOrderException` extension.
extension Refined: MaybeLogicalOrderException where WrappedValue: MaybeLogicalOrderException {}

/// Predicate that checks if value is logicalOrderException.
public struct LogicalOrderException<V: MaybeLogicalOrderException>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isLogicalOrderException
    }
}

/// Refined's internal typealias of `LogicalOrderException`.
public typealias _LogicalOrderExceptionPredicate = LogicalOrderException

/// `LogicalOrderException` DSL extension.
extension MaybeLogicalOrderException {
    public typealias LogicalOrderException = Refined<_LogicalOrderExceptionPredicate<Self>>
    public typealias NonLogicalOrderException = Refined<_LogicalOrderExceptionPredicate<Self>>._Not
}

/// `And` + `LogicalOrderException` DSL extension.
extension Refined.and where Refined.Value: MaybeLogicalOrderException {
    public typealias LogicalOrderException = Refined._And<_LogicalOrderExceptionPredicate<Refined.Value>>
    public typealias NonLogicalOrderException = Refined._And<LogicalOrderException._Not>
}

/// `Or` + `LogicalOrderException` DSL extension.
extension Refined.or where Refined.Value: MaybeLogicalOrderException {
    public typealias LogicalOrderException = Refined._Or<_LogicalOrderExceptionPredicate<Refined.Value>>
    public typealias NonLogicalOrderException = Refined._Or<LogicalOrderException._Not>
}

// MARK: - Letter

/// `Refined` + `MaybeLetter` extension.
extension Refined: MaybeLetter where WrappedValue: MaybeLetter {}

/// Predicate that checks if value is letter.
public struct Letter<V: MaybeLetter>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isLetter
    }
}

/// Refined's internal typealias of `Letter`.
public typealias _LetterPredicate = Letter

/// `Letter` DSL extension.
extension MaybeLetter {
    public typealias Letter = Refined<_LetterPredicate<Self>>
    public typealias NonLetter = Refined<_LetterPredicate<Self>>._Not
}

/// `And` + `Letter` DSL extension.
extension Refined.and where Refined.Value: MaybeLetter {
    public typealias Letter = Refined._And<_LetterPredicate<Refined.Value>>
    public typealias NonLetter = Refined._And<Letter._Not>
}

/// `Or` + `Letter` DSL extension.
extension Refined.or where Refined.Value: MaybeLetter {
    public typealias Letter = Refined._Or<_LetterPredicate<Refined.Value>>
    public typealias NonLetter = Refined._Or<Letter._Not>
}

// MARK: - JoinControl

/// `Refined` + `MaybeJoinControl` extension.
extension Refined: MaybeJoinControl where WrappedValue: MaybeJoinControl {}

/// Predicate that checks if value is joinControl.
public struct JoinControl<V: MaybeJoinControl>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isJoinControl
    }
}

/// Refined's internal typealias of `JoinControl`.
public typealias _JoinControlPredicate = JoinControl

/// `JoinControl` DSL extension.
extension MaybeJoinControl {
    public typealias JoinControl = Refined<_JoinControlPredicate<Self>>
    public typealias NonJoinControl = Refined<_JoinControlPredicate<Self>>._Not
}

/// `And` + `JoinControl` DSL extension.
extension Refined.and where Refined.Value: MaybeJoinControl {
    public typealias JoinControl = Refined._And<_JoinControlPredicate<Refined.Value>>
    public typealias NonJoinControl = Refined._And<JoinControl._Not>
}

/// `Or` + `JoinControl` DSL extension.
extension Refined.or where Refined.Value: MaybeJoinControl {
    public typealias JoinControl = Refined._Or<_JoinControlPredicate<Refined.Value>>
    public typealias NonJoinControl = Refined._Or<JoinControl._Not>
}

// MARK: - Infinite

/// `Refined` + `MaybeInfinite` extension.
extension Refined: MaybeInfinite where WrappedValue: MaybeInfinite {}

/// Predicate that checks if value is infinite.
public struct Infinite<V: MaybeInfinite>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isInfinite
    }
}

/// Refined's internal typealias of `Infinite`.
public typealias _InfinitePredicate = Infinite

/// `Infinite` DSL extension.
extension MaybeInfinite {
    public typealias Infinite = Refined<_InfinitePredicate<Self>>
    public typealias NonInfinite = Refined<_InfinitePredicate<Self>>._Not
}

/// `And` + `Infinite` DSL extension.
extension Refined.and where Refined.Value: MaybeInfinite {
    public typealias Infinite = Refined._And<_InfinitePredicate<Refined.Value>>
    public typealias NonInfinite = Refined._And<Infinite._Not>
}

/// `Or` + `Infinite` DSL extension.
extension Refined.or where Refined.Value: MaybeInfinite {
    public typealias Infinite = Refined._Or<_InfinitePredicate<Refined.Value>>
    public typealias NonInfinite = Refined._Or<Infinite._Not>
}

// MARK: - IdstrinaryOperator

/// `Refined` + `MaybeIdstrinaryOperator` extension.
extension Refined: MaybeIdstrinaryOperator where WrappedValue: MaybeIdstrinaryOperator {}

/// Predicate that checks if value is idstrinaryOperator.
public struct IdstrinaryOperator<V: MaybeIdstrinaryOperator>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isIDSTrinaryOperator
    }
}

/// Refined's internal typealias of `IdstrinaryOperator`.
public typealias _IdstrinaryOperatorPredicate = IdstrinaryOperator

/// `IdstrinaryOperator` DSL extension.
extension MaybeIdstrinaryOperator {
    public typealias IdstrinaryOperator = Refined<_IdstrinaryOperatorPredicate<Self>>
    public typealias NonIdstrinaryOperator = Refined<_IdstrinaryOperatorPredicate<Self>>._Not
}

/// `And` + `IdstrinaryOperator` DSL extension.
extension Refined.and where Refined.Value: MaybeIdstrinaryOperator {
    public typealias IdstrinaryOperator = Refined._And<_IdstrinaryOperatorPredicate<Refined.Value>>
    public typealias NonIdstrinaryOperator = Refined._And<IdstrinaryOperator._Not>
}

/// `Or` + `IdstrinaryOperator` DSL extension.
extension Refined.or where Refined.Value: MaybeIdstrinaryOperator {
    public typealias IdstrinaryOperator = Refined._Or<_IdstrinaryOperatorPredicate<Refined.Value>>
    public typealias NonIdstrinaryOperator = Refined._Or<IdstrinaryOperator._Not>
}

// MARK: - Idstart

/// `Refined` + `MaybeIdstart` extension.
extension Refined: MaybeIdstart where WrappedValue: MaybeIdstart {}

/// Predicate that checks if value is idstart.
public struct Idstart<V: MaybeIdstart>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isIDStart
    }
}

/// Refined's internal typealias of `Idstart`.
public typealias _IdstartPredicate = Idstart

/// `Idstart` DSL extension.
extension MaybeIdstart {
    public typealias Idstart = Refined<_IdstartPredicate<Self>>
    public typealias NonIdstart = Refined<_IdstartPredicate<Self>>._Not
}

/// `And` + `Idstart` DSL extension.
extension Refined.and where Refined.Value: MaybeIdstart {
    public typealias Idstart = Refined._And<_IdstartPredicate<Refined.Value>>
    public typealias NonIdstart = Refined._And<Idstart._Not>
}

/// `Or` + `Idstart` DSL extension.
extension Refined.or where Refined.Value: MaybeIdstart {
    public typealias Idstart = Refined._Or<_IdstartPredicate<Refined.Value>>
    public typealias NonIdstart = Refined._Or<Idstart._Not>
}

// MARK: - IdsbinaryOperator

/// `Refined` + `MaybeIdsbinaryOperator` extension.
extension Refined: MaybeIdsbinaryOperator where WrappedValue: MaybeIdsbinaryOperator {}

/// Predicate that checks if value is idsbinaryOperator.
public struct IdsbinaryOperator<V: MaybeIdsbinaryOperator>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isIDSBinaryOperator
    }
}

/// Refined's internal typealias of `IdsbinaryOperator`.
public typealias _IdsbinaryOperatorPredicate = IdsbinaryOperator

/// `IdsbinaryOperator` DSL extension.
extension MaybeIdsbinaryOperator {
    public typealias IdsbinaryOperator = Refined<_IdsbinaryOperatorPredicate<Self>>
    public typealias NonIdsbinaryOperator = Refined<_IdsbinaryOperatorPredicate<Self>>._Not
}

/// `And` + `IdsbinaryOperator` DSL extension.
extension Refined.and where Refined.Value: MaybeIdsbinaryOperator {
    public typealias IdsbinaryOperator = Refined._And<_IdsbinaryOperatorPredicate<Refined.Value>>
    public typealias NonIdsbinaryOperator = Refined._And<IdsbinaryOperator._Not>
}

/// `Or` + `IdsbinaryOperator` DSL extension.
extension Refined.or where Refined.Value: MaybeIdsbinaryOperator {
    public typealias IdsbinaryOperator = Refined._Or<_IdsbinaryOperatorPredicate<Refined.Value>>
    public typealias NonIdsbinaryOperator = Refined._Or<IdsbinaryOperator._Not>
}

// MARK: - Ideographic

/// `Refined` + `MaybeIdeographic` extension.
extension Refined: MaybeIdeographic where WrappedValue: MaybeIdeographic {}

/// Predicate that checks if value is ideographic.
public struct Ideographic<V: MaybeIdeographic>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isIdeographic
    }
}

/// Refined's internal typealias of `Ideographic`.
public typealias _IdeographicPredicate = Ideographic

/// `Ideographic` DSL extension.
extension MaybeIdeographic {
    public typealias Ideographic = Refined<_IdeographicPredicate<Self>>
    public typealias NonIdeographic = Refined<_IdeographicPredicate<Self>>._Not
}

/// `And` + `Ideographic` DSL extension.
extension Refined.and where Refined.Value: MaybeIdeographic {
    public typealias Ideographic = Refined._And<_IdeographicPredicate<Refined.Value>>
    public typealias NonIdeographic = Refined._And<Ideographic._Not>
}

/// `Or` + `Ideographic` DSL extension.
extension Refined.or where Refined.Value: MaybeIdeographic {
    public typealias Ideographic = Refined._Or<_IdeographicPredicate<Refined.Value>>
    public typealias NonIdeographic = Refined._Or<Ideographic._Not>
}

// MARK: - Idcontinue

/// `Refined` + `MaybeIdcontinue` extension.
extension Refined: MaybeIdcontinue where WrappedValue: MaybeIdcontinue {}

/// Predicate that checks if value is idcontinue.
public struct Idcontinue<V: MaybeIdcontinue>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isIDContinue
    }
}

/// Refined's internal typealias of `Idcontinue`.
public typealias _IdcontinuePredicate = Idcontinue

/// `Idcontinue` DSL extension.
extension MaybeIdcontinue {
    public typealias Idcontinue = Refined<_IdcontinuePredicate<Self>>
    public typealias NonIdcontinue = Refined<_IdcontinuePredicate<Self>>._Not
}

/// `And` + `Idcontinue` DSL extension.
extension Refined.and where Refined.Value: MaybeIdcontinue {
    public typealias Idcontinue = Refined._And<_IdcontinuePredicate<Refined.Value>>
    public typealias NonIdcontinue = Refined._And<Idcontinue._Not>
}

/// `Or` + `Idcontinue` DSL extension.
extension Refined.or where Refined.Value: MaybeIdcontinue {
    public typealias Idcontinue = Refined._Or<_IdcontinuePredicate<Refined.Value>>
    public typealias NonIdcontinue = Refined._Or<Idcontinue._Not>
}

// MARK: - HexDigit

/// `Refined` + `MaybeHexDigit` extension.
extension Refined: MaybeHexDigit where WrappedValue: MaybeHexDigit {}

/// Predicate that checks if value is hexDigit.
public struct HexDigit<V: MaybeHexDigit>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isHexDigit
    }
}

/// Refined's internal typealias of `HexDigit`.
public typealias _HexDigitPredicate = HexDigit

/// `HexDigit` DSL extension.
extension MaybeHexDigit {
    public typealias HexDigit = Refined<_HexDigitPredicate<Self>>
    public typealias NonHexDigit = Refined<_HexDigitPredicate<Self>>._Not
}

/// `And` + `HexDigit` DSL extension.
extension Refined.and where Refined.Value: MaybeHexDigit {
    public typealias HexDigit = Refined._And<_HexDigitPredicate<Refined.Value>>
    public typealias NonHexDigit = Refined._And<HexDigit._Not>
}

/// `Or` + `HexDigit` DSL extension.
extension Refined.or where Refined.Value: MaybeHexDigit {
    public typealias HexDigit = Refined._Or<_HexDigitPredicate<Refined.Value>>
    public typealias NonHexDigit = Refined._Or<HexDigit._Not>
}

// MARK: - GraphemeExtend

/// `Refined` + `MaybeGraphemeExtend` extension.
extension Refined: MaybeGraphemeExtend where WrappedValue: MaybeGraphemeExtend {}

/// Predicate that checks if value is graphemeExtend.
public struct GraphemeExtend<V: MaybeGraphemeExtend>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isGraphemeExtend
    }
}

/// Refined's internal typealias of `GraphemeExtend`.
public typealias _GraphemeExtendPredicate = GraphemeExtend

/// `GraphemeExtend` DSL extension.
extension MaybeGraphemeExtend {
    public typealias GraphemeExtend = Refined<_GraphemeExtendPredicate<Self>>
    public typealias NonGraphemeExtend = Refined<_GraphemeExtendPredicate<Self>>._Not
}

/// `And` + `GraphemeExtend` DSL extension.
extension Refined.and where Refined.Value: MaybeGraphemeExtend {
    public typealias GraphemeExtend = Refined._And<_GraphemeExtendPredicate<Refined.Value>>
    public typealias NonGraphemeExtend = Refined._And<GraphemeExtend._Not>
}

/// `Or` + `GraphemeExtend` DSL extension.
extension Refined.or where Refined.Value: MaybeGraphemeExtend {
    public typealias GraphemeExtend = Refined._Or<_GraphemeExtendPredicate<Refined.Value>>
    public typealias NonGraphemeExtend = Refined._Or<GraphemeExtend._Not>
}

// MARK: - GraphemeBase

/// `Refined` + `MaybeGraphemeBase` extension.
extension Refined: MaybeGraphemeBase where WrappedValue: MaybeGraphemeBase {}

/// Predicate that checks if value is graphemeBase.
public struct GraphemeBase<V: MaybeGraphemeBase>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isGraphemeBase
    }
}

/// Refined's internal typealias of `GraphemeBase`.
public typealias _GraphemeBasePredicate = GraphemeBase

/// `GraphemeBase` DSL extension.
extension MaybeGraphemeBase {
    public typealias GraphemeBase = Refined<_GraphemeBasePredicate<Self>>
    public typealias NonGraphemeBase = Refined<_GraphemeBasePredicate<Self>>._Not
}

/// `And` + `GraphemeBase` DSL extension.
extension Refined.and where Refined.Value: MaybeGraphemeBase {
    public typealias GraphemeBase = Refined._And<_GraphemeBasePredicate<Refined.Value>>
    public typealias NonGraphemeBase = Refined._And<GraphemeBase._Not>
}

/// `Or` + `GraphemeBase` DSL extension.
extension Refined.or where Refined.Value: MaybeGraphemeBase {
    public typealias GraphemeBase = Refined._Or<_GraphemeBasePredicate<Refined.Value>>
    public typealias NonGraphemeBase = Refined._Or<GraphemeBase._Not>
}

// MARK: - FullCompositionExclusion

/// `Refined` + `MaybeFullCompositionExclusion` extension.
extension Refined: MaybeFullCompositionExclusion where WrappedValue: MaybeFullCompositionExclusion {}

/// Predicate that checks if value is fullCompositionExclusion.
public struct FullCompositionExclusion<V: MaybeFullCompositionExclusion>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isFullCompositionExclusion
    }
}

/// Refined's internal typealias of `FullCompositionExclusion`.
public typealias _FullCompositionExclusionPredicate = FullCompositionExclusion

/// `FullCompositionExclusion` DSL extension.
extension MaybeFullCompositionExclusion {
    public typealias FullCompositionExclusion = Refined<_FullCompositionExclusionPredicate<Self>>
    public typealias NonFullCompositionExclusion = Refined<_FullCompositionExclusionPredicate<Self>>._Not
}

/// `And` + `FullCompositionExclusion` DSL extension.
extension Refined.and where Refined.Value: MaybeFullCompositionExclusion {
    public typealias FullCompositionExclusion = Refined._And<_FullCompositionExclusionPredicate<Refined.Value>>
    public typealias NonFullCompositionExclusion = Refined._And<FullCompositionExclusion._Not>
}

/// `Or` + `FullCompositionExclusion` DSL extension.
extension Refined.or where Refined.Value: MaybeFullCompositionExclusion {
    public typealias FullCompositionExclusion = Refined._Or<_FullCompositionExclusionPredicate<Refined.Value>>
    public typealias NonFullCompositionExclusion = Refined._Or<FullCompositionExclusion._Not>
}

// MARK: - Finite

/// `Refined` + `MaybeFinite` extension.
extension Refined: MaybeFinite where WrappedValue: MaybeFinite {}

/// Predicate that checks if value is finite.
public struct Finite<V: MaybeFinite>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isFinite
    }
}

/// Refined's internal typealias of `Finite`.
public typealias _FinitePredicate = Finite

/// `Finite` DSL extension.
extension MaybeFinite {
    public typealias Finite = Refined<_FinitePredicate<Self>>
    public typealias NonFinite = Refined<_FinitePredicate<Self>>._Not
}

/// `And` + `Finite` DSL extension.
extension Refined.and where Refined.Value: MaybeFinite {
    public typealias Finite = Refined._And<_FinitePredicate<Refined.Value>>
    public typealias NonFinite = Refined._And<Finite._Not>
}

/// `Or` + `Finite` DSL extension.
extension Refined.or where Refined.Value: MaybeFinite {
    public typealias Finite = Refined._Or<_FinitePredicate<Refined.Value>>
    public typealias NonFinite = Refined._Or<Finite._Not>
}

// MARK: - Extender

/// `Refined` + `MaybeExtender` extension.
extension Refined: MaybeExtender where WrappedValue: MaybeExtender {}

/// Predicate that checks if value is extender.
public struct Extender<V: MaybeExtender>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isExtender
    }
}

/// Refined's internal typealias of `Extender`.
public typealias _ExtenderPredicate = Extender

/// `Extender` DSL extension.
extension MaybeExtender {
    public typealias Extender = Refined<_ExtenderPredicate<Self>>
    public typealias NonExtender = Refined<_ExtenderPredicate<Self>>._Not
}

/// `And` + `Extender` DSL extension.
extension Refined.and where Refined.Value: MaybeExtender {
    public typealias Extender = Refined._And<_ExtenderPredicate<Refined.Value>>
    public typealias NonExtender = Refined._And<Extender._Not>
}

/// `Or` + `Extender` DSL extension.
extension Refined.or where Refined.Value: MaybeExtender {
    public typealias Extender = Refined._Or<_ExtenderPredicate<Refined.Value>>
    public typealias NonExtender = Refined._Or<Extender._Not>
}

// MARK: - Empty

/// `Refined` + `MaybeEmpty` extension.
extension Refined: MaybeEmpty where WrappedValue: MaybeEmpty {}

/// Predicate that checks if value is empty.
public struct Empty<V: MaybeEmpty>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isEmpty
    }
}

/// Refined's internal typealias of `Empty`.
public typealias _EmptyPredicate = Empty

/// `Empty` DSL extension.
extension MaybeEmpty {
    public typealias Empty = Refined<_EmptyPredicate<Self>>
    public typealias NonEmpty = Refined<_EmptyPredicate<Self>>._Not
}

/// `And` + `Empty` DSL extension.
extension Refined.and where Refined.Value: MaybeEmpty {
    public typealias Empty = Refined._And<_EmptyPredicate<Refined.Value>>
    public typealias NonEmpty = Refined._And<Empty._Not>
}

/// `Or` + `Empty` DSL extension.
extension Refined.or where Refined.Value: MaybeEmpty {
    public typealias Empty = Refined._Or<_EmptyPredicate<Refined.Value>>
    public typealias NonEmpty = Refined._Or<Empty._Not>
}

// MARK: - EmojiPresentation

/// `Refined` + `MaybeEmojiPresentation` extension.
extension Refined: MaybeEmojiPresentation where WrappedValue: MaybeEmojiPresentation {}

/// Predicate that checks if value is emojiPresentation.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    public struct EmojiPresentation<V: MaybeEmojiPresentation>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isEmojiPresentation
    }
}

/// Refined's internal typealias of `EmojiPresentation`.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    public typealias _EmojiPresentationPredicate = EmojiPresentation

/// `EmojiPresentation` DSL extension.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    extension MaybeEmojiPresentation {
    public typealias EmojiPresentation = Refined<_EmojiPresentationPredicate<Self>>
    public typealias NonEmojiPresentation = Refined<_EmojiPresentationPredicate<Self>>._Not
}

/// `And` + `EmojiPresentation` DSL extension.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    extension Refined.and where Refined.Value: MaybeEmojiPresentation {
    public typealias EmojiPresentation = Refined._And<_EmojiPresentationPredicate<Refined.Value>>
    public typealias NonEmojiPresentation = Refined._And<EmojiPresentation._Not>
}

/// `Or` + `EmojiPresentation` DSL extension.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    extension Refined.or where Refined.Value: MaybeEmojiPresentation {
    public typealias EmojiPresentation = Refined._Or<_EmojiPresentationPredicate<Refined.Value>>
    public typealias NonEmojiPresentation = Refined._Or<EmojiPresentation._Not>
}

// MARK: - EmojiModifierBase

/// `Refined` + `MaybeEmojiModifierBase` extension.
extension Refined: MaybeEmojiModifierBase where WrappedValue: MaybeEmojiModifierBase {}

/// Predicate that checks if value is emojiModifierBase.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    public struct EmojiModifierBase<V: MaybeEmojiModifierBase>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isEmojiModifierBase
    }
}

/// Refined's internal typealias of `EmojiModifierBase`.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    public typealias _EmojiModifierBasePredicate = EmojiModifierBase

/// `EmojiModifierBase` DSL extension.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    extension MaybeEmojiModifierBase {
    public typealias EmojiModifierBase = Refined<_EmojiModifierBasePredicate<Self>>
    public typealias NonEmojiModifierBase = Refined<_EmojiModifierBasePredicate<Self>>._Not
}

/// `And` + `EmojiModifierBase` DSL extension.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    extension Refined.and where Refined.Value: MaybeEmojiModifierBase {
    public typealias EmojiModifierBase = Refined._And<_EmojiModifierBasePredicate<Refined.Value>>
    public typealias NonEmojiModifierBase = Refined._And<EmojiModifierBase._Not>
}

/// `Or` + `EmojiModifierBase` DSL extension.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    extension Refined.or where Refined.Value: MaybeEmojiModifierBase {
    public typealias EmojiModifierBase = Refined._Or<_EmojiModifierBasePredicate<Refined.Value>>
    public typealias NonEmojiModifierBase = Refined._Or<EmojiModifierBase._Not>
}

// MARK: - EmojiModifier

/// `Refined` + `MaybeEmojiModifier` extension.
extension Refined: MaybeEmojiModifier where WrappedValue: MaybeEmojiModifier {}

/// Predicate that checks if value is emojiModifier.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    public struct EmojiModifier<V: MaybeEmojiModifier>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isEmojiModifier
    }
}

/// Refined's internal typealias of `EmojiModifier`.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    public typealias _EmojiModifierPredicate = EmojiModifier

/// `EmojiModifier` DSL extension.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    extension MaybeEmojiModifier {
    public typealias EmojiModifier = Refined<_EmojiModifierPredicate<Self>>
    public typealias NonEmojiModifier = Refined<_EmojiModifierPredicate<Self>>._Not
}

/// `And` + `EmojiModifier` DSL extension.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    extension Refined.and where Refined.Value: MaybeEmojiModifier {
    public typealias EmojiModifier = Refined._And<_EmojiModifierPredicate<Refined.Value>>
    public typealias NonEmojiModifier = Refined._And<EmojiModifier._Not>
}

/// `Or` + `EmojiModifier` DSL extension.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    extension Refined.or where Refined.Value: MaybeEmojiModifier {
    public typealias EmojiModifier = Refined._Or<_EmojiModifierPredicate<Refined.Value>>
    public typealias NonEmojiModifier = Refined._Or<EmojiModifier._Not>
}

// MARK: - Emoji

/// `Refined` + `MaybeEmoji` extension.
extension Refined: MaybeEmoji where WrappedValue: MaybeEmoji {}

/// Predicate that checks if value is emoji.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    public struct Emoji<V: MaybeEmoji>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isEmoji
    }
}

/// Refined's internal typealias of `Emoji`.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    public typealias _EmojiPredicate = Emoji

/// `Emoji` DSL extension.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    extension MaybeEmoji {
    public typealias Emoji = Refined<_EmojiPredicate<Self>>
    public typealias NonEmoji = Refined<_EmojiPredicate<Self>>._Not
}

/// `And` + `Emoji` DSL extension.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    extension Refined.and where Refined.Value: MaybeEmoji {
    public typealias Emoji = Refined._And<_EmojiPredicate<Refined.Value>>
    public typealias NonEmoji = Refined._And<Emoji._Not>
}

/// `Or` + `Emoji` DSL extension.
@available(watchOS 3.1.1, macOS 10.12.2, tvOS 10.1, iOS 10.2, *)
    extension Refined.or where Refined.Value: MaybeEmoji {
    public typealias Emoji = Refined._Or<_EmojiPredicate<Refined.Value>>
    public typealias NonEmoji = Refined._Or<Emoji._Not>
}

// MARK: - Diacritic

/// `Refined` + `MaybeDiacritic` extension.
extension Refined: MaybeDiacritic where WrappedValue: MaybeDiacritic {}

/// Predicate that checks if value is diacritic.
public struct Diacritic<V: MaybeDiacritic>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isDiacritic
    }
}

/// Refined's internal typealias of `Diacritic`.
public typealias _DiacriticPredicate = Diacritic

/// `Diacritic` DSL extension.
extension MaybeDiacritic {
    public typealias Diacritic = Refined<_DiacriticPredicate<Self>>
    public typealias NonDiacritic = Refined<_DiacriticPredicate<Self>>._Not
}

/// `And` + `Diacritic` DSL extension.
extension Refined.and where Refined.Value: MaybeDiacritic {
    public typealias Diacritic = Refined._And<_DiacriticPredicate<Refined.Value>>
    public typealias NonDiacritic = Refined._And<Diacritic._Not>
}

/// `Or` + `Diacritic` DSL extension.
extension Refined.or where Refined.Value: MaybeDiacritic {
    public typealias Diacritic = Refined._Or<_DiacriticPredicate<Refined.Value>>
    public typealias NonDiacritic = Refined._Or<Diacritic._Not>
}

// MARK: - Deprecated

/// `Refined` + `MaybeDeprecated` extension.
extension Refined: MaybeDeprecated where WrappedValue: MaybeDeprecated {}

/// Predicate that checks if value is deprecated.
public struct Deprecated<V: MaybeDeprecated>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isDeprecated
    }
}

/// Refined's internal typealias of `Deprecated`.
public typealias _DeprecatedPredicate = Deprecated

/// `Deprecated` DSL extension.
extension MaybeDeprecated {
    public typealias Deprecated = Refined<_DeprecatedPredicate<Self>>
    public typealias NonDeprecated = Refined<_DeprecatedPredicate<Self>>._Not
}

/// `And` + `Deprecated` DSL extension.
extension Refined.and where Refined.Value: MaybeDeprecated {
    public typealias Deprecated = Refined._And<_DeprecatedPredicate<Refined.Value>>
    public typealias NonDeprecated = Refined._And<Deprecated._Not>
}

/// `Or` + `Deprecated` DSL extension.
extension Refined.or where Refined.Value: MaybeDeprecated {
    public typealias Deprecated = Refined._Or<_DeprecatedPredicate<Refined.Value>>
    public typealias NonDeprecated = Refined._Or<Deprecated._Not>
}

// MARK: - DefaultIgnorableCodePoint

/// `Refined` + `MaybeDefaultIgnorableCodePoint` extension.
extension Refined: MaybeDefaultIgnorableCodePoint where WrappedValue: MaybeDefaultIgnorableCodePoint {}

/// Predicate that checks if value is defaultIgnorableCodePoint.
public struct DefaultIgnorableCodePoint<V: MaybeDefaultIgnorableCodePoint>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isDefaultIgnorableCodePoint
    }
}

/// Refined's internal typealias of `DefaultIgnorableCodePoint`.
public typealias _DefaultIgnorableCodePointPredicate = DefaultIgnorableCodePoint

/// `DefaultIgnorableCodePoint` DSL extension.
extension MaybeDefaultIgnorableCodePoint {
    public typealias DefaultIgnorableCodePoint = Refined<_DefaultIgnorableCodePointPredicate<Self>>
    public typealias NonDefaultIgnorableCodePoint = Refined<_DefaultIgnorableCodePointPredicate<Self>>._Not
}

/// `And` + `DefaultIgnorableCodePoint` DSL extension.
extension Refined.and where Refined.Value: MaybeDefaultIgnorableCodePoint {
    public typealias DefaultIgnorableCodePoint = Refined._And<_DefaultIgnorableCodePointPredicate<Refined.Value>>
    public typealias NonDefaultIgnorableCodePoint = Refined._And<DefaultIgnorableCodePoint._Not>
}

/// `Or` + `DefaultIgnorableCodePoint` DSL extension.
extension Refined.or where Refined.Value: MaybeDefaultIgnorableCodePoint {
    public typealias DefaultIgnorableCodePoint = Refined._Or<_DefaultIgnorableCodePointPredicate<Refined.Value>>
    public typealias NonDefaultIgnorableCodePoint = Refined._Or<DefaultIgnorableCodePoint._Not>
}

// MARK: - Dash

/// `Refined` + `MaybeDash` extension.
extension Refined: MaybeDash where WrappedValue: MaybeDash {}

/// Predicate that checks if value is dash.
public struct Dash<V: MaybeDash>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isDash
    }
}

/// Refined's internal typealias of `Dash`.
public typealias _DashPredicate = Dash

/// `Dash` DSL extension.
extension MaybeDash {
    public typealias Dash = Refined<_DashPredicate<Self>>
    public typealias NonDash = Refined<_DashPredicate<Self>>._Not
}

/// `And` + `Dash` DSL extension.
extension Refined.and where Refined.Value: MaybeDash {
    public typealias Dash = Refined._And<_DashPredicate<Refined.Value>>
    public typealias NonDash = Refined._And<Dash._Not>
}

/// `Or` + `Dash` DSL extension.
extension Refined.or where Refined.Value: MaybeDash {
    public typealias Dash = Refined._Or<_DashPredicate<Refined.Value>>
    public typealias NonDash = Refined._Or<Dash._Not>
}

// MARK: - CurrencySymbol

/// `Refined` + `MaybeCurrencySymbol` extension.
extension Refined: MaybeCurrencySymbol where WrappedValue: MaybeCurrencySymbol {}

/// Predicate that checks if value is currencySymbol.
public struct CurrencySymbol<V: MaybeCurrencySymbol>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isCurrencySymbol
    }
}

/// Refined's internal typealias of `CurrencySymbol`.
public typealias _CurrencySymbolPredicate = CurrencySymbol

/// `CurrencySymbol` DSL extension.
extension MaybeCurrencySymbol {
    public typealias CurrencySymbol = Refined<_CurrencySymbolPredicate<Self>>
    public typealias NonCurrencySymbol = Refined<_CurrencySymbolPredicate<Self>>._Not
}

/// `And` + `CurrencySymbol` DSL extension.
extension Refined.and where Refined.Value: MaybeCurrencySymbol {
    public typealias CurrencySymbol = Refined._And<_CurrencySymbolPredicate<Refined.Value>>
    public typealias NonCurrencySymbol = Refined._And<CurrencySymbol._Not>
}

/// `Or` + `CurrencySymbol` DSL extension.
extension Refined.or where Refined.Value: MaybeCurrencySymbol {
    public typealias CurrencySymbol = Refined._Or<_CurrencySymbolPredicate<Refined.Value>>
    public typealias NonCurrencySymbol = Refined._Or<CurrencySymbol._Not>
}

// MARK: - Cased

/// `Refined` + `MaybeCased` extension.
extension Refined: MaybeCased where WrappedValue: MaybeCased {}

/// Predicate that checks if value is cased.
public struct Cased<V: MaybeCased>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isCased
    }
}

/// Refined's internal typealias of `Cased`.
public typealias _CasedPredicate = Cased

/// `Cased` DSL extension.
extension MaybeCased {
    public typealias Cased = Refined<_CasedPredicate<Self>>
    public typealias NonCased = Refined<_CasedPredicate<Self>>._Not
}

/// `And` + `Cased` DSL extension.
extension Refined.and where Refined.Value: MaybeCased {
    public typealias Cased = Refined._And<_CasedPredicate<Refined.Value>>
    public typealias NonCased = Refined._And<Cased._Not>
}

/// `Or` + `Cased` DSL extension.
extension Refined.or where Refined.Value: MaybeCased {
    public typealias Cased = Refined._Or<_CasedPredicate<Refined.Value>>
    public typealias NonCased = Refined._Or<Cased._Not>
}

// MARK: - CaseIgnorable

/// `Refined` + `MaybeCaseIgnorable` extension.
extension Refined: MaybeCaseIgnorable where WrappedValue: MaybeCaseIgnorable {}

/// Predicate that checks if value is caseIgnorable.
public struct CaseIgnorable<V: MaybeCaseIgnorable>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isCaseIgnorable
    }
}

/// Refined's internal typealias of `CaseIgnorable`.
public typealias _CaseIgnorablePredicate = CaseIgnorable

/// `CaseIgnorable` DSL extension.
extension MaybeCaseIgnorable {
    public typealias CaseIgnorable = Refined<_CaseIgnorablePredicate<Self>>
    public typealias NonCaseIgnorable = Refined<_CaseIgnorablePredicate<Self>>._Not
}

/// `And` + `CaseIgnorable` DSL extension.
extension Refined.and where Refined.Value: MaybeCaseIgnorable {
    public typealias CaseIgnorable = Refined._And<_CaseIgnorablePredicate<Refined.Value>>
    public typealias NonCaseIgnorable = Refined._And<CaseIgnorable._Not>
}

/// `Or` + `CaseIgnorable` DSL extension.
extension Refined.or where Refined.Value: MaybeCaseIgnorable {
    public typealias CaseIgnorable = Refined._Or<_CaseIgnorablePredicate<Refined.Value>>
    public typealias NonCaseIgnorable = Refined._Or<CaseIgnorable._Not>
}

// MARK: - Canonical

/// `Refined` + `MaybeCanonical` extension.
extension Refined: MaybeCanonical where WrappedValue: MaybeCanonical {}

/// Predicate that checks if value is canonical.
public struct Canonical<V: MaybeCanonical>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isCanonical
    }
}

/// Refined's internal typealias of `Canonical`.
public typealias _CanonicalPredicate = Canonical

/// `Canonical` DSL extension.
extension MaybeCanonical {
    public typealias Canonical = Refined<_CanonicalPredicate<Self>>
    public typealias NonCanonical = Refined<_CanonicalPredicate<Self>>._Not
}

/// `And` + `Canonical` DSL extension.
extension Refined.and where Refined.Value: MaybeCanonical {
    public typealias Canonical = Refined._And<_CanonicalPredicate<Refined.Value>>
    public typealias NonCanonical = Refined._And<Canonical._Not>
}

/// `Or` + `Canonical` DSL extension.
extension Refined.or where Refined.Value: MaybeCanonical {
    public typealias Canonical = Refined._Or<_CanonicalPredicate<Refined.Value>>
    public typealias NonCanonical = Refined._Or<Canonical._Not>
}

// MARK: - BidiMirrored

/// `Refined` + `MaybeBidiMirrored` extension.
extension Refined: MaybeBidiMirrored where WrappedValue: MaybeBidiMirrored {}

/// Predicate that checks if value is bidiMirrored.
public struct BidiMirrored<V: MaybeBidiMirrored>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isBidiMirrored
    }
}

/// Refined's internal typealias of `BidiMirrored`.
public typealias _BidiMirroredPredicate = BidiMirrored

/// `BidiMirrored` DSL extension.
extension MaybeBidiMirrored {
    public typealias BidiMirrored = Refined<_BidiMirroredPredicate<Self>>
    public typealias NonBidiMirrored = Refined<_BidiMirroredPredicate<Self>>._Not
}

/// `And` + `BidiMirrored` DSL extension.
extension Refined.and where Refined.Value: MaybeBidiMirrored {
    public typealias BidiMirrored = Refined._And<_BidiMirroredPredicate<Refined.Value>>
    public typealias NonBidiMirrored = Refined._And<BidiMirrored._Not>
}

/// `Or` + `BidiMirrored` DSL extension.
extension Refined.or where Refined.Value: MaybeBidiMirrored {
    public typealias BidiMirrored = Refined._Or<_BidiMirroredPredicate<Refined.Value>>
    public typealias NonBidiMirrored = Refined._Or<BidiMirrored._Not>
}

// MARK: - BidiControl

/// `Refined` + `MaybeBidiControl` extension.
extension Refined: MaybeBidiControl where WrappedValue: MaybeBidiControl {}

/// Predicate that checks if value is bidiControl.
public struct BidiControl<V: MaybeBidiControl>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isBidiControl
    }
}

/// Refined's internal typealias of `BidiControl`.
public typealias _BidiControlPredicate = BidiControl

/// `BidiControl` DSL extension.
extension MaybeBidiControl {
    public typealias BidiControl = Refined<_BidiControlPredicate<Self>>
    public typealias NonBidiControl = Refined<_BidiControlPredicate<Self>>._Not
}

/// `And` + `BidiControl` DSL extension.
extension Refined.and where Refined.Value: MaybeBidiControl {
    public typealias BidiControl = Refined._And<_BidiControlPredicate<Refined.Value>>
    public typealias NonBidiControl = Refined._And<BidiControl._Not>
}

/// `Or` + `BidiControl` DSL extension.
extension Refined.or where Refined.Value: MaybeBidiControl {
    public typealias BidiControl = Refined._Or<_BidiControlPredicate<Refined.Value>>
    public typealias NonBidiControl = Refined._Or<BidiControl._Not>
}

// MARK: - AsciihexDigit

/// `Refined` + `MaybeAsciihexDigit` extension.
extension Refined: MaybeAsciihexDigit where WrappedValue: MaybeAsciihexDigit {}

/// Predicate that checks if value is asciihexDigit.
public struct AsciihexDigit<V: MaybeAsciihexDigit>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isASCIIHexDigit
    }
}

/// Refined's internal typealias of `AsciihexDigit`.
public typealias _AsciihexDigitPredicate = AsciihexDigit

/// `AsciihexDigit` DSL extension.
extension MaybeAsciihexDigit {
    public typealias AsciihexDigit = Refined<_AsciihexDigitPredicate<Self>>
    public typealias NonAsciihexDigit = Refined<_AsciihexDigitPredicate<Self>>._Not
}

/// `And` + `AsciihexDigit` DSL extension.
extension Refined.and where Refined.Value: MaybeAsciihexDigit {
    public typealias AsciihexDigit = Refined._And<_AsciihexDigitPredicate<Refined.Value>>
    public typealias NonAsciihexDigit = Refined._And<AsciihexDigit._Not>
}

/// `Or` + `AsciihexDigit` DSL extension.
extension Refined.or where Refined.Value: MaybeAsciihexDigit {
    public typealias AsciihexDigit = Refined._Or<_AsciihexDigitPredicate<Refined.Value>>
    public typealias NonAsciihexDigit = Refined._Or<AsciihexDigit._Not>
}

// MARK: - Ascii

/// `Refined` + `MaybeAscii` extension.
extension Refined: MaybeAscii where WrappedValue: MaybeAscii {}

/// Predicate that checks if value is ascii.
public struct Ascii<V: MaybeAscii>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isASCII
    }
}

/// Refined's internal typealias of `Ascii`.
public typealias _AsciiPredicate = Ascii

/// `Ascii` DSL extension.
extension MaybeAscii {
    public typealias Ascii = Refined<_AsciiPredicate<Self>>
    public typealias NonAscii = Refined<_AsciiPredicate<Self>>._Not
}

/// `And` + `Ascii` DSL extension.
extension Refined.and where Refined.Value: MaybeAscii {
    public typealias Ascii = Refined._And<_AsciiPredicate<Refined.Value>>
    public typealias NonAscii = Refined._And<Ascii._Not>
}

/// `Or` + `Ascii` DSL extension.
extension Refined.or where Refined.Value: MaybeAscii {
    public typealias Ascii = Refined._Or<_AsciiPredicate<Refined.Value>>
    public typealias NonAscii = Refined._Or<Ascii._Not>
}

// MARK: - Alphabetic

/// `Refined` + `MaybeAlphabetic` extension.
extension Refined: MaybeAlphabetic where WrappedValue: MaybeAlphabetic {}

/// Predicate that checks if value is alphabetic.
public struct Alphabetic<V: MaybeAlphabetic>: Predicate {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return value.isAlphabetic
    }
}

/// Refined's internal typealias of `Alphabetic`.
public typealias _AlphabeticPredicate = Alphabetic

/// `Alphabetic` DSL extension.
extension MaybeAlphabetic {
    public typealias Alphabetic = Refined<_AlphabeticPredicate<Self>>
    public typealias NonAlphabetic = Refined<_AlphabeticPredicate<Self>>._Not
}

/// `And` + `Alphabetic` DSL extension.
extension Refined.and where Refined.Value: MaybeAlphabetic {
    public typealias Alphabetic = Refined._And<_AlphabeticPredicate<Refined.Value>>
    public typealias NonAlphabetic = Refined._And<Alphabetic._Not>
}

/// `Or` + `Alphabetic` DSL extension.
extension Refined.or where Refined.Value: MaybeAlphabetic {
    public typealias Alphabetic = Refined._Or<_AlphabeticPredicate<Refined.Value>>
    public typealias NonAlphabetic = Refined._Or<Alphabetic._Not>
}
