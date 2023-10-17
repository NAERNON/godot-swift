
/// A representation of Godot builtin class sizes.
///
/// It can be decoded from the `extension_api.json` file.
///
/// Use the ``size(ofClass:for:)`` function to retrieve the size
/// of a specific class.
struct GodotBuiltinClassSizes: Decodable {
    var sizes: [BuildConfiguration : [GodotType : Int]]
    
    // MARK: Init
    
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
    
    // MARK: Access
    
    func size(ofClass classType: GodotType, for configuration: BuildConfiguration) -> Int? {
        sizes[configuration]?[classType]
    }
}

/// A private type used to decode a ``GodotBuiltinClassSizes``.
private struct _BuiltinClassSizes: Decodable {
    let buildConfiguration: BuildConfiguration
    let sizes: [Size]
    
    // MARK: Size
    
    struct Size: Decodable {
        let name: GodotType
        let size: Int
    }
}
