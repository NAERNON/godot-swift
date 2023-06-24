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
    private let builtinClassTypes: Set<GodotType>
    
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
        self.builtinClassTypes = Set(self.builtinClasses.map { $0.name })
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
    
    /// Returns a Boolean value indicating whether the given type
    /// is a Godot builtin class in the `GodotExtensionAPI`.
    ///
    /// - Parameter type: The type to check.
    /// - Returns: `true` if the type is a Godot builtin class (not a Godot class).
    func typeIsBuiltinGodotClass(_ type: GodotType) -> Bool {
        builtinClassTypes.contains(type)
    }
    
    /// Returns a Boolean value indicating whether the given type
    /// is a Godot builtin class in the `GodotExtensionAPI`,
    /// and that doesn't use an opaque underlying value
    ///
    /// - Parameter type: The type to check.
    /// - Returns: `true` if the type is a Godot builtin class (not a Godot class)
    /// without an opaque underlying value.
    func typeIsBuiltinGodotClassWithoutOpaque(_ type: GodotType) -> Bool {
        guard builtinClassTypes.contains(type) else {
            return false
        }
        
        switch type.syntax() {
        case "AABB", "Basis", "Color", "Plane", "Projection", "Quaternion", "Rect2", "Rect2i", "Transform2D", "Transform3D", "Vector2", "Vector2i", "Vector3", "Vector3i", "Vector4", "Vector4i":
            return true
        default:
            return false
        }
    }
    
    /// Returns a Boolean value indicating whether the given type
    /// is a Godot builtin class in the `GodotExtensionAPI`,
    /// and that does use an opaque underlying value
    ///
    /// - Parameter type: The type to check.
    /// - Returns: `true` if the type is a Godot builtin class (not a Godot class)
    /// with an opaque underlying value.
    func typeIsBuiltinGodotClassWithOpaque(_ type: GodotType) -> Bool {
        typeIsBuiltinGodotClass(type) && !typeIsBuiltinGodotClassWithoutOpaque(type)
    }
    
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
