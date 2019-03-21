import Swift

public enum NumberTypePrefix: String, CaseIterable {
    case uint8 = "UInt8_"
    case uint16 = "UInt16_"
    case uint32 = "UInt32_"
    case uint64 = "UInt64_"
    case uint = "UInt_"
    case int8 = "Int8_"
    case int16 = "Int16_"
    case int32 = "Int32_"
    case int64 = "Int64_"
    case int = "Int_"
    case float = "Float_"
    case double = "Double_"

    static func `for`(_ string: String) -> NumberTypePrefix? {
        for rawValue in allCases.map({ $0.rawValue }) {
            guard string.hasPrefix(rawValue) else { continue }
            return self.init(rawValue: rawValue)
        }
        return nil
    }
}
