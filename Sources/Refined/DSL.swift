// Generated with gyb. Do not edit.

import Swift

// MARK: - Equal

/// Refined's internal typealias of Equal.
public typealias _EqualPredicate = Equal

/// Equal DSL extension.
extension Equatable {
    public typealias Equal<T: PredicateValue> = Refined<_EqualPredicate<T>> where T.Value == Self
}

/// And + Equal DSL extension.
extension Refined.And where Refined.Value: Equatable {
     public typealias Equal<T: PredicateValue> = Refined._And<_EqualPredicate<T>> where T.Value == Refined.Value
}

/// Or + Equal DSL extension.
extension Refined.Or where Refined.Value: Equatable {
    public typealias Equal<T: PredicateValue> = Refined._Or<_EqualPredicate<T>> where T.Value == Refined.Value
}

// MARK: - Greater

/// Refined's internal typealias of Greater.
public typealias _GreaterPredicate = Greater

/// Greater DSL extension.
extension Comparable {
    public typealias Greater<T: PredicateComparable> = Refined<_GreaterPredicate<T>> where T.Value == Self
}

/// And + Greater DSL extension.
extension Refined.And where Refined.Value: Comparable {
     public typealias Greater<T: PredicateComparable> = Refined._And<_GreaterPredicate<T>> where T.Value == Refined.Value
}

/// Or + Greater DSL extension.
extension Refined.Or where Refined.Value: Comparable {
    public typealias Greater<T: PredicateComparable> = Refined._Or<_GreaterPredicate<T>> where T.Value == Refined.Value
}

// MARK: - GreaterEqual

/// Refined's internal typealias of GreaterEqual.
public typealias _GreaterEqualPredicate = GreaterEqual

/// GreaterEqual DSL extension.
extension Comparable {
    public typealias GreaterEqual<T: PredicateComparable> = Refined<_GreaterEqualPredicate<T>> where T.Value == Self
}

/// And + GreaterEqual DSL extension.
extension Refined.And where Refined.Value: Comparable {
     public typealias GreaterEqual<T: PredicateComparable> = Refined._And<_GreaterEqualPredicate<T>> where T.Value == Refined.Value
}

/// Or + GreaterEqual DSL extension.
extension Refined.Or where Refined.Value: Comparable {
    public typealias GreaterEqual<T: PredicateComparable> = Refined._Or<_GreaterEqualPredicate<T>> where T.Value == Refined.Value
}

// MARK: - Less

/// Refined's internal typealias of Less.
public typealias _LessPredicate = Less

/// Less DSL extension.
extension Comparable {
    public typealias Less<T: PredicateComparable> = Refined<_LessPredicate<T>> where T.Value == Self
}

/// And + Less DSL extension.
extension Refined.And where Refined.Value: Comparable {
     public typealias Less<T: PredicateComparable> = Refined._And<_LessPredicate<T>> where T.Value == Refined.Value
}

/// Or + Less DSL extension.
extension Refined.Or where Refined.Value: Comparable {
    public typealias Less<T: PredicateComparable> = Refined._Or<_LessPredicate<T>> where T.Value == Refined.Value
}

// MARK: - LessEqual

/// Refined's internal typealias of LessEqual.
public typealias _LessEqualPredicate = LessEqual

/// LessEqual DSL extension.
extension Comparable {
    public typealias LessEqual<T: PredicateComparable> = Refined<_LessEqualPredicate<T>> where T.Value == Self
}

/// And + LessEqual DSL extension.
extension Refined.And where Refined.Value: Comparable {
     public typealias LessEqual<T: PredicateComparable> = Refined._And<_LessEqualPredicate<T>> where T.Value == Refined.Value
}

/// Or + LessEqual DSL extension.
extension Refined.Or where Refined.Value: Comparable {
    public typealias LessEqual<T: PredicateComparable> = Refined._Or<_LessEqualPredicate<T>> where T.Value == Refined.Value
}
