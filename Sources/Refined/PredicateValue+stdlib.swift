// Generated with gyb. Do not edit.

import Swift

/// Predicate that represents a concrete `Comparable` value.
public protocol PredicateComparable: PredicateValue where Value: Comparable {}

/// Predicate that represents a concrete `Numeric` value.
public protocol PredicateNumeric: PredicateComparable where Value: Numeric {}

/// Predicate that represents a concrete `BinaryInteger` value.
public protocol PredicateBinaryInteger: PredicateNumeric where Value: BinaryInteger {}

/// Predicate that represents a concrete `Int` value.
public protocol PredicateInt: PredicateBinaryInteger where Value == Int {}

/// Predicate that represents a concrete `UInt` value.
public protocol PredicateUInt: PredicateNumeric where Value == UInt {}

/// Predicate that represents a concrete `Float` value.
public protocol PredicateFloat: PredicateNumeric where Value == Float {}

/// Predicate that represents a concrete `Double` value.
public protocol PredicateDouble: PredicateNumeric where Value == Double {}
