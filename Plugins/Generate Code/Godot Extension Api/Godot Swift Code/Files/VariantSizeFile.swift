import Foundation

struct VariantSizeFile: SwiftFile {
    let path = "VariantSize.swift"
    let size: Int
    
    init(size: Int) {
        self.size = size
    }
    
    var code: some SwiftCode {
        Import.foundation
        
        Spacer()
        
        Extension("Variant") {
            Property("opaqueSize").letDefined().static().internal().type("Int").assign(value: "\(size)")
        }
    }
}
