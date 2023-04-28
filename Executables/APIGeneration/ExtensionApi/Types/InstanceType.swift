import Foundation

// MARK: - InstanceType

/// All types in the `ExtensionApi` are `InstanceType`.
/// This type provides helpers functions for translation and more.
indirect enum InstanceType: Equatable {
    case type(StringType)
    
    case `enum`(InstanceType)
    case bitfield(InstanceType)
    
    /// A type preceded by another type like "`Lhs.Rhs`".
    case scope(scopeType: InstanceType, type: InstanceType)
    
    /// A type with a generic like "`Lhs<Rhs>`".
    case generic(type: InstanceType, genericType: InstanceType)
    
    case optional(InstanceType)
    
    /// A type with varargs like "`Type...`".
    case varargs(InstanceType)
    
    case const(InstanceType)
    case pointer(InstanceType)
}

// MARK: - StringType

extension InstanceType {
    enum StringType: Equatable {
        case godot(String)
        case swift(String)
    }
}

// MARK: - InstanceType Extensions

extension InstanceType {
    enum InstanceTypeInitError: Error {
        case cannotRetreiveGeneric
    }
    
    init(godotString: some StringProtocol) throws {
        let string = godotString.trimmingCharacters(in: .whitespacesAndNewlines)
        if string.starts(with: "const ") {
            self = .const(try InstanceType(godotString: godotString.dropFirst(6)))
        } else if string.last == "*" {
            self = .pointer(try InstanceType(godotString: godotString.dropLast(1)))
        } else if string.last == ">" {
            guard let index = string.firstIndex(of: "<") else {
                throw InstanceTypeInitError.cannotRetreiveGeneric
            }
            
            self = .generic(type: try InstanceType(godotString: string[..<index]),
                            genericType: try InstanceType(godotString: string[string.index(after: index)...]))
        } else if string.starts(with: "enum::") {
            self = .enum(try InstanceType(godotString: godotString.dropFirst(6)))
        } else if string.starts(with: "bitfield::") {
            self = .bitfield(try InstanceType(godotString: godotString.dropFirst(10)))
        } else if string.starts(with: "typedarray::") {
            self = .generic(type: .type(.swift("TypedArray")),
                            genericType: try InstanceType(godotString: godotString.dropFirst(12)))
        } else if let index = string.lastIndex(of: ".") {
            self = .scope(scopeType: try InstanceType(godotString: string[..<index]),
                          type: try InstanceType(godotString: string[string.index(after: index)...]))
        } else {
            self = .type(.godot(string))
        }
    }
    
    init(swiftType: String) {
        self = .type(.swift(swiftType))
    }
    
    static let variant = InstanceType(swiftType: "Variant")
    static let opaque = InstanceType(swiftType: "Opaque")
    static let stringName = InstanceType(swiftType: "StringName")
    static let variantVarargs = InstanceType.varargs(InstanceType(swiftType: "Variant"))
    
    static func == (lhs: InstanceType, rhs: String) -> Bool {
        lhs.code(definedInside: nil) == rhs
    }
    
    static func != (lhs: InstanceType, rhs: String) -> Bool {
        !(lhs == rhs)
    }
    
    // MARK: Vars
    
    var isSwiftBaseType: Bool {
        switch self {
        case .type(let stringType):
            return stringType.isSwiftBaseType
        case .enum(let instanceType):
            return instanceType.isSwiftBaseType
        case .bitfield(let instanceType):
            return instanceType.isSwiftBaseType
        case .scope(let scopeType, type: _):
            return scopeType.isSwiftBaseType
        case .generic(let type, _):
            return type.isSwiftBaseType
        case .optional(let instanceType):
            return instanceType.isSwiftBaseType
        case .varargs(_):
            return true
        case .const(let instanceType):
            return instanceType.isSwiftBaseType
        case .pointer(_):
            return false
        }
    }
    
    var isBuiltinBaseValueType: Bool {
        switch self {
        case .type(let stringType):
            return stringType.isBuiltinBaseValueType
        case .enum(let instanceType):
            return instanceType.isBuiltinBaseValueType
        case .bitfield(let instanceType):
            return instanceType.isBuiltinBaseValueType
        case .scope(let scopeType, type: _):
            return scopeType.isBuiltinBaseValueType
        case .generic(let type, _):
            return type.isBuiltinBaseValueType
        case .optional(let instanceType):
            return instanceType.isBuiltinBaseValueType
        case .varargs(_):
            return false
        case .const(let instanceType):
            return instanceType.isBuiltinBaseValueType
        case .pointer(_):
            return false
        }
    }
    
    var isBuiltinOpaqueValueType: Bool {
        switch self {
        case .type(let stringType):
            return stringType.isBuiltinOpaqueValueType
        case .enum(let instanceType):
            return instanceType.isBuiltinOpaqueValueType
        case .bitfield(let instanceType):
            return instanceType.isBuiltinOpaqueValueType
        case .scope(let scopeType, type: _):
            return scopeType.isBuiltinOpaqueValueType
        case .generic(let type, _):
            return type.isBuiltinOpaqueValueType
        case .optional(let instanceType):
            return instanceType.isBuiltinOpaqueValueType
        case .varargs(_):
            return false
        case .const(let instanceType):
            return instanceType.isBuiltinOpaqueValueType
        case .pointer(_):
            return false
        }
    }
    
    var isValueType: Bool {
        switch self {
        case .type(let stringType):
            return stringType.isValueType
        case .enum(_):
            return true
        case .bitfield(_):
            return true
        case .scope(let scopeType, type: _):
            return scopeType.isValueType
        case .generic(let type, _):
            return type.isValueType
        case .optional(let instanceType):
            return instanceType.isValueType
        case .varargs(_):
            return true
        case .const(let instanceType):
            return instanceType.isValueType
        case .pointer(_):
            return true
        }
    }
    
    var isGodotClassType: Bool {
        !isValueType
    }
    
    var isEnumType: Bool {
        switch self {
        case .type(_):
            return false
        case .enum(_):
            return true
        case .bitfield(_):
            return false
        case .scope(_, let type):
            return type.isEnumType
        case .generic(let type, _):
            return type.isEnumType
        case .optional(let instanceType):
            return instanceType.isEnumType
        case .varargs(_):
            return false
        case .const(let instanceType):
            return instanceType.isEnumType
        case .pointer(let instanceType):
            return instanceType.isEnumType
        }
    }
    
    var isBitfieldType: Bool {
        switch self {
        case .type(_):
            return false
        case .enum(_):
            return false
        case .bitfield(_):
            return true
        case .scope(_, let type):
            return type.isBitfieldType
        case .generic(let type, _):
            return type.isBitfieldType
        case .optional(let instanceType):
            return instanceType.isBitfieldType
        case .varargs(_):
            return false
        case .const(let instanceType):
            return instanceType.isBitfieldType
        case .pointer(let instanceType):
            return instanceType.isBitfieldType
        }
    }
    
    var isPointer: Bool {
        switch self {
        case .const(let instanceType):
            return instanceType.isPointer
        case .pointer(_):
            return true
        default:
            return false
        }
    }
    
    var isOptional: Bool {
        switch self {
        case .optional(_):
            return true
        default:
            return false
        }
    }
    
    var godotVariantType: String {
        guard let type = typeToGodotVariantType[code(definedInside: nil)] else {
            fatalError("No variant type provided for \"\(code(definedInside: nil))\"")
        }
        
        return type
    }
    
    var finalType: StringType {
        switch self {
        case .type(let stringType):
            return stringType
        case .enum(let instanceType):
            return instanceType.finalType
        case .bitfield(let instanceType):
            return instanceType.finalType
        case .scope(scopeType: _, let type):
            return type.finalType
        case .generic(let type, _):
            return type.finalType
        case .optional(let instanceType):
            return instanceType.finalType
        case .varargs(let instanceType):
            return instanceType.finalType
        case .const(let instanceType):
            return instanceType.finalType
        case .pointer(let instanceType):
            return instanceType.finalType
        }
    }
    
    func firstScopeType() -> InstanceType? {
        switch self {
        case .scope(let scopeType, let type):
            if let firstScopeType = type.firstScopeType() {
                return firstScopeType
            }
            
            return scopeType
        default:
            return nil
        }
    }
    
    // MARK: Modifiers
    
    func `optional`(_ state: Bool = true) -> InstanceType {
        if state {
            return .optional(self)
        } else {
            return self
        }
    }
}


extension Optional where Wrapped == InstanceType {
    var godotVariantType: String {
        self?.godotVariantType ?? "GDEXTENSION_VARIANT_TYPE_NIL"
    }
}

extension InstanceType: Decodable {
    init(from decoder: Decoder) throws {
        let string = try String(from: decoder)
        try self.init(godotString: string)
    }
}

extension InstanceType: CustomDebugStringConvertible {
    var debugDescription: String {
        code(definedInside: nil)
    }
}

// MARK: - StringType Extensions

extension InstanceType.StringType {
    var string: String {
        switch self {
        case .godot(let string):
            return string
        case .swift(let string):
            return string
        }
    }
    
    func code(definedInside insideType: InstanceType?) -> String {
        switch self {
        case .godot(let string):
            switch string {
            case "float":
                // For Float types, it can be either a Float, a Double or a Real.
                // Double is used for builtin base classes that do use opaque.
                // Float is used for Color.
                // Real is used for all the other types.
                if let insideType,
                   insideType.isBuiltinBaseValueType {
                    return insideType == "Color" ? "Float" : "Real"
                } else {
                    return "Double"
                }
            case "real_t": return "Real"
            case "int": return "Int"
            case "int8_t": return "Int8"
            case "int16_t": return "Int16"
            case "int32_t": return "Int32"
            case "int64_t": return "Int64"
            case "uint8_t": return "UInt8"
            case "uint16_t": return "UInt16"
            case "uint32_t": return "UInt32"
            case "uint64_t": return "UInt64"
            case "bool": return "Bool"
            case "Error": return "ErrorType"
            case "Type":
                guard let insideType else {
                    return "Type"
                }
                
                if insideType == "Variant" {
                    return "ValueType"
                } else {
                    return insideType.code(definedInside: insideType) + "Type"
                }
            default: return string
            }
        case .swift(let string):
            return string
        }
    }
    
    var isValueType: Bool {
        isSwiftBaseType || isBuiltinBaseValueType || isBuiltinOpaqueValueType || isNativeStructType
    }
    
    var isSwiftBaseType: Bool {
        swiftBaseTypes.contains(string)
    }
    
    var isBuiltinBaseValueType: Bool {
        builtinBaseValueTypes.contains(string)
    }
    
    var isBuiltinOpaqueValueType: Bool {
        builtinOpaqueValueTypes.contains(string)
    }
    
    var isNativeStructType: Bool {
        nativeStructuresTypes.contains(string)
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.code(definedInside: nil) == rhs.code(definedInside: nil)
    }
    
    static func == (lhs: Self, rhs: String) -> Bool {
        lhs.string == rhs
    }
}

// MARK: - Types

/// The godot native variant enum value: `GDEXTENSION_VARIANT_TYPE_<type>`.
private let typeToGodotVariantType: [String : String] = [
    "Nil": "GDEXTENSION_VARIANT_TYPE_NIL",
    "Variant": "GDEXTENSION_VARIANT_TYPE_NIL",
    "bool": "GDEXTENSION_VARIANT_TYPE_BOOL",
    "Bool": "GDEXTENSION_VARIANT_TYPE_BOOL",
    "int": "GDEXTENSION_VARIANT_TYPE_INT",
    "Int": "GDEXTENSION_VARIANT_TYPE_INT",
    "float": "GDEXTENSION_VARIANT_TYPE_FLOAT",
    "Float": "GDEXTENSION_VARIANT_TYPE_FLOAT",
    "Double": "GDEXTENSION_VARIANT_TYPE_FLOAT",
    "String": "GDEXTENSION_VARIANT_TYPE_STRING",
    "Vector2": "GDEXTENSION_VARIANT_TYPE_VECTOR2",
    "Vector2i": "GDEXTENSION_VARIANT_TYPE_VECTOR2I",
    "Rect2": "GDEXTENSION_VARIANT_TYPE_RECT2",
    "Rect2i": "GDEXTENSION_VARIANT_TYPE_RECT2I",
    "Vector3": "GDEXTENSION_VARIANT_TYPE_VECTOR3",
    "Vector3i": "GDEXTENSION_VARIANT_TYPE_VECTOR3I",
    "Transform2D": "GDEXTENSION_VARIANT_TYPE_TRANSFORM2D",
    "Vector4": "GDEXTENSION_VARIANT_TYPE_VECTOR4",
    "Vector4i": "GDEXTENSION_VARIANT_TYPE_VECTOR4I",
    "Plane": "GDEXTENSION_VARIANT_TYPE_PLANE",
    "Quaternion": "GDEXTENSION_VARIANT_TYPE_QUATERNION",
    "AABB": "GDEXTENSION_VARIANT_TYPE_AABB",
    "Basis": "GDEXTENSION_VARIANT_TYPE_BASIS",
    "Transform3D": "GDEXTENSION_VARIANT_TYPE_TRANSFORM3D",
    "Projection": "GDEXTENSION_VARIANT_TYPE_PROJECTION",
    "Color": "GDEXTENSION_VARIANT_TYPE_COLOR",
    "StringName": "GDEXTENSION_VARIANT_TYPE_STRING_NAME",
    "NodePath": "GDEXTENSION_VARIANT_TYPE_NODE_PATH",
    "RID": "GDEXTENSION_VARIANT_TYPE_RID",
    "Object": "GDEXTENSION_VARIANT_TYPE_OBJECT",
    "Callable": "GDEXTENSION_VARIANT_TYPE_CALLABLE",
    "Signal": "GDEXTENSION_VARIANT_TYPE_SIGNAL",
    "Dictionary": "GDEXTENSION_VARIANT_TYPE_DICTIONARY",
    "Array": "GDEXTENSION_VARIANT_TYPE_ARRAY",
    "PackedByteArray": "GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY",
    "PackedInt32Array": "GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY",
    "PackedInt64Array": "GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY",
    "PackedFloat32Array": "GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY",
    "PackedFloat64Array": "GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY",
    "PackedStringArray": "GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY",
    "PackedVector2Array": "GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY",
    "PackedVector3Array": "GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY",
    "PackedColorArray": "GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY",
]

/// The base types defined by Swift.
private let swiftBaseTypes: Set<String> = [
    "Nil",
    "Bool",
    "Int",
    "Int8",
    "Int16",
    "Int32",
    "Int64",
    "UInt8",
    "UInt16",
    "UInt32",
    "UInt64",
    "Float",
    "Double",
    "Real",
    "GDExtensionInt",
    "GDExtensionObjectPtr",
    
    "float",
    "real_t",
    "int",
    "int8_t",
    "int16_t",
    "int32_t",
    "int64_t",
    "uint8_t",
    "uint16_t",
    "uint32_t",
    "uint64_t",
    "bool",
]

/// The builtin base structs defined as value types.
/// `Vector2` is a builtin struct and also a *base* one because there is no underlying `Opaque` value.
/// `Array` is a builtin struct but not a *base* one because there is an underlying `Opaque` value.
private let builtinBaseValueTypes: Set<String> = [
    "AABB",
    "Basis",
    "Color",
    "Plane",
    "Projection",
    "Quaternion",
    "Rect2",
    "Rect2i",
    "Transform2D",
    "Transform3D",
    "Vector2",
    "Vector2i",
    "Vector3",
    "Vector3i",
    "Vector4",
    "Vector4i",
]

/// The builtin generated structs defined as value types, but with underlying `Opaque` value.
private let builtinOpaqueValueTypes: Set<String> = [
    "Array",
    "Callable",
    "Dictionary",
    "NodePath",
    "PackedByteArray",
    "PackedColorArray",
    "PackedFloat32Array",
    "PackedFloat64Array",
    "PackedInt32Array",
    "PackedInt64Array",
    "PackedStringArray",
    "PackedVector2Array",
    "PackedVector3Array",
    "RID",
    "Signal",
    "String",
    "StringName",
    "TypedArray",
    "Variant",
    "Opaque",
]

/// The native structs of Godot..
private let nativeStructuresTypes: Set<String> = [
    "AudioFrame",
    "CaretInfo",
    "Glyph",
    "ObjectID",
    "PhysicsServer2DExtensionMotionResult",
    "PhysicsServer2DExtensionRayResult",
    "PhysicsServer2DExtensionShapeRestInfo",
    "PhysicsServer2DExtensionShapeResult",
    "PhysicsServer3DExtensionMotionCollision",
    "PhysicsServer3DExtensionMotionResult",
    "PhysicsServer3DExtensionRayResult",
    "PhysicsServer3DExtensionShapeRestInfo",
    "PhysicsServer3DExtensionShapeResult",
    "ScriptLanguageExtensionProfilingInfo",
]
