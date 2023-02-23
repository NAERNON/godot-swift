import Foundation
import CodeGenerator

struct RealRawValueFile: GeneratedSwiftFile {
    let path: String
    let floatingPointType: BuildConfiguration.FloatingPointType
    
    init(floatingPointType: BuildConfiguration.FloatingPointType) {
        self.path = "RealRawValue.swift"
        self.floatingPointType = floatingPointType
    }
    
    var code: some Code {
        Import.foundation
        
        Extension("Real") {
            Typealias("RawValue", type: floatingTypeString).public()
                .documentation {
"""
The underlying type of a `Real` value.
It can either be a `Float` or a `Double` depending on the build configuration.
"""
                }
        }
    }
    
    private var floatingTypeString: String {
        switch floatingPointType {
        case .float:
            return "Float"
        case .double:
            return "Double"
        }
    }
}
