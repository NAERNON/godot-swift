import Foundation

/// A representing of the file `extension_api.json`.
struct GodotExtensionAPI: Decodable {
    var header: GodotExtensionHeader
    var builtinClassSizes: GodotBuiltinClassSizes
//    var builtinClassMemberOffsets: [MemberOffsets]
    //-- not used but defined in the json file --//    var globalConstants
    var globalEnums: [GodotEnum]
//    var utilityFunctions: [UtilityFunction]
//    var builtinClasses: [BuiltinClass]
//    var classes: [Class]
//    var singletons: [Singleton]
//    var nativeStructures: [NativeStructure]
}
