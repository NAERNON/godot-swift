
/// A representation of Godot builtin class sizes.
///
/// It can be decoded from the `extension_api.json` file.
///
/// Use the ``size(ofClass:for:)`` function to retreive the size
/// of a specific class.
struct GodotBuiltinClassSizes: Decodable {
    var sizes: [BuildConfiguration : [GodotType : Int]]
    
    // MARK: Init
    
    private enum CodingKeys: String, CodingKey {
        case buildConfiguration
        case sizes
        case name
        case size
    }
    
    init(from decoder: Decoder) throws {
        let builtinClassSizes = try Array<_BuiltinClassSizes>(from: decoder)
        
        var sizes = [BuildConfiguration : [GodotType : Int]]()
        for builtinClassSize in builtinClassSizes {
            var typeToSize = [GodotType : Int]()
            for size in builtinClassSize.sizes {
                typeToSize[size.name] = size.size
            }
            
            sizes[builtinClassSize.buildConfiguration] = typeToSize
        }
        
        self.sizes = sizes
    }
    
    // MARK: Get results
    
    func size(ofClass classType: GodotType, for configuration: BuildConfiguration) -> Int? {
        sizes[configuration]?[classType]
    }
}

/// A private type used to decode a ``GodotBuiltinClassSizes``.
private struct _BuiltinClassSizes: Decodable {
    var buildConfiguration: BuildConfiguration
    var sizes: [Size]
    
    // MARK: Size
    
    struct Size: Decodable {
        var name: GodotType
        var size: Int
    }
}
