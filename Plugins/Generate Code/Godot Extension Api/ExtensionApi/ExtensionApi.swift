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
    
    // MARK: - Argument
    
    struct Argument: Decodable {
        let name: String
        let type: InstanceType
        let meta: String?
        let defaultValue: ConstantValue?
    }
    
    // MARK: - Header
    
    struct Header: Decodable {
        let versionMajor: Int
        let versionMinor: Int
        let versionPatch: Int
        let versionStatus: String
        let versionBuild: String
        let versionFullName: String
    }
    
    // MARK: - Class sizes
    
    struct ClassSizes: Decodable {
        let buildConfiguration: BuildConfiguration
        let sizes: [Size]
        
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
        let format: NativeStructureFormat
    }
}
