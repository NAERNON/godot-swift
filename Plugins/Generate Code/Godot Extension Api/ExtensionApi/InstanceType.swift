import Foundation

// MARK: - InstanceType

/// All types in the `ExtensionApi` are `InstanceType`.
/// This type provides helpers functions for translation and more.
struct InstanceType: Equatable {
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
        /// VariantVarargs(value).withUnsafeNativePointers { ptrs in
        ///     ...
        /// }
        case variantVarargs
    }
    
    /// In Godot, some types are defined this way: `"typedarray::String"`.
    /// This type enumerates all the possible types before the `"::"`.
    enum PreGodotType: String {
        case `enum` = "enum"
        case typedArray = "typedarray"
        case bitfield = "bitfield"
    }
    
    enum InitError: Error {
        case couldNotInferTypes
    }
    
    static let variant = InstanceType(swiftType: "Variant")
    static let stringName = InstanceType(swiftType: "StringName")
    static let variantVarargs = InstanceType(swiftType: "VariantVarargs")
    
    /// For instance, `"enum"` if the Godot type is `"enum::AType.SomeType.Flag"`.
    private let preType: PreGodotType?
    /// For instance, `"Flag"` if the Godot type is `"enum::AType.SomeType.Flag"`.
    let finalType: InstanceTypePart
    /// For instance, `"[SomeType, AType]"` if the Godot type is `"enum::AType.SomeType.Flag"`.
    /// They are sorted from most local to most global scope.
    let scopeTypes: [InstanceTypePart]
    /// A Boolean value indicating whether the type is optional.
    private var isOptional: Bool
    
    init(finalType: InstanceTypePart, scopeTypes: [InstanceTypePart], preType: PreGodotType?, isOptional: Bool) {
        self.finalType = finalType
        self.scopeTypes = scopeTypes
        self.preType = preType
        self.isOptional = isOptional
    }
    
    init(godotName: String) throws {
        let preAndPost = godotName.components(separatedBy: ":")
        guard !preAndPost.isEmpty else {
            throw InitError.couldNotInferTypes
        }
        
        let preType = preAndPost.count == 1 ? nil : PreGodotType(rawValue: preAndPost[0])
        
        let post = preAndPost.last!
        let components = post.components(separatedBy: ".")
        
        guard components.count > 0 else {
            throw InitError.couldNotInferTypes
        }
        
        let scopeTypes = components.dropLast(1).reversed().map { InstanceTypePart(godotName: $0) }
        let finalType = InstanceTypePart(godotName: components.last!)
        
        self.init(finalType: finalType, scopeTypes: scopeTypes, preType: preType, isOptional: false)
    }
    
    fileprivate init(swiftType: String) {
        let isOptional = swiftType.last == "?"
        self.init(finalType: .swiftName(String(swiftType.dropLast(isOptional ? 1 : 0))),
                  scopeTypes: [],
                  preType: nil,
                  isOptional: isOptional)
    }
    
    func `optional`(_ state: Bool = true) -> InstanceType {
        var new = self
        new.isOptional = state
        return new
    }
    
    var isSwiftBaseType: Bool {
        finalType.isSwiftBaseType
    }
    
    var isBuiltinBaseValueType: Bool {
        finalType.isBuiltinBaseValueType
    }
    
    var isBuiltinOpaqueValueType: Bool {
        finalType.isBuiltinOpaqueValueType || isTypedArray
    }
    
    var isValueType: Bool {
        finalType.isValueType || isEnumType || isBitfieldType || isTypedArray
    }
    
    var isGodotClassType: Bool {
        !isValueType
    }
    
    private var isEnumType: Bool {
        preType == .enum
    }
    
    private var isBitfieldType: Bool {
        preType == .bitfield
    }
    
    private var isTypedArray: Bool {
        preType == .typedArray
    }
    
    /// Returns how this type should be accessed for Godot.
    func accessPointerMethod() -> PointerAccessMethod {
        if toSwift() == "VariantVarargs" {
            return .variantVarargs
        } else if isEnumType || isBitfieldType {
            return .swiftStandard
        } else if isTypedArray {
            return .godotNative
        } else if finalType.accessPointerWithGodotNative {
            return .godotNative
        } else {
            return .swiftStandard
        }
    }
    
    /// Converts this type to a variable name. Ex: `PackedByteArray` becomes `packedByteArray`.
    func toVariableName(usedInside insideType: InstanceType? = nil) -> String {
        NamingConvention.pascal.convert(string: toSwift(usedInside: insideType)
            .replacingOccurrences(of: "<", with: "")
            .replacingOccurrences(of: ">", with: ""),
                                        to: .camel)
    }
    
    /// Converts a given Godot type to the Swift equivalent.
    ///
    /// For instance, an `int` value would give an `Int` value in Swift.
    /// - Parameter insideType: The type in which this type is used.
    /// Depending on this type, the same type could return different types.
    /// - Parameter showScope: A Boolean value indicating whether the scope of the type should be visible.
    func toSwift(usedInside insideType: InstanceType? = nil, showScope: Bool = true) -> String {
        var concatenatedScopeTypes = scopeTypes
        if let insideType {
            concatenatedScopeTypes.append(insideType.finalType)
            concatenatedScopeTypes.append(contentsOf: insideType.scopeTypes)
        }
        
        var typeString = finalType.toSwift(scopeTypes: concatenatedScopeTypes)
        
        if !finalType.isSwiftBaseType && showScope {
            var scopeTypesToShow = scopeTypes
            
            // If the insideType is the same as the last scope type, then no need to show it.
            if let insideType,
               insideType.finalType == scopeTypes.last {
                scopeTypesToShow.removeLast()
            }
            
            let scopeString = scopeTypesToShow.reversed().reduce(into: "") { $0 += $1.toSwift() + "."}
            typeString = scopeString + typeString
        }
        
        if preType == .typedArray {
            typeString = "TypedArray<\(typeString)>"
        }
        
        if isOptional {
            typeString += "?"
        }
        
        return typeString
    }
    
    var godotVariantType: String {
        finalType.godotVariantType
    }
    
    // MARK: Code
    
    /// Returns the type that will be generated for returning the given type.
    /// For instance, a `String` type will return `String`,
    /// while an `Enum` type will return `Int`.
    func initializerType() -> InstanceType {
        if isEnumType || isBitfieldType {
            return InstanceType(swiftType: "Int")
        } else if isGodotClassType {
            return InstanceType(swiftType: "GDNativeObjectPtr")
        } else {
            return self
        }
    }
    
    /// Returns the initializer for a given type.
    /// For instance, a `String` type will return `var returnValue = String()`,
    /// while an `Enum` type will return `var returnValue = Int(0)`.
    @CodeBuilder
    func initializerCode(propertyName: String, usedInside insideType: InstanceType? = nil) -> some SwiftCode {
        if isEnumType || isBitfieldType {
            Property(propertyName).defined(isVar: true)
                .assign(value: "Int(0)")
        } else if isGodotClassType {
            Property(propertyName).defined(isVar: true)
                .type("GDNativeObjectPtr!")
        } else {
            Property(propertyName).defined(isVar: accessPointerMethod() == .swiftStandard)
                .assign(value: toSwift(usedInside: insideType) + "()")
        }
    }
    
    /// Returns the  return code for a given type.
    /// For instance, a `String` type will return `return returnValue`,
    /// while an `Enum` type will return `return = Type(rawValue: returnValue)`.
    @CodeBuilder
    func returnCode(propertyName: String, usedInside insideType: InstanceType? = nil) -> some SwiftCode {
        if isEnumType {
            Return(toSwift(usedInside: insideType) + "(rawValue: __returnValue)!")
        } else if isBitfieldType {
            Return(toSwift(usedInside: insideType) + "(rawValue: __returnValue)")
        } else if isGodotClassType {
"""
if let __returnValue {
    return withUnsafePointer(to: \(toSwift(usedInside: insideType)).instanceBindingsCallbacks()) { callbacksPointer in
        let opaque = GodotInterface.native.object_get_instance_binding(
            __returnValue,
            GodotInterface.token,
            callbacksPointer)
        
        return Unmanaged<\(toSwift(usedInside: insideType))>.fromOpaque(opaque!).takeUnretainedValue()
    }
} else {
    return nil
}
"""
        } else {
            Return("__returnValue")
        }
    }
    
    // MARK: Instantiation code
    
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
            return finalType.toSwift() + "()"
        }
        
        if constantValue.string == "null" {
            return "nil"
        }
        
        if isEnumType {
            return toSwift() + "(rawValue: \(constantValue.string))!"
        }
        
        if isBitfieldType {
            return toSwift() + "(rawValue: \(constantValue.string))"
        }
        
        return constantValue.string
    }
    
    static func == (lhs: InstanceType, rhs: String) -> Bool {
        lhs.toSwift(showScope: false) == rhs
    }
    
    static func != (lhs: InstanceType, rhs: String) -> Bool {
        !(lhs == rhs)
    }
}

extension InstanceType: Decodable {
    init(from decoder: Decoder) throws {
        try self.init(godotName: try String(from: decoder))
    }
}

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
enum InstanceTypePart: Equatable {
    case godotName(String)
    case swiftName(String)
    
    var underlyingType: String {
        switch self {
        case .godotName(let string):
            return string
        case .swiftName(let string):
            return string
        }
    }
    
    init(godotName: String) {
        if godotName.contains(".") {
            fatalError("An InstanceTypePart should not contain a \".\". character.")
        }
        
        self = .godotName(godotName)
    }
    
    init(swiftName: String) {
        if swiftName.contains(".") {
            fatalError("An InstanceTypePart should not contain a \".\". character.")
        }
        
        self = .swiftName(swiftName)
    }
    
    var isValueType: Bool {
        isSwiftBaseType || isBuiltinBaseValueType || isBuiltinOpaqueValueType || isNativeStructType || isPointer
    }
    
    var isSwiftBaseType: Bool {
        InstanceTypePart.swiftBaseTypes.contains(toSwift())
    }
    
    var isBuiltinBaseValueType: Bool {
        InstanceTypePart.builtinBaseValueTypes.contains(toSwift())
    }
    
    var isBuiltinOpaqueValueType: Bool {
        InstanceTypePart.builtinOpaqueValueTypes.contains(toSwift())
    }
    
    var isNativeStructType: Bool {
        InstanceTypePart.nativeStructuresTypes.contains(toSwift())
    }
    
    /// Returns `true` if, for accessing the pointer of the underlying object,
    /// it should be called using `withUnsafeNativePointer(:)` instead of the
    /// Swift `withUnsafePointer(to:)`.
    ///
    /// ```
    /// // If true:
    /// value.withUnsafeNativePointer { ptr in
    ///     ...
    /// }
    ///
    /// // If false:
    /// withUnsafePointer(to: value) { ptr in
    ///     ...
    /// }
    /// ```
    var accessPointerWithGodotNative: Bool {
        !isValueType || isBuiltinOpaqueValueType
    }
    
    var isPointer: Bool {
        switch self {
        case .godotName(let string):
            return string.last == "*"
        case .swiftName(let string):
            return string.starts(with: "UnsafePointer")
            || string.starts(with: "UnsafeMutablePointer")
            || string.starts(with: "UnsafeRawPointer")
            || string.starts(with: "UnsafeMutableRawPointer")
        }
    }
    
    /// Converts a given Godot type to the Swift equivalent.
    ///
    /// For instance, an `int` value would give an `Int` value in Swift.
    /// - Parameter scopeTypes: The scopes in which the type is used.
    /// They are sorted from the most local scope to the most global scope.
    /// Depending on the scope, the same type could return different types.
    func toSwift(scopeTypes: InstanceTypePart...) -> String {
        toSwift(scopeTypes: scopeTypes)
    }
    
    /// Converts a given Godot type to the Swift equivalent.
    ///
    /// For instance, an `int` value would give an `Int` value in Swift.
    /// - Parameter scopeTypes: The scopes in which the type is used.
    /// They are sorted from the most local scope to the most global scope.
    /// Depending on the scope, the same type could return different types.
    func toSwift(scopeTypes: [InstanceTypePart]) -> String {
        switch self {
        case .godotName(let string):
            let isConst = string.starts(with: "const ")
            
            // Defines if the type is pointer
            var typeString = string
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
                if let scopeType = scopeTypes.first,
                   scopeType.isBuiltinBaseValueType {
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
            case "Type":
                guard let scope = scopeTypes.first?.toSwift() else {
                    typeString = "Type"
                    break
                }
                
                if scope == "Variant" {
                    typeString = "ValueType"
                } else {
                    typeString = scope + "Type"
                }
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
        case .swiftName(let string):
            return string
        }
    }
    
    static func == (lhs: InstanceTypePart, rhs: String) -> Bool {
        lhs.toSwift() == rhs
    }
    
    static func != (lhs: InstanceTypePart, rhs: String) -> Bool {
        !(lhs == rhs)
    }
    
    var godotVariantType: String {
        guard let type = InstanceTypePart.typeToGodotVariantType[underlyingType] else {
            fatalError("No variant type provided for \"\(underlyingType)\"")
        }
        
        return type
    }
    
    /// The godot native variant enum value: `GDNATIVE_VARIANT_TYPE_<type>`.
    private static let typeToGodotVariantType: [String : String] = [
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
    private static let swiftBaseTypes: Set<String> = [
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
        "GDNativeObjectPtr",
    ]
    
    /// The builtin base structs defined as value types.
    /// `Vector2` is a builtin struct and also a *base* one because there is no underlying `Opaque` value.
    /// `Array` is a builtin struct but not a *base* one because there is an underlying `Opaque` value.
    private static let builtinBaseValueTypes: Set<String> = [
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
    
    /// The builtin generated structs defined as value types, but with underlying `Opaque` value.
    private static let builtinOpaqueValueTypes: Set<String> = [
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
    ]
    
    /// The native structs of Godot..
    private static let nativeStructuresTypes: Set<String> = [
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
