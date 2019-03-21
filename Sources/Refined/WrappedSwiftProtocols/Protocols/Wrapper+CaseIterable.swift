import Wrapper

extension Wrapper where WrappedValue: CaseIterable {
    public typealias AllCases = AnyCollection<Self>

    public static var allCases: AllCases {
        return AnyCollection(WrappedValue.allCases.compactMap { self.init($0) })
    }
}
