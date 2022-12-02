import Foundation

struct BuiltinClassFile: SwiftFile {
    let path: String
    let builtinClass: ExtensionApi.BuiltinClass
    let classSize: Int
    let members: [ExtensionApi.MemberOffsets.Class.Member]
    let translated: Bool
    
    init(builtinClass: ExtensionApi.BuiltinClass,
         builtinClassSizes: ExtensionApi.ClassSizes,
         builtinClassMemberOffset: ExtensionApi.MemberOffsets,
         translated: Bool) {
        self.path = builtinClass.name + ".swift"
        self.builtinClass = builtinClass
        self.classSize = builtinClassSizes.sizes.first(where: { $0.name == builtinClass.name })?.size ?? 0
        self.members = builtinClassMemberOffset.classes.first(where: { $0.name == builtinClass.name })?.members ?? []
        self.translated = translated
    }
    
    var code: some SwiftCode {
        Import.foundation
        Import.godotExtensionHeaders
        
        Spacer()
        
        builtinClass.code(classSize: classSize, members: members, translated: translated)
    }
}
