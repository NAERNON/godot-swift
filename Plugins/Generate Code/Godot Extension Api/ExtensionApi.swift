import Foundation

/// The structure representing the file `extension_api.json`.
struct ExtensionApi: Codable {
    
    let header: Header
    let builtinClassSizes: [ClassSize]
    let builtinClassMemberOffsets: [MemberOffset]
//-- not used but defined in the json file --//    let globalConstants
    let globalEnums: [Enum]
    let utilityFunctions: [UtilityFunction]
    let builtinClasses: [BuiltinClass]
    let classes: [Class]
    let singletons: [Singleton]
    let nativeStructures: [NativeStructure]
    
    private enum CodingKeys: String, CodingKey {
        case header
        case builtinClassSizes = "builtin_class_sizes"
        case builtinClassMemberOffsets = "builtin_class_member_offsets"
        case globalEnums = "global_enums"
        case utilityFunctions = "utility_functions"
        case builtinClasses = "builtin_classes"
        case classes
        case singletons
        case nativeStructures = "native_structures"
    }
    
    // MARK: - Argument
    
    struct Argument: Codable {
        let name: String
        let type: String
    }
    
    // MARK: - Header
    
    struct Header: Codable {
        let versionMajor: Int
        let versionMinor: Int
        let versionPatch: Int
        let versionStatus: String
        let versionBuild: String
        let versionFullName: String
        
        private enum CodingKeys: String, CodingKey {
            case versionMajor = "version_major"
            case versionMinor = "version_minor"
            case versionPatch = "version_patch"
            case versionStatus = "version_status"
            case versionBuild = "version_build"
            case versionFullName = "version_full_name"
        }
    }
    
    // MARK: - Class size
    
    struct ClassSize: Codable {
        let buildConfiguration: String
        let sizes: [Size]
        
        private enum CodingKeys: String, CodingKey {
            case buildConfiguration = "build_configuration"
            case sizes
        }
        
        // MARK: Size
        
        struct Size: Codable {
            let name: String
            let size: Int
        }
    }
    
    // MARK: - Member offset
    
    struct MemberOffset: Codable {
        let buildConfiguration: String
        let classes: [Class]
        
        private enum CodingKeys: String, CodingKey {
            case buildConfiguration = "build_configuration"
            case classes
        }
        
        // MARK: Class
        
        struct Class: Codable {
            let name: String
            let members: [Member]
            
            struct Member: Codable {
                let member: String
                let offset: Int
            }
        }
    }
    
    // MARK: - Enum
    
    struct Enum: Codable {
        let name: String
        let isBitfield: Bool?
        let values: [Value]
        
        private enum CodingKeys: String, CodingKey {
            case name
            case isBitfield = "is_bitfield"
            case values
        }
        
        // MARK: Value
        
        struct Value: Codable {
            let name: String
            let value: Int
        }
    }
    
    // MARK: - Utility function
    
    struct UtilityFunction: Codable {
        let name: String
        let returnType: String?
        let category: String
        let isVararg: Bool
        let hash: Int
        let arguments: [Argument]?
        
        private enum CodingKeys: String, CodingKey {
            case name
            case returnType = "return_type"
            case category
            case isVararg = "is_vararg"
            case hash
            case arguments
        }
    }
    
    // MARK: - Builtin class
    
    struct BuiltinClass: Codable {
        let name: String
        let indexingReturnType: String?
        let isKeyed: Bool
        let members: [Argument]?
        let constants: [Constant]?
        let enums: [Enum]?
        let operators: [Operator]
        let methods: [Method]?
        let constructors: [Constructor]
        let hasDestructor: Bool
        
        private enum CodingKeys: String, CodingKey {
            case name
            case indexingReturnType = "indexing_return_type"
            case isKeyed = "is_keyed"
            case members
            case constants
            case enums
            case operators
            case methods
            case constructors
            case hasDestructor = "has_destructor"
        }
        
        // MARK: Constant
        
        struct Constant: Codable {
            let name: String
            let type: String
            let value: String
        }
        
        // MARK: Operator
        
        struct Operator: Codable {
            let name: String
            let rightType: String?
            let returnType: String
            
            private enum CodingKeys: String, CodingKey {
                case name
                case rightType = "right_type"
                case returnType = "return_type"
            }
        }
        
        // MARK: Method
        
        struct Method: Codable {
            let name: String
            let returnType: String?
            let isVararg: Bool
            let isConst: Bool
            let isStatic: Bool
            let hash: Int
            let arguments: [Argument]?
            
            private enum CodingKeys: String, CodingKey {
                case name
                case returnType = "return_type"
                case isVararg = "is_vararg"
                case isConst = "is_const"
                case isStatic = "is_static"
                case hash
                case arguments
            }
        }
        
        // MARK: Constructor
        
        struct Constructor: Codable {
            let index: Int
            let arguments: [Argument]?
        }
    }
    
    // MARK: - Class
    
    struct Class: Codable {
        let name: String
        let isRefcounted: Bool
        let isInstantiable: Bool
        let inherits: String?
        let apiType: String
        let enums: [Enum]?
        let methods: [Method]?
        
        private enum CodingKeys: String, CodingKey {
            case name
            case isRefcounted = "is_refcounted"
            case isInstantiable = "is_instantiable"
            case inherits
            case apiType = "api_type"
            case enums
            case methods
        }
        
        // MARK: Method
        
        struct Method: Codable {
            let name: String
            let isConst: Bool
            let isVararg: Bool
            let isStatic: Bool
            let isVirtual: Bool
            let hash: Int?
            let returnValue: ReturnValue?
            let arguments: [Argument]?
            
            private enum CodingKeys: String, CodingKey {
                case name = "name"
                case isConst = "is_const"
                case isVararg = "is_vararg"
                case isStatic = "is_static"
                case isVirtual = "is_virtual"
                case hash = "hash"
                case returnValue = "return_value"
                case arguments = "arguments"
            }
            
            // MARK: Return value
            
            struct ReturnValue: Codable {
                let type: String
            }
        }
    }
    
    // MARK: - Singleton
    
    struct Singleton: Codable {
        let name: String
        let type: String
    }
    
    // MARK: - Native structure
    
    struct NativeStructure: Codable {
        let name: String
        let format: String
    }
    
}
