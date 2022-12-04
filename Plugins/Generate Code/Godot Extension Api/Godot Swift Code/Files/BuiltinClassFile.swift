import Foundation

struct BuiltinClassFile: SwiftFile {
    let path: String
    let builtinClass: ExtensionApi.BuiltinClass
    let classSize: Int
    let translated: Bool
    
    init(builtinClass: ExtensionApi.BuiltinClass,
         builtinClassSizes: ExtensionApi.ClassSizes,
         builtinClassMemberOffset: ExtensionApi.MemberOffsets,
         translated: Bool) {
        let fileName: String
        if ExtensionApi.isBuiltinBaseType(builtinClass.name) {
            fileName = builtinClass.name + "+Bindings"
        } else {
            fileName = builtinClass.name
        }
        self.path = fileName + ".swift"
        self.builtinClass = builtinClass
        self.classSize = builtinClassSizes.sizes.first(where: { $0.name == builtinClass.name })?.size ?? 0
        self.translated = translated
    }
    
    var code: some SwiftCode {
        Import.foundation
        Import.godotExtensionHeaders
        
        Spacer()
        
        builtinClass.code(classSize: classSize, translated: translated)
    }
}
