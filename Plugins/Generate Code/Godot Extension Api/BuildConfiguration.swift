import Foundation

enum BuildConfiguration: String {
    enum FloatingPointType {
        case float, double
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
}
