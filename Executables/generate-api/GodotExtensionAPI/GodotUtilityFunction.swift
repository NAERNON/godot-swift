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
        DeclSyntax("""
        private var \(raw: ptrIdentifier): GDExtensionPtrUtilityFunction = {
            StringName(swiftString: \(literal: baseName)).withUnsafeRawPointer { __ptr__method_name in
            return gdextension_interface_variant_get_ptr_utility_function(__ptr__method_name, \(literal: hash))!
            }
        }()
        """)
    }
    
    func syntax() throws -> FunctionDeclSyntax {
        let options: GodotTypeSyntaxOptions = .floatAsDouble
        
        return try declSyntax(options: options) {
            if let returnType = returnType {
                try returnType.instantiationSyntax(options: options) { instanceType, instanceName in
                    try argumentsPackPointerAccessSyntax { packName in
                        try instanceType.pointerAccessSyntax(
                            instanceName: instanceName,
                            mutability: .mutable
                        ) { instancePointerName in
                            DeclSyntax("""
                            \(raw: ptrIdentifier)(\(raw: instancePointerName), \(raw: packName), \(raw: argumentsCountSyntax))
                            """)
                        }
                    }
                }
            } else {
                try argumentsPackPointerAccessSyntax { packName in
                    DeclSyntax("""
                    \(raw: ptrIdentifier)(nil, \(raw: packName), \(raw: argumentsCountSyntax))
                    """)
                }
            }
        }
        .addModifier(.init(name: .keyword(.public)))
    }
}
