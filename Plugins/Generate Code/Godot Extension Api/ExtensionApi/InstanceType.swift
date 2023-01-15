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
        lhs.toSwift(definedInside: nil) == rhs
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
            return false
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
    
    /// Returns how this type should be accessed for Godot.
    var accessPointerMethod: PointerAccessMethod {
        if self == .variantVarargs {
            return .variantCollection
        } else if self == .opaque {
            return .opaque
        } else if isEnumType || isBitfieldType {
            return .swiftStandard
        } else if !isValueType || isBuiltinOpaqueValueType {
            return .godotNative
        } else {
            return .swiftStandard
        }
    }
    
    var godotVariantType: String {
        guard let type = typeToGodotVariantType[toSwift(definedInside: nil)] else {
            fatalError("No variant type provided for \"\(toSwift(definedInside: nil))\"")
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
    
    // MARK: Code
    
    func toSwift(definedInside insideType: InstanceType? = nil) -> String {
        _toSwift(isConst: false, definedInside: insideType)
    }
    
    private func _toSwift(isConst: Bool, definedInside insideType: InstanceType?) -> String {
        switch self {
        case .type(let stringType):
            return stringType.toSwift(definedInside: insideType)
        case .enum(let stringType):
            return stringType.toSwift(definedInside: insideType)
        case .bitfield(let stringType):
            return stringType.toSwift(definedInside: insideType)
        case .scope(let scopeType, let type):
            let scopeString = insideType == scopeType ? "" : scopeType._toSwift(isConst: false, definedInside: insideType) + "."
            return scopeString + type._toSwift(isConst: isConst, definedInside: scopeType)
        case .generic(let type, let genericType):
            return type._toSwift(isConst: isConst, definedInside: insideType)
            + "<" + genericType._toSwift(isConst: false, definedInside: insideType) + ">"
        case .optional(let instanceType):
            return instanceType._toSwift(isConst: isConst, definedInside: insideType) + "?"
        case .varargs(let instanceType):
            return instanceType._toSwift(isConst: isConst, definedInside: insideType) + "..."
        case .const(let instanceType):
            return instanceType._toSwift(isConst: true, definedInside: insideType)
        case .pointer(let instanceType):
            let pointerType = isConst ? "UnsafePointer" : "UnsafeMutablePointer"
            return pointerType + "<" + instanceType._toSwift(isConst: false, definedInside: insideType) + ">"
        }
    }
    
    /// Returns the type that will be generated for returning the given type.
    /// For instance, a `String` type will return `String`,
    /// while an `Enum` type will return `Int`.
    var temporaryInstanceType: InstanceType {
        if isEnumType || isBitfieldType {
            return InstanceType(swiftType: "Int")
        } else if isGodotClassType {
            return InstanceType(swiftType: "GDNativeObjectPtr")
        } else {
            return self
        }
    }
    
    /// Returns the temporary initializer for a given type.
    /// For instance, a `String` type will return `var returnValue = String()`,
    /// while an `Enum` type will return `var returnValue = Int(0)`.
    @CodeBuilder
    func temporaryInitializerCode(propertyName: String, definedInside insideType: InstanceType?) -> some SwiftCode {
        if isEnumType || isBitfieldType {
            Property(propertyName).defined(isVar: true)
                .assign(value: "Int(0)")
        } else if isGodotClassType {
            Property(propertyName).defined(isVar: true)
                .type("GDNativeObjectPtr!")
        } else {
            Property(propertyName).defined(isVar: temporaryInstanceType.accessPointerMethod == .swiftStandard)
                .assign(value: temporaryInstanceType.toSwift(definedInside: insideType) + "()")
        }
    }
    
    /// Returns the temporary return code for a given type.
    /// For instance, a `String` type will return `return returnValue`,
    /// while an `Enum` type will return `return = Type(rawValue: returnValue)`.
    @CodeBuilder
    func temporaryReturnCode(propertyName: String,
                             definedInside insideType: InstanceType?) -> some SwiftCode {
        if isEnumType {
            Return(toSwift(definedInside: insideType) + "(rawValue: \(propertyName))!")
        } else if isBitfieldType {
            Return(toSwift(definedInside: insideType) + "(rawValue: \(propertyName))")
        } else if isGodotClassType {
"""
if let \(propertyName) {
    return withUnsafePointer(to: \(toSwift(definedInside: insideType)).instanceBindingsCallbacks()) { callbacksPointer in
        let opaque = GodotInterface.native.object_get_instance_binding(
            \(propertyName),
            GodotInterface.token,
            callbacksPointer)
        
        return Unmanaged<\(toSwift(definedInside: insideType))>.fromOpaque(opaque!).takeUnretainedValue()
    }
} else {
    return nil
}
"""
        } else {
            Return(propertyName)
        }
    }
    
    /// Returns a `String` for a given instantation string.
    ///
    /// Types such as `Vector2` are initialized with the code **`Vector2(a, b)`** in Godot.
    /// But in Swift, we need to use default initializers and convert this code to **`Vector2(x: a, y: b)`**.
    func instantationCode(forValue constantValue: ConstantValue) -> String {
        if finalType == "Variant" && constantValue.string == "null" {
            return "nil"
        }
        
        if finalType == "Basis",
           let string = constantValue.instantationCode(withLabels: "xAxisX", "xAxisY", "xAxisZ", "yAxisX", "yAxisY", "yAxisZ", "zAxisX", "zAxisY", "zAxisZ") {
            return string
        }
        
        if finalType == "Projection",
           let string = constantValue.instantationCode(withLabels: "xAxisX", "xAxisY", "xAxisZ", "xAxisW", "yAxisX", "yAxisY", "yAxisZ", "yAxisW", "zAxisX", "zAxisY", "zAxisZ", "zAxisW", "wAxisX", "wAxisY", "wAxisZ", "wAxisW") {
            return string
        }
        
        if finalType == "Transform2D",
           let string = constantValue.instantationCode(withLabels: "xAxisX", "xAxisY", "yAxisX", "yAxisY", "originX", "originY") {
            return string
        }
        
        if finalType == "Transform3D",
           let string = constantValue.instantationCode(withLabels: "xAxisX", "xAxisY", "xAxisZ", "yAxisX", "yAxisY", "yAxisZ", "zAxisX", "zAxisY", "zAxisZ", "originX", "originY", "originZ") {
            return string
        }
        
        if finalType == "Color",
           let string = constantValue.instantationCode(withLabels: "r", "g", "b", "a") {
            return string
        }
        
        if finalType == "Plane",
           let string = constantValue.instantationCode(withLabels: "x", "y", "z", "d") {
            return string
        }
        
        if finalType == "Vector2" || finalType == "Vector2i",
           let string = constantValue.instantationCode(withLabels: "x", "y") {
            return string
        }
        
        if finalType == "Vector3" || finalType == "Vector3i",
           let string = constantValue.instantationCode(withLabels: "x", "y", "z") {
            return string
        }
        
        if finalType == "Vector4" || finalType == "Vector4i" || finalType == "Quaternion",
           let string = constantValue.instantationCode(withLabels: "x", "y", "z", "w") {
            return string
        }
        
        if finalType == "Rect2" || finalType == "Rect2i",
           let string = constantValue.instantationCode(withLabels: "x", "y", "width", "height") {
            return string
        }
        
        if finalType == "NodePath",
           let string = constantValue.instantationCode(withLabels: "string") {
            return string
        }
        
        if finalType == "Dictionary" {
            return "[:]"
        }
        
        if finalType == "String" || finalType == "StringName",
           constantValue.string.first == "&" {
            let string = constantValue.string
            return String(string[string.index(after: string.startIndex)...])
        }
        
        if constantValue.string == "" {
            return finalType.toSwift(definedInside: nil) + "()"
        }
        
        if constantValue.string == "null" {
            return "nil"
        }
        
        if isEnumType {
            return toSwift(definedInside: nil) + "(rawValue: \(constantValue.string))!"
        }
        
        if isBitfieldType {
            return toSwift(definedInside: nil) + "(rawValue: \(constantValue.string))"
        }
        
        return constantValue.string
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
        self?.godotVariantType ?? "GDNATIVE_VARIANT_TYPE_NIL"
    }
}

extension InstanceType: Decodable {
    init(from decoder: Decoder) throws {
        let string = try String(from: decoder)
        try self.init(godotString: string)
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
    
    func toSwift(definedInside insideType: InstanceType?) -> String {
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
                    return insideType.toSwift(definedInside: insideType) + "Type"
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
        lhs.toSwift(definedInside: nil) == rhs.toSwift(definedInside: nil)
    }
    
    static func == (lhs: Self, rhs: String) -> Bool {
        lhs.string == rhs
    }
}

// MARK: - PointerAccessMethod

extension InstanceType {
    /// Defines how an `InstanceType` should be accessed.
    enum PointerAccessMethod {
        /// ```
        /// withUnsafePointer(to: value) { ptr in
        ///     ...
        /// }
        /// ```
        case swiftStandard
        
        /// ```
        /// value.withUnsafeNativePointer { ptr in
        ///     ...
        /// }
        case godotNative
        
        /// ```
        /// value.withUnsafeMutableRawPointer { ptr in
        ///     ...
        /// }
        case opaque
        
        /// ```
        /// values.withUnsafeNativePointers { ptrs in
        ///     ...
        /// }
        case variantCollection
    }
}

// MARK: - Types

/// The godot native variant enum value: `GDNATIVE_VARIANT_TYPE_<type>`.
private let typeToGodotVariantType: [String : String] = [
    "Nil": "GDNATIVE_VARIANT_TYPE_NIL",
    "Variant": "GDNATIVE_VARIANT_TYPE_NIL",
    "bool": "GDNATIVE_VARIANT_TYPE_BOOL",
    "Bool": "GDNATIVE_VARIANT_TYPE_BOOL",
    "int": "GDNATIVE_VARIANT_TYPE_INT",
    "Int": "GDNATIVE_VARIANT_TYPE_INT",
    "float": "GDNATIVE_VARIANT_TYPE_FLOAT",
    "Float": "GDNATIVE_VARIANT_TYPE_FLOAT",
    "Double": "GDNATIVE_VARIANT_TYPE_FLOAT",
    "String": "GDNATIVE_VARIANT_TYPE_STRING",
    "Vector2": "GDNATIVE_VARIANT_TYPE_VECTOR2",
    "Vector2i": "GDNATIVE_VARIANT_TYPE_VECTOR2I",
    "Rect2": "GDNATIVE_VARIANT_TYPE_RECT2",
    "Rect2i": "GDNATIVE_VARIANT_TYPE_RECT2I",
    "Vector3": "GDNATIVE_VARIANT_TYPE_VECTOR3",
    "Vector3i": "GDNATIVE_VARIANT_TYPE_VECTOR3I",
    "Transform2D": "GDNATIVE_VARIANT_TYPE_TRANSFORM2D",
    "Vector4": "GDNATIVE_VARIANT_TYPE_VECTOR4",
    "Vector4i": "GDNATIVE_VARIANT_TYPE_VECTOR4I",
    "Plane": "GDNATIVE_VARIANT_TYPE_PLANE",
    "Quaternion": "GDNATIVE_VARIANT_TYPE_QUATERNION",
    "AABB": "GDNATIVE_VARIANT_TYPE_AABB",
    "Basis": "GDNATIVE_VARIANT_TYPE_BASIS",
    "Transform3D": "GDNATIVE_VARIANT_TYPE_TRANSFORM3D",
    "Projection": "GDNATIVE_VARIANT_TYPE_PROJECTION",
    "Color": "GDNATIVE_VARIANT_TYPE_COLOR",
    "StringName": "GDNATIVE_VARIANT_TYPE_STRING_NAME",
    "NodePath": "GDNATIVE_VARIANT_TYPE_NODE_PATH",
    "RID": "GDNATIVE_VARIANT_TYPE_RID",
    "Object": "GDNATIVE_VARIANT_TYPE_OBJECT",
    "Callable": "GDNATIVE_VARIANT_TYPE_CALLABLE",
    "Signal": "GDNATIVE_VARIANT_TYPE_SIGNAL",
    "Dictionary": "GDNATIVE_VARIANT_TYPE_DICTIONARY",
    "Array": "GDNATIVE_VARIANT_TYPE_ARRAY",
    "PackedByteArray": "GDNATIVE_VARIANT_TYPE_PACKED_BYTE_ARRAY",
    "PackedInt32Array": "GDNATIVE_VARIANT_TYPE_PACKED_INT32_ARRAY",
    "PackedInt64Array": "GDNATIVE_VARIANT_TYPE_PACKED_INT64_ARRAY",
    "PackedFloat32Array": "GDNATIVE_VARIANT_TYPE_PACKED_FLOAT32_ARRAY",
    "PackedFloat64Array": "GDNATIVE_VARIANT_TYPE_PACKED_FLOAT64_ARRAY",
    "PackedStringArray": "GDNATIVE_VARIANT_TYPE_PACKED_STRING_ARRAY",
    "PackedVector2Array": "GDNATIVE_VARIANT_TYPE_PACKED_VECTOR2_ARRAY",
    "PackedVector3Array": "GDNATIVE_VARIANT_TYPE_PACKED_VECTOR3_ARRAY",
    "PackedColorArray": "GDNATIVE_VARIANT_TYPE_PACKED_COLOR_ARRAY",
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
    "GDNativeInt",
    "GDNativeObjectPtr",
    
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
