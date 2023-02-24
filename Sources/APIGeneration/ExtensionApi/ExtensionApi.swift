import Foundation

/// The structure representing the file `extension_api.json`.
struct ExtensionApi: Decodable {
    var header: Header
    var builtinClassSizes: [ClassSizes]
    var builtinClassMemberOffsets: [MemberOffsets]
//-- not used but defined in the json file --//    var globalConstants
    var globalEnums: [Enum]
    var utilityFunctions: [UtilityFunction]
    var builtinClasses: [BuiltinClass]
    var classes: [Class]
    var singletons: [Singleton]
    var nativeStructures: [NativeStructure]
    
    // MARK: - Argument
    
    struct Argument: Decodable {
        var name: String
        var type: InstanceType
        var meta: String?
        var defaultValue: ConstantValue?
    }
    
    // MARK: - Header
    
    struct Header: Decodable {
        var versionMajor: Int
        var versionMinor: Int
        var versionPatch: Int
        var versionStatus: String
        var versionBuild: String
        var versionFullName: String
    }
    
    // MARK: - Class sizes
    
    struct ClassSizes: Decodable {
        var buildConfiguration: BuildConfiguration
        var sizes: [Size]
        
        // MARK: Size
        
        struct Size: Decodable {
            var name: InstanceType
            var size: Int
        }
    }
    
    // MARK: - Member offsets
    
    struct MemberOffsets: Decodable {
        var buildConfiguration: BuildConfiguration
        var classes: [Class]
        
        // MARK: Class
        
        struct Class: Decodable {
            var name: InstanceType
            var members: [Member]
            
            struct Member: Decodable {
                var member: String
                var offset: Int
            }
        }
    }
    
    // MARK: - Enum
    
    struct Enum: Decodable {
        var name: InstanceType
        var isBitfield: Bool?
        var values: [Value]
        
        // MARK: Value
        
        struct Value: Decodable {
            var name: String
            var value: Int
        }
    }
    
    // MARK: - Utility function
    
    struct UtilityFunction: Decodable {
        var name: FunctionName
        var returnType: InstanceType?
        var category: String
        var isVararg: Bool
        var hash: Int
        var arguments: [Argument]?
    }
    
    // MARK: - Builtin class
    
    struct BuiltinClass: Decodable {
        var name: InstanceType
        var indexingReturnType: InstanceType?
        var isKeyed: Bool
        var members: [Argument]?
        var constants: [Constant]?
        var enums: [Enum]?
        var operators: [Operator]
        var methods: [Method]?
        var constructors: [Constructor]
        var hasDestructor: Bool
        
        // MARK: Constant
        
        struct Constant: Decodable {
            var name: String
            var type: InstanceType
            var value: ConstantValue
        }
        
        // MARK: Operator
        
        struct Operator: Decodable {
            var name: FunctionName
            var rightType: InstanceType?
            var returnType: InstanceType
        }
        
        // MARK: Method
        
        struct Method: Decodable {
            var name: FunctionName
            var returnType: InstanceType?
            var isVararg: Bool
            var isConst: Bool
            var isStatic: Bool
            var hash: Int
            var arguments: [Argument]?
        }
        
        // MARK: Constructor
        
        struct Constructor: Decodable {
            var index: Int
            var arguments: [Argument]?
        }
    }
    
    // MARK: - Class
    
    struct Class: Decodable {
        var name: InstanceType
        var isRefcounted: Bool
        var isInstantiable: Bool
        var inherits: InstanceType?
        var apiType: String
        var enums: [Enum]?
        var methods: [Method]?
        
        // MARK: Method
        
        struct Method: Decodable {
            var name: FunctionName
            var isConst: Bool
            var isVararg: Bool
            var isStatic: Bool
            var isVirtual: Bool
            var hash: Int?
            var returnValue: ReturnValue?
            var arguments: [Argument]?
            
            // MARK: Return value
            
            struct ReturnValue: Decodable {
                var type: InstanceType
                var meta: String?
            }
        }
    }
    
    // MARK: - Singleton
    
    struct Singleton: Decodable {
        var name: String
        var type: InstanceType
    }
    
    // MARK: - Native structure
    
    struct NativeStructure: Decodable {
        var name: String
        var format: NativeStructureFormat
    }
}
