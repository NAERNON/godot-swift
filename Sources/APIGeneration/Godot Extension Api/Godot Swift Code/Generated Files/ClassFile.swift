import Foundation
import CodeGenerator

struct ClassFile: GeneratedSwiftFile {
    let path: String
    let `class`: ExtensionApi.Class
    
    init(`class`: ExtensionApi.Class) {
        self.path = `class`.name.toSwift() + ".swift"
        self.class = `class`
    }
    
    var code: some Code {
        Import.foundation
        Import.godotExtensionHeaders
        
        `class`.code()
    }
}
