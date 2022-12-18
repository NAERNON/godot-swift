import Foundation

/// The structure representing the file `extension_api.json`.
struct ExtensionApi: Decodable {
    let header: Header
    let builtinClassSizes: [ClassSizes]
    let builtinClassMemberOffsets: [MemberOffsets]
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
    
    struct Argument: Decodable {
        let name: String
        let type: InstanceType
        let meta: String?
        let defaultValue: ConstantValue?
        
        private enum CodingKeys: String, CodingKey {
            case name
            case type
            case meta
            case defaultValue = "default_value"
        }
    }
    
    // MARK: - Header
    
    struct Header: Decodable {
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
    
    // MARK: - Class sizes
    
    struct ClassSizes: Decodable {
        let buildConfiguration: BuildConfiguration
        let sizes: [Size]
        
        private enum CodingKeys: String, CodingKey {
            case buildConfiguration = "build_configuration"
            case sizes
        }
        
        // MARK: Size
        
        struct Size: Decodable {
            let name: InstanceType
            let size: Int
        }
    }
    
    // MARK: - Member offsets
    
    struct MemberOffsets: Decodable {
        let buildConfiguration: BuildConfiguration
        let classes: [Class]
        
        private enum CodingKeys: String, CodingKey {
            case buildConfiguration = "build_configuration"
            case classes
        }
        
        // MARK: Class
        
        struct Class: Decodable {
            let name: InstanceType
            let members: [Member]
            
            struct Member: Decodable {
                let member: String
                let offset: Int
            }
        }
    }
    
    // MARK: - Enum
    
    struct Enum: Decodable {
        let name: InstanceType
        let isBitfield: Bool?
        let values: [Value]
        
        private enum CodingKeys: String, CodingKey {
            case name
            case isBitfield = "is_bitfield"
            case values
        }
        
        // MARK: Value
        
        struct Value: Decodable {
            let name: String
            let value: Int
        }
    }
    
    // MARK: - Utility function
    
    struct UtilityFunction: Decodable {
        let name: FunctionName
        let returnType: InstanceType?
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
    
    struct BuiltinClass: Decodable {
        let name: InstanceType
        let indexingReturnType: InstanceType?
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
        
        struct Constant: Decodable {
            let name: String
            let type: InstanceType
            let value: ConstantValue
        }
        
        // MARK: Operator
        
        struct Operator: Decodable {
            let name: FunctionName
            let rightType: InstanceType?
            let returnType: InstanceType
            
            private enum CodingKeys: String, CodingKey {
                case name
                case rightType = "right_type"
                case returnType = "return_type"
            }
        }
        
        // MARK: Method
        
        struct Method: Decodable {
            let name: FunctionName
            let returnType: InstanceType?
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
        
        struct Constructor: Decodable {
            let index: Int
            let arguments: [Argument]?
        }
    }
    
    // MARK: - Class
    
    struct Class: Decodable {
        let name: InstanceType
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
        
        struct Method: Decodable {
            let name: FunctionName
            let isConst: Bool
            let isVararg: Bool
            let isStatic: Bool
            let isVirtual: Bool
            let hash: Int?
            let returnValue: ReturnValue?
            let arguments: [Argument]?
            
            private enum CodingKeys: String, CodingKey {
                case name
                case isConst = "is_const"
                case isVararg = "is_vararg"
                case isStatic = "is_static"
                case isVirtual = "is_virtual"
                case hash
                case returnValue = "return_value"
                case arguments
            }
            
            // MARK: Return value
            
            struct ReturnValue: Decodable {
                let type: InstanceType
                let meta: String?
            }
        }
    }
    
    // MARK: - Singleton
    
    struct Singleton: Decodable {
        let name: String
        let type: InstanceType
    }
    
    // MARK: - Native structure
    
    struct NativeStructure: Decodable {
        let name: String
        let format: String
    }
}
