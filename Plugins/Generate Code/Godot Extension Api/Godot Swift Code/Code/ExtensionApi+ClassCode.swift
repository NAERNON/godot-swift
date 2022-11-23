import Foundation

extension ExtensionApi.Class {
    func code(translated: Bool) -> some SwiftCode {
        Class(name, extensions: extensions) {
            enumsCode(translated: translated)
        }.public()
    }
    
    private var extensions: [String] {
        if let superclass = inherits {
            return [superclass]
        }
        return []
    }
    
    @CodeBuilder
    private func enumsCode(translated: Bool) -> some SwiftCode {
        if let enums = enums {
            Mark(text: "Enums", isSeparator: true)
            
            for `enum` in enums {
                Spacer()
                
                `enum`.code(translated: translated)
            }
        }
    }
}
