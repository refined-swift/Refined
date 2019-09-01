// Generated with gyb. Do not edit.

import Features
import Wrapper

// MARK: - LessEqual

/// `Refined` + `LessEqualCompatible` extension.
extension Refined: LessEqualCompatible where WrappedValue: LessEqualCompatible {}

/// Predicate that checks if a value is *lessEqual* compared to `PredicateValue`.
public struct LessEqual<V: PredicateValue>: Predicate where V.Value: LessEqualCompatible {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value lhs: V.Value) -> Bool {
        return lhs <= V.value
    }
}

/// Refined's internal typealias of `LessEqual`.
public typealias _LessEqualPredicate = LessEqual

/// `LessEqual` DSL extension.
extension LessEqualCompatible {
    public typealias LessEqual<T: PredicateValue> = Refined<_LessEqualPredicate<T>> where T.Value == Self
}

/// `And` + `LessEqual` DSL extension.
extension Refined.and where Refined.Value: LessEqualCompatible {
    public typealias LessEqual<T: PredicateValue> = Refined._And<_LessEqualPredicate<T>> where T.Value == Refined.Value
}

/// `Or` + `LessEqual` DSL extension.
extension Refined.or where Refined.Value: LessEqualCompatible {
    public typealias LessEqual<T: PredicateValue> = Refined._Or<_LessEqualPredicate<T>> where T.Value == Refined.Value
}

// MARK: - Less

/// `Refined` + `LessCompatible` extension.
extension Refined: LessCompatible where WrappedValue: LessCompatible {}

/// Predicate that checks if a value is *less* compared to `PredicateValue`.
public struct Less<V: PredicateValue>: Predicate where V.Value: LessCompatible {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value lhs: V.Value) -> Bool {
        return lhs < V.value
    }
}

/// Refined's internal typealias of `Less`.
public typealias _LessPredicate = Less

/// `Less` DSL extension.
extension LessCompatible {
    public typealias Less<T: PredicateValue> = Refined<_LessPredicate<T>> where T.Value == Self
}

/// `And` + `Less` DSL extension.
extension Refined.and where Refined.Value: LessCompatible {
    public typealias Less<T: PredicateValue> = Refined._And<_LessPredicate<T>> where T.Value == Refined.Value
}

/// `Or` + `Less` DSL extension.
extension Refined.or where Refined.Value: LessCompatible {
    public typealias Less<T: PredicateValue> = Refined._Or<_LessPredicate<T>> where T.Value == Refined.Value
}

// MARK: - GreaterEqual

/// `Refined` + `GreaterEqualCompatible` extension.
extension Refined: GreaterEqualCompatible where WrappedValue: GreaterEqualCompatible {}

/// Predicate that checks if a value is *greaterEqual* compared to `PredicateValue`.
public struct GreaterEqual<V: PredicateValue>: Predicate where V.Value: GreaterEqualCompatible {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value lhs: V.Value) -> Bool {
        return lhs >= V.value
    }
}

/// Refined's internal typealias of `GreaterEqual`.
public typealias _GreaterEqualPredicate = GreaterEqual

/// `GreaterEqual` DSL extension.
extension GreaterEqualCompatible {
    public typealias GreaterEqual<T: PredicateValue> = Refined<_GreaterEqualPredicate<T>> where T.Value == Self
}

/// `And` + `GreaterEqual` DSL extension.
extension Refined.and where Refined.Value: GreaterEqualCompatible {
    public typealias GreaterEqual<T: PredicateValue> = Refined._And<_GreaterEqualPredicate<T>> where T.Value == Refined.Value
}

/// `Or` + `GreaterEqual` DSL extension.
extension Refined.or where Refined.Value: GreaterEqualCompatible {
    public typealias GreaterEqual<T: PredicateValue> = Refined._Or<_GreaterEqualPredicate<T>> where T.Value == Refined.Value
}

// MARK: - Greater

/// `Refined` + `GreaterCompatible` extension.
extension Refined: GreaterCompatible where WrappedValue: GreaterCompatible {}

/// Predicate that checks if a value is *greater* compared to `PredicateValue`.
public struct Greater<V: PredicateValue>: Predicate where V.Value: GreaterCompatible {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value lhs: V.Value) -> Bool {
        return lhs > V.value
    }
}

/// Refined's internal typealias of `Greater`.
public typealias _GreaterPredicate = Greater

/// `Greater` DSL extension.
extension GreaterCompatible {
    public typealias Greater<T: PredicateValue> = Refined<_GreaterPredicate<T>> where T.Value == Self
}

/// `And` + `Greater` DSL extension.
extension Refined.and where Refined.Value: GreaterCompatible {
    public typealias Greater<T: PredicateValue> = Refined._And<_GreaterPredicate<T>> where T.Value == Refined.Value
}

/// `Or` + `Greater` DSL extension.
extension Refined.or where Refined.Value: GreaterCompatible {
    public typealias Greater<T: PredicateValue> = Refined._Or<_GreaterPredicate<T>> where T.Value == Refined.Value
}

// MARK: - Equal

/// `Refined` + `EqualCompatible` extension.
extension Refined: EqualCompatible where WrappedValue: EqualCompatible {}

/// Predicate that checks if a value is *equal* compared to `PredicateValue`.
public struct Equal<V: PredicateValue>: Predicate where V.Value: EqualCompatible {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value lhs: V.Value) -> Bool {
        return lhs == V.value
    }
}

/// Refined's internal typealias of `Equal`.
public typealias _EqualPredicate = Equal

/// `Equal` DSL extension.
extension EqualCompatible {
    public typealias Equal<T: PredicateValue> = Refined<_EqualPredicate<T>> where T.Value == Self
}

/// `And` + `Equal` DSL extension.
extension Refined.and where Refined.Value: EqualCompatible {
    public typealias Equal<T: PredicateValue> = Refined._And<_EqualPredicate<T>> where T.Value == Refined.Value
}

/// `Or` + `Equal` DSL extension.
extension Refined.or where Refined.Value: EqualCompatible {
    public typealias Equal<T: PredicateValue> = Refined._Or<_EqualPredicate<T>> where T.Value == Refined.Value
}
