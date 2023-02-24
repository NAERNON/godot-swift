import Foundation
import CodeGenerator

struct ClassFile: GeneratedFile {
    let path: String
    let `class`: ExtensionApi.Class
    
    init(`class`: ExtensionApi.Class) {
        self.path = `class`.name.toSwift() + ".swift"
        self.class = `class`
    }
    
    var code: some Code {
        Import.foundation
        Import.godotExtensionHeaders
        
        Space()
        
        `class`.code()
    }
}
