import Foundation

enum BuildConfiguration: String {
    enum FloatingPointType {
        case float, double
    }
    
    enum Architecture {
        case arch32, arch64
    }
    
    case float32 = "float_32"
    case float64 = "float_64"
    case double32 = "double_32"
    case double64 = "double_64"
    
    var floatingPointType: FloatingPointType {
        switch self {
        case .float32, .float64: return .float
        case .double32, .double64: return .double
        }
    }
    
    var architecure: Architecture {
        switch self {
        case .float32, .double32: return .arch32
        case .float64, .double64: return .arch64
        }
    }
}

extension BuildConfiguration: Decodable {
    init(from decoder: Decoder) throws {
        let string = try String(from: decoder)
        guard let buildConfiguration = BuildConfiguration(rawValue: string) else {
            throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath,
                                                    debugDescription: "No correct build configuration found"))
        }
        self = buildConfiguration
    }
}
