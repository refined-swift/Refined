import Wrapper

extension Wrapper where WrappedValue: FloatingPoint {
    public init?<Source>(exactly value: Source) where Source : BinaryInteger {
        guard let wrapped = WrappedValue.init(exactly: value) else { return nil }
        self.init(wrapped)
    }

    public static var radix: Int {
        return WrappedValue.radix
    }

    public static var nan: WrappedValue {
        return WrappedValue.nan
    }

    public static var signalingNaN: WrappedValue {
        return WrappedValue.signalingNaN
    }

    public static var infinity: WrappedValue {
        return WrappedValue.infinity
    }

    public static var greatestFiniteMagnitude: WrappedValue {
        return WrappedValue.greatestFiniteMagnitude
    }

    public static var pi: WrappedValue {
        return WrappedValue.pi
    }

    public var ulp: WrappedValue {
        return wrapped.ulp
    }

    public static var ulpOfOne: WrappedValue {
        return WrappedValue.ulpOfOne
    }

    public static var leastNormalMagnitude: WrappedValue {
        return WrappedValue.leastNormalMagnitude
    }

    public static var leastNonzeroMagnitude: WrappedValue {
        return WrappedValue.leastNonzeroMagnitude
    }

    public var sign: FloatingPointSign {
        return wrapped.sign
    }

    public var exponent: WrappedValue.Exponent {
        return wrapped.exponent
    }

    public var significand: WrappedValue {
        return wrapped.significand
    }

    public static func + (lhs: Self, rhs: Self) -> WrappedValue {
        return lhs.wrapped + rhs.wrapped
    }

    public static func + (lhs: WrappedValue, rhs: Self) -> WrappedValue {
        return lhs + rhs.wrapped
    }

    public static func + (lhs: Self, rhs: WrappedValue) -> WrappedValue {
        return lhs.wrapped + rhs
    }

    public static func += (lhs: inout WrappedValue, rhs: Self) {
        lhs += rhs.wrapped
    }

    prefix public static func - (operand: Self) -> WrappedValue {
        return -operand.wrapped
    }

    public static func - (lhs: Self, rhs: Self) -> WrappedValue {
        return lhs.wrapped - rhs.wrapped
    }

    public static func - (lhs: WrappedValue, rhs: Self) -> WrappedValue {
        return lhs - rhs.wrapped
    }

    public static func - (lhs: Self, rhs: WrappedValue) -> WrappedValue {
        return lhs.wrapped - rhs
    }

    public static func -= (lhs: inout WrappedValue, rhs: Self) {
        lhs -= rhs.wrapped
    }

    public static func * (lhs: Self, rhs: Self) -> WrappedValue {
        return lhs.wrapped * rhs.wrapped
    }

    public static func * (lhs: WrappedValue, rhs: Self) -> WrappedValue {
        return lhs * rhs.wrapped
    }

    public static func * (lhs: Self, rhs: WrappedValue) -> WrappedValue {
        return lhs.wrapped * rhs
    }

    public static func *= (lhs: inout WrappedValue, rhs: Self) {
        lhs *= rhs.wrapped
    }

    public static func / (lhs: Self, rhs: Self) -> WrappedValue {
        return lhs.wrapped / rhs.wrapped
    }

    public static func / (lhs: WrappedValue, rhs: Self) -> WrappedValue {
        return lhs / rhs.wrapped
    }

    public static func / (lhs: Self, rhs: WrappedValue) -> WrappedValue {
        return lhs.wrapped / rhs
    }

    public static func /= (lhs: inout WrappedValue, rhs: Self) {
        lhs /= rhs.wrapped
    }

    public func remainder(dividingBy other: Self) -> WrappedValue {
        return wrapped.remainder(dividingBy: other.wrapped)
    }

    public func remainder(dividingBy other: WrappedValue) -> WrappedValue {
        return wrapped.remainder(dividingBy: other)
    }

    public func truncatingRemainder(dividingBy other: Self) -> WrappedValue {
        return wrapped.truncatingRemainder(dividingBy: other.wrapped)
    }

    public func truncatingRemainder(dividingBy other: WrappedValue) -> WrappedValue {
        return wrapped.truncatingRemainder(dividingBy: other)
    }

    public func squareRoot() -> WrappedValue {
        return wrapped.squareRoot()
    }

    public func addingProduct(_ lhs: Self, _ rhs: Self) -> WrappedValue {
        return wrapped.addingProduct(lhs.wrapped, rhs.wrapped)
    }

    public func addingProduct(_ lhs: WrappedValue, _ rhs: Self) -> WrappedValue {
        return wrapped.addingProduct(lhs, rhs.wrapped)
    }

    public func addingProduct(_ lhs: Self, _ rhs: WrappedValue) -> WrappedValue {
        return wrapped.addingProduct(lhs.wrapped, rhs)
    }

    public static func minimum(_ x: Self, _ y: Self) -> WrappedValue {
        return WrappedValue.minimum(x.wrapped, y.wrapped)
    }

    public static func minimum(_ x: WrappedValue, _ y: Self) -> WrappedValue {
        return WrappedValue.minimum(x, y.wrapped)
    }

    public static func minimum(_ x: Self, _ y: WrappedValue) -> WrappedValue {
        return WrappedValue.minimum(x.wrapped, y)
    }

    public static func maximum(_ x: Self, _ y: Self) -> WrappedValue {
        return WrappedValue.maximum(x.wrapped, y.wrapped)
    }

    public static func maximum(_ x: WrappedValue, _ y: Self) -> WrappedValue {
        return WrappedValue.maximum(x, y.wrapped)
    }

    public static func maximum(_ x: Self, _ y: WrappedValue) -> WrappedValue {
        return WrappedValue.maximum(x.wrapped, y)
    }

    public static func minimumMagnitude(_ x: Self, _ y: Self) -> WrappedValue {
        return WrappedValue.minimumMagnitude(x.wrapped, y.wrapped)
    }

    public static func minimumMagnitude(_ x: WrappedValue, _ y: Self) -> WrappedValue {
        return WrappedValue.minimumMagnitude(x, y.wrapped)
    }

    public static func minimumMagnitude(_ x: Self, _ y: WrappedValue) -> WrappedValue {
        return WrappedValue.minimumMagnitude(x.wrapped, y)
    }

    public static func maximumMagnitude(_ x: Self, _ y: Self) -> WrappedValue {
        return WrappedValue.maximumMagnitude(x.wrapped, y.wrapped)
    }

    public static func maximumMagnitude(_ x: WrappedValue, _ y: Self) -> WrappedValue {
        return WrappedValue.maximumMagnitude(x, y.wrapped)
    }

    public static func maximumMagnitude(_ x: Self, _ y: WrappedValue) -> WrappedValue {
        return WrappedValue.maximumMagnitude(x.wrapped, y)
    }

    public func rounded(_ rule: FloatingPointRoundingRule) -> WrappedValue {
        return wrapped.rounded(rule)
    }

    public var nextUp: WrappedValue {
        return wrapped.nextUp
    }

    public var nextDown: WrappedValue {
        return wrapped.nextDown
    }

    public func isEqual(to other: Self) -> Bool {
        return wrapped.isEqual(to: other.wrapped)
    }

    public func isEqual(to other: WrappedValue) -> Bool {
        return wrapped.isEqual(to: other)
    }

    public func isLess(than other: Self) -> Bool {
        return wrapped.isLess(than: other.wrapped)
    }

    public func isLessThanOrEqualTo(_ other: Self) -> Bool {
        return wrapped.isLessThanOrEqualTo(other.wrapped)
    }

    public func isLessThanOrEqualTo(_ other: WrappedValue) -> Bool {
        return wrapped.isLessThanOrEqualTo(other)
    }

    public func isTotallyOrdered(belowOrEqualTo other: Self) -> Bool {
        return wrapped.isTotallyOrdered(belowOrEqualTo: other.wrapped)
    }

    public func isTotallyOrdered(belowOrEqualTo other: WrappedValue) -> Bool {
        return wrapped.isTotallyOrdered(belowOrEqualTo: other)
    }

    public var isNormal: Bool {
        return wrapped.isNormal
    }

    public var isFinite: Bool {
        return wrapped.isFinite
    }

    public var isZero: Bool {
        return wrapped.isZero
    }

    public var isSubnormal: Bool {
        return wrapped.isSubnormal
    }

    public var isInfinite: Bool {
        return wrapped.isInfinite
    }

    public var isNaN: Bool {
        return wrapped.isNaN
    }

    public var isSignalingNaN: Bool {
        return wrapped.isSignalingNaN
    }

    public var floatingPointClass: FloatingPointClassification {
        return wrapped.floatingPointClass
    }

    public var isCanonical: Bool {
        return wrapped.isCanonical
    }
}

extension Wrapper where WrappedValue: FloatingPoint {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.wrapped == rhs.wrapped
    }

    public static func == (lhs: WrappedValue, rhs: Self) -> Bool {
        return lhs == rhs.wrapped

    }

    public static func == (lhs: Self, rhs: WrappedValue) -> Bool {
        return lhs.wrapped == rhs
    }

    public static func < (lhs: Self, rhs: Self) -> Bool {
        return lhs.wrapped < rhs.wrapped
    }

    public static func < (lhs: WrappedValue, rhs: Self) -> Bool {
        return lhs < rhs.wrapped
    }

    public static func < (lhs: Self, rhs: WrappedValue) -> Bool {
        return lhs.wrapped < rhs
    }

    public static func <= (lhs: Self, rhs: Self) -> Bool {
        return lhs.wrapped <= rhs.wrapped
    }

    public static func <= (lhs: WrappedValue, rhs: Self) -> Bool {
        return lhs <= rhs.wrapped
    }

    public static func <= (lhs: Self, rhs: WrappedValue) -> Bool {
        return lhs.wrapped <= rhs
    }


    public static func > (lhs: Self, rhs: Self) -> Bool {
        return lhs.wrapped > rhs.wrapped
    }

    public static func > (lhs: WrappedValue, rhs: Self) -> Bool {
        return lhs > rhs.wrapped
    }

    public static func > (lhs: Self, rhs: WrappedValue) -> Bool {
        return lhs.wrapped > rhs
    }

    public static func >= (lhs: Self, rhs: Self) -> Bool {
        return lhs.wrapped >= rhs.wrapped
    }

    public static func >= (lhs: WrappedValue, rhs: Self) -> Bool {
        return lhs >= rhs.wrapped
    }

    public static func >= (lhs: Self, rhs: WrappedValue) -> Bool {
        return lhs.wrapped >= rhs
    }
}
