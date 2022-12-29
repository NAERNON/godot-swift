import Foundation

// MARK: - InstanceType

/// All types in the `ExtensionApi` are `InstanceType`.
/// This type provides helpers functions for translation and more.
struct InstanceType {
    /// For instance, `"enum"` if the Godot type is `"enum::SomeType.Flag"`.
    private let preGodotType: PreGodotType?
    /// For instance, `"SomeType"` if the Godot type is `"enum::SomeType.Flag"`.
    private let scopeGodotType: InstanceTypePart?
    /// For instance, `"Flag"` if the Godot type is `"enum::SomeType.Flag"`.
    private let finalGodotType: InstanceTypePart
    
    /// The name of the type as given by the Extension Api file.
    let godotName: String
    
    var scope: InstanceTypePart? { scopeGodotType }
    
    init?(godotName: String) {
        let preAndPost = godotName.components(separatedBy: ":")
        guard !preAndPost.isEmpty else {
            return nil
        }
        
        preGodotType = preAndPost.count == 1 ? nil : PreGodotType(rawValue: preAndPost[0])
        
        let post = preAndPost.last!
        let components = post.components(separatedBy: ".")
        scopeGodotType = components.count == 1 ? nil : InstanceTypePart(godotName: components[0])
        
        finalGodotType = InstanceTypePart(godotName: components.last!)
        
        self.godotName = godotName
    }
    
    static let variant = InstanceType(godotName: "Variant")!
    static let stringName = InstanceType(godotName: "StringName")!
    
    var isSwiftBaseType: Bool {
        finalGodotType.isSwiftBaseType
    }
    
    var isBuiltinValueType: Bool {
        finalGodotType.isBuiltinValueType
    }
    
    var isValueType: Bool {
        finalGodotType.isValueType || isEnumType || isBitfieldType
    }
    
    var isEnumType: Bool {
        preGodotType == .enum
    }
    
    var isBitfieldType: Bool {
        preGodotType == .bitfield
    }
    
    /// Converts this type to a variable name. Ex: `PackedByteArray` becomes `packedByteArray`.
    /// - Parameter scopeType: The scope in which the type is used.
    /// Depending on the scope, the same type could return different types.
    func toVariableName(scopeType: InstanceType? = nil) -> String {
        NamingConvention.pascal.convert(string: toSwift(scopeType: scopeType)
            .replacingOccurrences(of: "<", with: "")
            .replacingOccurrences(of: ">", with: ""),
                                        to: .camel)
    }
    
    /// Converts a given Godot type to the Swift equivalent.
    ///
    /// For instance, an `int` value would give an `Int` value in Swift.
    /// - Parameter scopeType: The scope in which the type is used.
    /// Depending on the scope, the same type could return different types.
    func toSwift(scopeType: InstanceType? = nil) -> String {
        let typeString = finalGodotType.toSwift(scopeType: scopeGodotType != nil ? scopeGodotType : scopeType?.finalGodotType)
        
        let finalType: String
        if let scopeString = self.scopeGodotType?.toSwift(),
           finalGodotType.isSwiftBaseType == false,
           scopeType?.finalGodotType != self.scopeGodotType {
            finalType = scopeString + "." + typeString
        } else {
            finalType = typeString
        }
        
        switch preGodotType {
        case .typedarray:
            return "TypedArray<\(finalType)>"
        default: return finalType
        }
    }
    
    var godotVariantType: String {
        finalGodotType.godotVariantType
    }
    
    /// Builtin base types already have a default constructor. This function returns the name of the arguments.
    func builtinBaseConstructorArguments() -> [String] {
        switch finalGodotType.toSwift() {
        case "AABB": return ["position", "size"]
        case "Basis": return ["x", "y", "z"]
        case "Color": return ["r", "g", "b", "a"]
        case "Plane": return ["normal", "d"]
        case "Projection": return ["x", "y", "z", "w"]
        case "Quaternion": return ["x", "y", "z", "w"]
        case "Rect2": return ["position", "size"]
        case "Rect2i": return ["position", "size"]
        case "Transform2D": return ["x", "y", "origin"]
        case "Transform3D": return ["basis", "origin"]
        case "Vector2": return ["x", "y"]
        case "Vector2i": return ["x", "y"]
        case "Vector3": return ["x", "y", "z"]
        case "Vector3i": return ["x", "y", "z"]
        case "Vector4": return ["x", "y", "z", "w"]
        case "Vector4i": return ["x", "y", "z", "w"]
        default: return []
        }
    }
    
    /// Returns the default initializer for a given type. For instance, a `String` type will return `String()`.
    func defaultInitializer(scopeType: InstanceType? = nil) -> String {
        if preGodotType == .enum || preGodotType == .bitfield {
            return "Int(0)"
        }
        
        return toSwift(scopeType: scopeType) + "()"
    }
    
    static func == (lhs: InstanceType, rhs: String) -> Bool {
        lhs.godotName == rhs || lhs.toSwift() == rhs
    }
    
    static func == (lhs: InstanceType, rhs: InstanceType) -> Bool {
        lhs.godotName == rhs.godotName
    }
}

extension InstanceType: Decodable {
    init(from decoder: Decoder) throws {
        guard let instanceType = InstanceType(godotName: try String(from: decoder)) else {
            throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath,
                                                    debugDescription: "Instance type could not be inferred"))
        }
        
        self = instanceType
    }
}

extension InstanceType: Equatable {}

// MARK: Pre Godot Type

/// In Godot, some types are defined this way: `"typedarray::String"`.
/// This type enumerates all the possible types before the `"::"`.
private enum PreGodotType: String {
    case `enum` = "enum"
    case typedarray = "typedarray"
    case bitfield = "bitfield"
}

// MARK: Extensions

extension Optional where Wrapped == InstanceType {
    var godotVariantType: String {
        self?.godotVariantType ?? "GDNATIVE_VARIANT_TYPE_NIL"
    }
}

// MARK: - InstanceType Part

/// A part of an `InstanceType` only as a simple name with no "." character.
/// An `InstanceType` is made of several `InstanceTypePart` values.
///
/// ```
/// "enum::SomeType.Flag"
/// // -> InstanceTypePart("SomeType")
/// // -> InstanceTypePart("Flag")
/// ```
struct InstanceTypePart: Equatable {
    let godotName: String
    
    init(godotName: String) {
        self.godotName = godotName
        
        if godotName.contains(".") {
            fatalError("An InstanceTypePart should not contain a \".\". character.")
        }
    }
    
    var isValueType: Bool {
        isSwiftBaseType || isBuiltinValueType || isNativeStructType || isPointer
    }
    
    var isSwiftBaseType: Bool {
        swiftBaseTypes.contains(toSwift())
    }
    
    var isBuiltinValueType: Bool {
        builtinValueTypes.contains(toSwift())
    }
    
    var isNativeStructType: Bool {
        nativeStructuresTypes.contains(toSwift())
    }
    
    var isPointer: Bool {
        godotName.last == "*"
    }
    
    var isConst: Bool {
        godotName.starts(with: "const ")
    }
    
    /// Converts a given Godot type to the Swift equivalent.
    ///
    /// For instance, an `int` value would give an `Int` value in Swift.
    /// - Parameter scopeType: The scope in which the type is used.
    /// Depending on the scope, the same type could return different types.
    func toSwift(scopeType: InstanceTypePart? = nil) -> String {
        // Defines if the type is pointer
        var typeString = godotName
        if isPointer {
            typeString.removeLast()
        }
        if isConst {
            typeString.removeFirst(6)
        }
        
        // Transforms the base type
        switch typeString {
        case "float":
            // For Float types, it can be either a Float, a Double or a Real.
            // Double is used for builtin base classes that do use opaque.
            // Float is used for Color.
            // Real is used for all the other types
            if let scopeType,
               scopeType.isBuiltinValueType {
                typeString = scopeType.toSwift() == "Color" ? "Float" : "Real"
            } else {
                typeString = "Double"
            }
        case "real_t": typeString = "Real"
        case "int": typeString = "Int"
        case "int8_t": typeString = "Int8"
        case "int16_t": typeString = "Int16"
        case "int32_t": typeString = "Int32"
        case "int64_t": typeString = "Int64"
        case "uint8_t": typeString = "UInt8"
        case "uint16_t": typeString = "UInt16"
        case "uint32_t": typeString = "UInt32"
        case "uint64_t": typeString = "UInt64"
        case "int8_t *": typeString = "UnsafeMutablePointer<Int8>"
        case "int16_t *": typeString = "UnsafeMutablePointer<Int16>"
        case "int32_t *": typeString = "UnsafeMutablePointer<Int32>"
        case "int64_t *": typeString = "UnsafeMutablePointer<Int64>"
        case "uint8_t *": typeString = "UnsafeMutablePointer<UInt8>"
        case "uint16_t *": typeString = "UnsafeMutablePointer<UInt16>"
        case "uint32_t *": typeString = "UnsafeMutablePointer<UInt32>"
        case "uint64_t *": typeString = "UnsafeMutablePointer<UInt64>"
        case "bool": typeString = "Bool"
        case "Error": typeString = "ErrorType"
        case "Type": typeString = scopeType?.toSwift() == "Variant" ? "ValueType" : "Type"
        default: break
        }
        
        // Return the correct type with the pointer
        if isPointer {
            let mutableString = isConst ? "" : "Mutable"
            if typeString == "void" {
                return "Unsafe\(mutableString)RawPointer"
            } else {
                return "Unsafe\(mutableString)Pointer<\(typeString)>"
            }
        } else {
            return typeString
        }
    }
    
    /// The godot native variant enum value: `GDNATIVE_VARIANT_TYPE_<type>`.
    var godotVariantType: String {
        switch godotName {
        case "Nil", "Variant": return "GDNATIVE_VARIANT_TYPE_NIL"
        case "bool": return "GDNATIVE_VARIANT_TYPE_BOOL"
        case "int": return "GDNATIVE_VARIANT_TYPE_INT"
        case "float": return "GDNATIVE_VARIANT_TYPE_FLOAT"
        case "String": return "GDNATIVE_VARIANT_TYPE_STRING"
        case "Vector2": return "GDNATIVE_VARIANT_TYPE_VECTOR2"
        case "Vector2i": return "GDNATIVE_VARIANT_TYPE_VECTOR2I"
        case "Rect2": return "GDNATIVE_VARIANT_TYPE_RECT2"
        case "Rect2i": return "GDNATIVE_VARIANT_TYPE_RECT2I"
        case "Vector3": return "GDNATIVE_VARIANT_TYPE_VECTOR3"
        case "Vector3i": return "GDNATIVE_VARIANT_TYPE_VECTOR3I"
        case "Transform2D": return "GDNATIVE_VARIANT_TYPE_TRANSFORM2D"
        case "Vector4": return "GDNATIVE_VARIANT_TYPE_VECTOR4"
        case "Vector4i": return "GDNATIVE_VARIANT_TYPE_VECTOR4I"
        case "Plane": return "GDNATIVE_VARIANT_TYPE_PLANE"
        case "Quaternion": return "GDNATIVE_VARIANT_TYPE_QUATERNION"
        case "AABB": return "GDNATIVE_VARIANT_TYPE_AABB"
        case "Basis": return "GDNATIVE_VARIANT_TYPE_BASIS"
        case "Transform3D": return "GDNATIVE_VARIANT_TYPE_TRANSFORM3D"
        case "Projection": return "GDNATIVE_VARIANT_TYPE_PROJECTION"
        case "Color": return "GDNATIVE_VARIANT_TYPE_COLOR"
        case "StringName": return "GDNATIVE_VARIANT_TYPE_STRING_NAME"
        case "NodePath": return "GDNATIVE_VARIANT_TYPE_NODE_PATH"
        case "RID": return "GDNATIVE_VARIANT_TYPE_RID"
        case "Object": return "GDNATIVE_VARIANT_TYPE_OBJECT"
        case "Callable": return "GDNATIVE_VARIANT_TYPE_CALLABLE"
        case "Signal": return "GDNATIVE_VARIANT_TYPE_SIGNAL"
        case "Dictionary": return "GDNATIVE_VARIANT_TYPE_DICTIONARY"
        case "Array": return "GDNATIVE_VARIANT_TYPE_ARRAY"
        case "PackedByteArray": return "GDNATIVE_VARIANT_TYPE_PACKED_BYTE_ARRAY"
        case "PackedInt32Array": return "GDNATIVE_VARIANT_TYPE_PACKED_INT32_ARRAY"
        case "PackedInt64Array": return "GDNATIVE_VARIANT_TYPE_PACKED_INT64_ARRAY"
        case "PackedFloat32Array": return "GDNATIVE_VARIANT_TYPE_PACKED_FLOAT32_ARRAY"
        case "PackedFloat64Array": return "GDNATIVE_VARIANT_TYPE_PACKED_FLOAT64_ARRAY"
        case "PackedStringArray": return "GDNATIVE_VARIANT_TYPE_PACKED_STRING_ARRAY"
        case "PackedVector2Array": return "GDNATIVE_VARIANT_TYPE_PACKED_VECTOR2_ARRAY"
        case "PackedVector3Array": return "GDNATIVE_VARIANT_TYPE_PACKED_VECTOR3_ARRAY"
        case "PackedColorArray": return "GDNATIVE_VARIANT_TYPE_PACKED_COLOR_ARRAY"
        default: fatalError("No variant type provided for \"\(godotName)\"")
        }
    }
    
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
        "GDNativeInt",
    ]
    
    /// The builtin structs defined as value types.
    private let builtinValueTypes: Set<String> = [
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
        "Real",
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
}
