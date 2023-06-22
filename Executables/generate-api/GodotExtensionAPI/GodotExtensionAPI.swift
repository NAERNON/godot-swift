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
    
    private let classTypes: Set<GodotType>
    
    // MARK: Init
    
    enum CodingKeys: CodingKey {
        case header
        case builtinClassSizes
        case builtinClassMemberOffsets
        case globalEnums
        case utilityFunctions
        case builtinClasses
        case classes
        case singletons
        case nativeStructures
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.header = try container.decode(GodotExtensionHeader.self, forKey: .header)
        self.builtinClassSizes = try container.decode(GodotBuiltinClassSizes.self, forKey: .builtinClassSizes)
        self.builtinClassMemberOffsets = try container.decode(GodotBuiltinClassMemberOffsets.self, forKey: .builtinClassMemberOffsets)
        self.globalEnums = try container.decode([GodotEnum].self, forKey: .globalEnums)
        self.utilityFunctions = try container.decode([GodotUtilityFunction].self, forKey: .utilityFunctions)
        self.builtinClasses = try container.decode([GodotBuiltinClass].self, forKey: .builtinClasses)
        self.classes = try container.decode([GodotClass].self, forKey: .classes)
        self.singletons = try container.decode([GodotSingleton].self, forKey: .singletons)
        self.nativeStructures = try container.decode([GodotNativeStructure].self, forKey: .nativeStructures)
        
        self.classTypes = Set(self.classes.map { $0.name })
    }
    
    // MARK: Access
    
    /// Returns a Boolean value indicating whether the given type
    /// is a Godot class in the `GodotExtensionAPI`.
    ///
    /// - Parameter type: The type to check.
    /// - Returns: `true` if the type is a Godot class (not a builtin Godot class).
    func typeIsGodotClass(_ type: GodotType) -> Bool {
        classTypes.contains(type)
    }
}
