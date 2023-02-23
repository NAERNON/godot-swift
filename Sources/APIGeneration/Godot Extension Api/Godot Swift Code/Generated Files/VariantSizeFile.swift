import Foundation
import CodeGenerator

struct VariantSizeFile: GeneratedSwiftFile {
    let path = "VariantSize.swift"
    let size: Int
    
    init(size: Int) {
        self.size = size
    }
    
    var code: some Code {
        Import.foundation
        
        Extension("Variant") {
            Let("opaqueSize").static().internal().typed("Int").assign("\(size)")
        }
    }
}
