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
        
        Spacer()
        
        Class(`class`.name, extensions: extensions) {
            enumsCode
        }.public()
    }
    
    private var extensions: [String] {
        if let superclass = `class`.inherits {
            return [superclass]
        }
        return []
    }
    
    @CodeBuilder
    private var enumsCode: some SwiftCode {
        if let enums = `class`.enums {
            Mark(text: "Enums", isSeparator: true)
            
            for `enum` in enums {
                Spacer()
                
                `enum`.code(translated: translated)
            }
        }
    }
}
