
/// A representation of a Godot class.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotClass: Decodable {
    var name: GodotType
    var isRefcounted: Bool
    var isInstantiable: Bool
    var inherits: GodotType?
    var apiType: String
    var enums: [GodotEnum]?
    var methods: [Method]?
    
    // MARK: Method
    
    struct Method: Decodable, GodotFunction {
        var name: String
        var isConst: Bool
        var isVararg: Bool
        var isStatic: Bool
        var isVirtual: Bool
        var hash: Int?
        var returnValue: ReturnValue?
        var arguments: [GodotArgument]?
        
        var returnType: GodotType? { returnValue?.type }
        
        // MARK: Return value
        
        struct ReturnValue: Decodable {
            var type: GodotType
            var meta: String?
        }
    }
    
    // MARK: - Syntax
    
    var identifier: String {
        name.syntax()
    }
}
