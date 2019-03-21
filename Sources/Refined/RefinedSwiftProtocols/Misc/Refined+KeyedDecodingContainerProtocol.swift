import Swift

extension Refined: KeyedDecodingContainerProtocol where Constraint.Value: KeyedDecodingContainerProtocol {}
