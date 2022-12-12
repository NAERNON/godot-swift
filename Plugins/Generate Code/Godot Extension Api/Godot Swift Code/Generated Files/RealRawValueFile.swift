import Foundation

struct RealRawValueFile: GeneratedSwiftFile {
    let path: String
    let floatingPointType: BuildConfiguration.FloatingPointType
    
    init(floatingPointType: BuildConfiguration.FloatingPointType) {
        self.path = "RealRawValue.swift"
        self.floatingPointType = floatingPointType
    }
    
    var code: some SwiftCode {
        Import.foundation
        
        Spacer()
        
        Extension("Real") {
            Comment(style: .doc) {
"""
The underlying type of a `Real` value.
It can either be a `Float` or a `Double` depending on the build configuration.
"""
            }
            Typealias("RawValue", type: floatingTypeString).public()
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
