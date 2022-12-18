import Foundation

struct ClassFile: GeneratedSwiftFile {
    let path: String
    let `class`: ExtensionApi.Class
    
    init(`class`: ExtensionApi.Class) {
        self.path = `class`.name.toSwift() + (`class`.isRootClass ? "+GeneratedExtensions" : "") + ".swift"
        self.class = `class`
    }
    
    var code: some SwiftCode {
        Import.foundation
        Import.godotExtensionHeaders
        
        Spacer()
        
        `class`.code()
    }
}
