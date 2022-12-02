import Foundation

struct ClassFile: SwiftFile {
    let path: String
    let `class`: ExtensionApi.Class
    let translated: Bool
    
    init(`class`: ExtensionApi.Class, translated: Bool) {
        self.path = `class`.name + ".swift"
        self.class = `class`
        self.translated = translated
    }
    
    var code: some SwiftCode {
        Import.foundation
        Import.godotExtensionHeaders
        
        Spacer()
        
        `class`.code(translated: translated)
    }
}
