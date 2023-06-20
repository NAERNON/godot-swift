import ArgumentParser

/// The build configuration of Godot.
///
/// Use this to configure Godot for either 32 bit or 64 bit,
/// as well as single-precision floating-point or double-precision floating-point types.
enum BuildConfiguration: String {
    /// The type of floating-point values.
    enum FloatingPointType {
        case float, double
    }
    
    /// Enumerates the kinds of architectures of Godot.
    enum Architecture {
        case arch32, arch64
    }
    
    /// A configuration with a 32 bit architecture and single-precision floating-point value type.
    case float32 = "float_32"
    /// A configuration with a 64 bit architecture and single-precision floating-point value type.
    case float64 = "float_64"
    /// A configuration with a 32 bit architecture and double-precision floating-point value type.
    case double32 = "double_32"
    /// A configuration with a 64 bit architecture and double-precision floating-point value type.
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

extension BuildConfiguration: ExpressibleByArgument {
    init?(argument: String) {
        switch argument {
        case "float-32": self = .float32
        case "float-64": self = .float64
        case "double-32": self = .double32
        case "double-64": self = .double64
        default: return nil
        }
    }
}
