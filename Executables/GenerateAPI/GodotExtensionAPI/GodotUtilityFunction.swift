import SwiftSyntax
import SwiftSyntaxBuilder

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
    
    var usesVariantGeneric: Bool { true }
    
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
    
    private var ptrIdentifier: String {
        "__function_binding_\(baseName)"
    }
    
    func extensionFunctionPointerSyntax() -> DeclSyntax {
        """
        private var \(raw: ptrIdentifier): GDExtensionPtrUtilityFunction = {
            GodotStringName(swiftStaticString: \(literal: baseName)).withGodotUnsafeRawPointer { __ptr__method_name in
            return gdextension_interface_variant_get_ptr_utility_function(__ptr__method_name, \(literal: hash))!
            }
        }()
        """
    }
    
    func syntax() throws -> FunctionDeclSyntax {
        let options: GodotTypeSyntaxOptions = [.optionalClasses, .floatAsDouble]
        
        return try withNamePrefixed(by: "_").translated.declSyntax(options: options, keywords: .internal) {
            if let returnType = returnType {
                try returnType.instantiationSyntax(options: options) { instancePtr in
                    try translated.argumentsPackPointerAccessSyntax(options: options) { packName in
                        "\(raw: ptrIdentifier)(\(raw: instancePtr), \(raw: packName), \(raw: argumentsCountSyntax(type: Int32.self)))"
                    }
                }
            } else {
                try argumentsPackPointerAccessSyntax(options: options) { packName in
                    "\(raw: ptrIdentifier)(nil, \(raw: packName), \(raw: argumentsCountSyntax(type: Int32.self)))"
                }
            }
        }
    }
}
