import Foundation

extension ClassRegister {
    enum PropertyMetadata {
        case intIsInt8
        case intIsInt16
        case intIsInt32
        case intIsInt64
        case intIsUInt8
        case intIsUInt16
        case intIsUInt32
        case intIsUInt64
        case realIsFloat
        case realIsDouble
        
        init?<T>(_ type: T.Type) {
            return nil
        }
        
#warning("Do all the metadata types.")
        init?(_ type: Int8) {
            self = .intIsInt8
        }
    }
}
