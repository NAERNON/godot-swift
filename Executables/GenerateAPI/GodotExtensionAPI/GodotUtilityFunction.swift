
/// A representation of a Godot utility function.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotUtilityFunction: Decodable {
    var name: String
    var returnType: GodotType?
    var category: String
    var isVararg: Bool
    var hash: Int
    var arguments: [GodotArgument]
    
    enum CodingKeys: CodingKey {
        case name
        case returnType
        case category
        case isVararg
        case hash
        case arguments
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.returnType = try container.decodeIfPresent(GodotType.self, forKey: .returnType)
        self.category = try container.decode(String.self, forKey: .category)
        self.isVararg = try container.decode(Bool.self, forKey: .isVararg)
        self.hash = try container.decode(Int.self, forKey: .hash)
        self.arguments = try container.decodeIfPresent([GodotArgument].self, forKey: .arguments) ?? []
    }
}

extension GodotUtilityFunction {
    private var ptrIdentifier: Syntax {
        "__function_binding_\(name)"
    }
    
    func bindingDeclSyntax() -> Syntax {
        """
        private var \(ptrIdentifier): GDExtensionPtrUtilityFunction = {
            GodotStringName(swiftStaticString: "\(name)").withUnsafeOpaquePointer { __ptr__method_name in
            return GodotExtension.Interface.variantGetPtrUtilityFunction(__ptr__method_name, \(hash))!
            }
        }()
        """
    }
    
    func declSyntax() -> Syntax {
        let options: GodotTypeSyntaxOptions = [.optionalClasses, .floatAsDouble]
        
        let function = GodotFunction(
            name: "_" + name,
            arguments: arguments,
            returnType: returnType,
            isVararg: isVararg,
            isStatic: false,
            isMutating: false,
            usesVariantGeneric: true,
            convertsAllParameterToVariant: false,
            accessControl: .internal
        )
        .translated()
        
        return function.declSyntax(options: options) {
            if let returnType = returnType {
                returnType.instantiationSyntax(options: options) { instancePtr in
                    function.argumentsPackPointerAccessSyntax(options: options) { packName in
                        "\(ptrIdentifier)(\(instancePtr), \(packName), \(function.argumentsCountSyntax(type: Int32.self)))"
                    }
                }
            } else {
                function.argumentsPackPointerAccessSyntax(options: options) { packName in
                    "\(ptrIdentifier)(nil, \(packName), \(function.argumentsCountSyntax(type: Int32.self)))"
                }
            }
        }
    }
}
