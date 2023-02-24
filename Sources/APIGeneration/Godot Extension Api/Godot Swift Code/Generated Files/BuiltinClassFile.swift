import Foundation
import CodeGenerator

struct BuiltinClassFile: GeneratedFile {
    let path: String
    let builtinClass: ExtensionApi.BuiltinClass
    let classSize: Int
    
    init(builtinClass: ExtensionApi.BuiltinClass,
         builtinClassSizes: ExtensionApi.ClassSizes,
         builtinClassMemberOffset: ExtensionApi.MemberOffsets) {
        self.path = builtinClass.name.toSwift() + "+Bindings.swift"
        self.builtinClass = builtinClass
        self.classSize = builtinClassSizes.sizes.first(where: { $0.name == builtinClass.name })?.size ?? 0
    }
    
    var code: some Code {
        Import.foundation
        Import.godotExtensionHeaders
        
        builtinClass.code(classSize: classSize)
    }
}
