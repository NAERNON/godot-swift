import Foundation

/// A representation of the file `extension_api.json`.
struct GodotExtensionAPI: Decodable {
    let header: GodotExtensionHeader
    let builtinClassSizes: GodotBuiltinClassSizes
    let builtinClassMemberOffsets: GodotBuiltinClassMemberOffsets
    //-- not used but defined in the json file --//    let globalConstants
    let globalEnums: [GodotEnum]
    let utilityFunctions: [GodotUtilityFunction]
    let builtinClasses: [GodotBuiltinClass]
    let classes: [GodotClass]
    let singletons: [GodotSingleton]
    let nativeStructures: [GodotNativeStructure]
    
    // MARK: Init
    
    func builtinClassesToGenerate() -> [GodotBuiltinClass] {
        builtinClasses.filter { builtinClass in
            switch builtinClass.name {
            case "bool",
                "float",
                "int",
                "Nil": false
            default: true
            }
        }
    }
}
