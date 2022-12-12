import Foundation

struct BuiltinClassFile: GeneratedSwiftFile {
    let path: String
    let builtinClass: ExtensionApi.BuiltinClass
    let classSize: Int
    
    init(builtinClass: ExtensionApi.BuiltinClass,
         builtinClassSizes: ExtensionApi.ClassSizes,
         builtinClassMemberOffset: ExtensionApi.MemberOffsets) {
        let fileName: String
        if builtinClass.name.isBuiltinValueType {
            fileName = builtinClass.name.toSwift() + "+GeneratedExtensions"
        } else {
            fileName = builtinClass.name.toSwift()
        }
        self.path = fileName + ".swift"
        self.builtinClass = builtinClass
        self.classSize = builtinClassSizes.sizes.first(where: { $0.name == builtinClass.name })?.size ?? 0
    }
    
    var code: some SwiftCode {
        Import.foundation
        Import.godotExtensionHeaders
        
        Spacer()
        
        builtinClass.code(classSize: classSize)
    }
}
