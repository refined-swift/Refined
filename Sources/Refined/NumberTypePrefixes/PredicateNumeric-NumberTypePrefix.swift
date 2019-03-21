import Swift

extension PredicateNumeric {
    private static var nameComponents: (typePrefix: NumberTypePrefix?, number: String) {
        let typeName = "\(Self.self)"
        let numericTypePrefix = NumberTypePrefix.for(typeName)
        let prefixLength = (numericTypePrefix?.rawValue ?? "").count
        let numberString = String(typeName.dropFirst(prefixLength))
        return (typePrefix: numericTypePrefix, number: numberString)
    }

    public static var value: Value {
        let (prefix, number) = self.nameComponents
        guard let typePrefix = prefix ?? NumberTypePrefix(rawValue: "\(Value.self)") else {
            fatalError("Unhandled PredicateNumeric type prefix in: \(self)")
        }
        let parsedNumber: Any?
        switch typePrefix {
        case .uint8: parsedNumber = UInt8(number)
        case .uint16: parsedNumber = UInt16(number)
        case .uint32: parsedNumber = UInt32(number)
        case .uint64: parsedNumber = UInt64(number)
        case .uint: parsedNumber = UInt(number)
        case .int8: parsedNumber = Int8(number)
        case .int16: parsedNumber = Int16(number)
        case .int32: parsedNumber = Int32(number)
        case .int64: parsedNumber = Int64(number)
        case .int: parsedNumber = Int(number)
        case .float: parsedNumber = Float(number)
        case .double: parsedNumber = Double(number)
        }
        guard let value = parsedNumber as? Self.Value else {
            fatalError("Mismatching type, expected \(Value.self), found \(type(of: parsedNumber))")
        }
        return value
    }
}
