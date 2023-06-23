
/// A representation of a Godot utility function.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotUtilityFunction: Decodable, GodotFunction {
    var baseName: String
    var returnType: GodotType?
    var category: String
    var isVararg: Bool
    var hash: Int
    var arguments: [GodotArgument]?
    
    var name: String {
        switch baseName {
        case "print": "print_variant"
        default: baseName
        }
    }
    
    // MARK: Init
    
    enum CodingKeys: CodingKey {
        case name
        case returnType
        case category
        case isVararg
        case hash
        case arguments
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.baseName = try container.decode(String.self, forKey: .name)
        self.returnType = try container.decodeIfPresent(GodotType.self, forKey: .returnType)
        self.category = try container.decode(String.self, forKey: .category)
        self.isVararg = try container.decode(Bool.self, forKey: .isVararg)
        self.hash = try container.decode(Int.self, forKey: .hash)
        self.arguments = try container.decodeIfPresent([GodotArgument].self, forKey: .arguments)
    }
    
    // MARK: - Syntax
    
    var functionPtrSyntax: String {
        "__function_binding_\(baseName)"
    }
}
