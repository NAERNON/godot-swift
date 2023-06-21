
/// A representation of a Godot utility function.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotUtilityFunction: Decodable, GodotFunction {
    var name: String
    var returnType: GodotType?
    var category: String
    var isVararg: Bool
    var hash: Int
    var arguments: [GodotArgument]?
    
    // MARK: Syntax
    
    var functionPtrSyntax: String {
        "__function_binding_\(name)"
    }
}
