// Generated with gyb. Do not edit.

import Features
import Wrapper

// MARK: - Startindex

/// Refined + StartIndexable extension.
extension Refined: StartIndexable where WrappedValue: StartIndexable {}

/// Predicate that checks if value's startIndex satisfies generic constraint.
public struct Startindex<V: StartIndexable, C: Predicate>: Predicate where C.Value == Int {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return C.isValid(value: value.startIndex)
    }
}

/// Refined's internal typealias of Startindex.
public typealias _StartindexPredicate = Startindex

/// Startindex DSL extension.
extension StartIndexable {
    public typealias Startindex<T: Predicate> = Refined<_StartindexPredicate<Self, T>> where T.Value == Int
}

/// And + Startindex DSL extension.
extension Refined.And where Refined.Value: StartIndexable {
    public typealias Startindex<T: Predicate> = Refined._And<_StartindexPredicate<Refined.Value, T>> where T.Value == Int
}

/// Or + Startindex DSL extension.
extension Refined.Or where Refined.Value: StartIndexable {
    public typealias Startindex<T: Predicate> = Refined._Or<_StartindexPredicate<Refined.Value, T>> where T.Value == Int
}

// MARK: - Significandbitpattern

/// Refined + SignificandBitPatternable extension.
extension Refined: SignificandBitPatternable where WrappedValue: SignificandBitPatternable {}

/// Predicate that checks if value's significandBitPattern satisfies generic constraint.
public struct Significandbitpattern<V: SignificandBitPatternable, C: Predicate>: Predicate where C.Value == UInt64 {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return C.isValid(value: value.significandBitPattern)
    }
}

/// Refined's internal typealias of Significandbitpattern.
public typealias _SignificandbitpatternPredicate = Significandbitpattern

/// Significandbitpattern DSL extension.
extension SignificandBitPatternable {
    public typealias Significandbitpattern<T: Predicate> = Refined<_SignificandbitpatternPredicate<Self, T>> where T.Value == UInt64
}

/// And + Significandbitpattern DSL extension.
extension Refined.And where Refined.Value: SignificandBitPatternable {
    public typealias Significandbitpattern<T: Predicate> = Refined._And<_SignificandbitpatternPredicate<Refined.Value, T>> where T.Value == UInt64
}

/// Or + Significandbitpattern DSL extension.
extension Refined.Or where Refined.Value: SignificandBitPatternable {
    public typealias Significandbitpattern<T: Predicate> = Refined._Or<_SignificandbitpatternPredicate<Refined.Value, T>> where T.Value == UInt64
}

// MARK: - Exponent

/// Refined + Exponentiable extension.
extension Refined: Exponentiable where WrappedValue: Exponentiable {}

/// Predicate that checks if value's exponent satisfies generic constraint.
public struct Exponent<V: Exponentiable, C: Predicate>: Predicate where C.Value == Int {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return C.isValid(value: value.exponent)
    }
}

/// Refined's internal typealias of Exponent.
public typealias _ExponentPredicate = Exponent

/// Exponent DSL extension.
extension Exponentiable {
    public typealias Exponent<T: Predicate> = Refined<_ExponentPredicate<Self, T>> where T.Value == Int
}

/// And + Exponent DSL extension.
extension Refined.And where Refined.Value: Exponentiable {
    public typealias Exponent<T: Predicate> = Refined._And<_ExponentPredicate<Refined.Value, T>> where T.Value == Int
}

/// Or + Exponent DSL extension.
extension Refined.Or where Refined.Value: Exponentiable {
    public typealias Exponent<T: Predicate> = Refined._Or<_ExponentPredicate<Refined.Value, T>> where T.Value == Int
}

// MARK: - Exponentbitpattern

/// Refined + ExponentBitPatternable extension.
extension Refined: ExponentBitPatternable where WrappedValue: ExponentBitPatternable {}

/// Predicate that checks if value's exponentBitPattern satisfies generic constraint.
public struct Exponentbitpattern<V: ExponentBitPatternable, C: Predicate>: Predicate where C.Value == UInt {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return C.isValid(value: value.exponentBitPattern)
    }
}

/// Refined's internal typealias of Exponentbitpattern.
public typealias _ExponentbitpatternPredicate = Exponentbitpattern

/// Exponentbitpattern DSL extension.
extension ExponentBitPatternable {
    public typealias Exponentbitpattern<T: Predicate> = Refined<_ExponentbitpatternPredicate<Self, T>> where T.Value == UInt
}

/// And + Exponentbitpattern DSL extension.
extension Refined.And where Refined.Value: ExponentBitPatternable {
    public typealias Exponentbitpattern<T: Predicate> = Refined._And<_ExponentbitpatternPredicate<Refined.Value, T>> where T.Value == UInt
}

/// Or + Exponentbitpattern DSL extension.
extension Refined.Or where Refined.Value: ExponentBitPatternable {
    public typealias Exponentbitpattern<T: Predicate> = Refined._Or<_ExponentbitpatternPredicate<Refined.Value, T>> where T.Value == UInt
}

// MARK: - Endindex

/// Refined + EndIndexable extension.
extension Refined: EndIndexable where WrappedValue: EndIndexable {}

/// Predicate that checks if value's endIndex satisfies generic constraint.
public struct Endindex<V: EndIndexable, C: Predicate>: Predicate where C.Value == Int {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return C.isValid(value: value.endIndex)
    }
}

/// Refined's internal typealias of Endindex.
public typealias _EndindexPredicate = Endindex

/// Endindex DSL extension.
extension EndIndexable {
    public typealias Endindex<T: Predicate> = Refined<_EndindexPredicate<Self, T>> where T.Value == Int
}

/// And + Endindex DSL extension.
extension Refined.And where Refined.Value: EndIndexable {
    public typealias Endindex<T: Predicate> = Refined._And<_EndindexPredicate<Refined.Value, T>> where T.Value == Int
}

/// Or + Endindex DSL extension.
extension Refined.Or where Refined.Value: EndIndexable {
    public typealias Endindex<T: Predicate> = Refined._Or<_EndindexPredicate<Refined.Value, T>> where T.Value == Int
}

// MARK: - Count

/// Refined + Countable extension.
extension Refined: Countable where WrappedValue: Countable {}

/// Predicate that checks if value's count satisfies generic constraint.
public struct Count<V: Countable, C: Predicate>: Predicate where C.Value == Int {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return C.isValid(value: value.count)
    }
}

/// Refined's internal typealias of Count.
public typealias _CountPredicate = Count

/// Count DSL extension.
extension Countable {
    public typealias Count<T: Predicate> = Refined<_CountPredicate<Self, T>> where T.Value == Int
}

/// And + Count DSL extension.
extension Refined.And where Refined.Value: Countable {
    public typealias Count<T: Predicate> = Refined._And<_CountPredicate<Refined.Value, T>> where T.Value == Int
}

/// Or + Count DSL extension.
extension Refined.Or where Refined.Value: Countable {
    public typealias Count<T: Predicate> = Refined._Or<_CountPredicate<Refined.Value, T>> where T.Value == Int
}

// MARK: - Capacity

/// Refined + Capacitying extension.
extension Refined: Capacitying where WrappedValue: Capacitying {}

/// Predicate that checks if value's capacity satisfies generic constraint.
public struct Capacity<V: Capacitying, C: Predicate>: Predicate where C.Value == Int {
    @available(*, unavailable)
    private init() {}

    public static func isValid(value: V) -> Bool {
        return C.isValid(value: value.capacity)
    }
}

/// Refined's internal typealias of Capacity.
public typealias _CapacityPredicate = Capacity

/// Capacity DSL extension.
extension Capacitying {
    public typealias Capacity<T: Predicate> = Refined<_CapacityPredicate<Self, T>> where T.Value == Int
}

/// And + Capacity DSL extension.
extension Refined.And where Refined.Value: Capacitying {
    public typealias Capacity<T: Predicate> = Refined._And<_CapacityPredicate<Refined.Value, T>> where T.Value == Int
}

/// Or + Capacity DSL extension.
extension Refined.Or where Refined.Value: Capacitying {
    public typealias Capacity<T: Predicate> = Refined._Or<_CapacityPredicate<Refined.Value, T>> where T.Value == Int
}
