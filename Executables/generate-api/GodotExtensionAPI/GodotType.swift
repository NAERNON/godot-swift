import Foundation
import SwiftSyntax
import SwiftSyntaxBuilder
import CodeTranslator

/// A representation of a Godot type.
///
/// This model is used to represent a type definition.
indirect enum GodotType: Equatable, Decodable, Hashable, ExpressibleByStringLiteral, CustomStringConvertible {
    // MARK: Cases
    
    /// The base of a `GodotType`.
    ///
    /// In order to define a type named "`some_class`", use:
    /// ```swift
    /// GodotType.base("some_class")
    /// ```
    case base(String)
    
    /// A type known to be an enum.
    case `enum`(GodotType)
    
    /// A type known to be a bitfield.
    case bitfield(GodotType)
    
    /// A type defined in the scope of another type.
    ///
    /// If `A` and `B` are two types:
    /// ```swift
    /// let a: GodotType = ... // A
    /// let b: GodotType = ... // B
    ///
    /// GodotType.scope(scopeType: a, type: b)
    ///
    /// // Represents the type:
    /// A.B
    /// ```
    case scope(scopeType: GodotType, type: GodotType)
    
    /// A type defined using a generic.
    ///
    /// If `A` and `B` are two types:
    /// ```swift
    /// let a: GodotType = ... // A
    /// let b: GodotType = ... // B
    ///
    /// GodotType.generic(type: a, genericType: b)
    ///
    /// // Represents the type:
    /// A<B>
    /// ```
    case generic(type: GodotType, genericType: GodotType)
    
    /// An generic array.
    ///
    /// In Godot, a generic array is a `TypedArray<Element>`.
    ///
    /// If `A` is a type:
    /// ```swift
    /// let a: GodotType = ... // A
    ///
    /// GodotType.typedArray(a)
    ///
    /// // Represents the type:
    /// TypedArray<A>
    /// ```
    case typedArray(GodotType)
    
    /// An optional type.
    case optional(GodotType)
    
    /// A varargs type.
    ///
    /// If `A` is a type:
    /// ```swift
    /// let a: GodotType = ... // A
    ///
    /// GodotType.varargs(a)
    ///
    /// // Represents the type:
    /// A...
    /// ```
    case varargs(GodotType)
    
    /// A tuple type.
    ///
    /// If `A`, `B`, and `C` are types:
    /// ```swift
    /// let a: GodotType = ... // A
    /// let b: GodotType = ... // B
    /// let c: GodotType = ... // C
    ///
    /// GodotType.tuple([a, b, c])
    ///
    /// // Represents the type:
    /// (A, B, C)
    /// ```
    case tuple([GodotType])
    
    /// An immutable type.
    ///
    /// This is usefull for defining pointers.
    /// A pointer inside an `immutable` type will be a `UnsafePointer`
    /// where a pointer not defined inside an `immutable` type
    /// will be a `UnsafeMutablePointer`.
    case immutable(GodotType)
    
    /// A pointer type.
    case pointer(GodotType)
    
    // MARK: Godot types
    
    /// Sets all the base Godot types.
    static func setGodotTypes(with extensionAPI: GodotExtensionAPI) {
        godotClassTypes = Set(extensionAPI.classes.map { $0.name })
        godotBuiltinClassTypes = Set(extensionAPI.builtinClasses.map { $0.name })
    }
    
    /// The Godot classes types.
    private static var godotClassTypes: Set<GodotType> = []
    
    /// The Godot builtin classes types.
    private static var godotBuiltinClassTypes: Set<GodotType> = []
    
    // MARK: Init
    
    /// Creates a new `GodotType` with the given C type syntax.
    init(cTypeSyntax: some StringProtocol) {
        let string = cTypeSyntax.trimmingCharacters(in: .whitespacesAndNewlines)
        if string.starts(with: "const ") {
            self = .immutable(GodotType(cTypeSyntax: cTypeSyntax.dropFirst(6)))
        } else if string.last == "*" {
            self = .pointer(GodotType(cTypeSyntax: cTypeSyntax.dropLast(1)))
        } else if string.last == ">",
                  let index = string.firstIndex(of: "<")
        {
            self = .generic(
                type: GodotType(cTypeSyntax: string[..<index]),
                genericType: GodotType(cTypeSyntax: string[string.index(after: index)...])
            )
        } else if string.starts(with: "enum::") {
            self = .enum(GodotType(cTypeSyntax: cTypeSyntax.dropFirst(6)))
        } else if string.starts(with: "bitfield::") {
            self = .bitfield(GodotType(cTypeSyntax: cTypeSyntax.dropFirst(10)))
        } else if string.starts(with: "typedarray::") {
            self = .typedArray(GodotType(cTypeSyntax: cTypeSyntax.dropFirst(12)))
        } else if let index = string.lastIndex(of: ".") {
            self = .scope(
                scopeType: GodotType(cTypeSyntax: string[..<index]),
                type: GodotType(cTypeSyntax: string[string.index(after: index)...])
            )
        } else {
            let components = string.split(separator: "::", maxSplits: 2)
            if components.count == 2 {
                self = .scope(
                    scopeType: GodotType(cTypeSyntax: components[0]),
                    type: GodotType(cTypeSyntax: components[1])
                )
            } else {
                self = .base(string)
            }
        }
    }
    
    init(from decoder: Decoder) throws {
        let string = try String(from: decoder)
        self.init(cTypeSyntax: string)
    }
    
    init(stringLiteral value: String) {
        self.init(cTypeSyntax: value)
    }
    
    // MARK: Access
    
    var description: String {
        syntax()
    }
    
    static let variant: GodotType = "Variant"
    
    func withMetadata(_ metadata: GodotTypeMetadata) -> GodotType {
        if self == "int" {
            switch metadata {
            case .int8: "int8_t"
            case .int16: "int16_t"
            case .int32: "int32_t"
            case .int64: "int64_t"
            case .uint8: "uint8_t"
            case .uint16: "uint16_t"
            case .uint32: "uint32_t"
            case .uint64: "uint64_t"
            default: self
            }
        } else if self == "float" {
            switch metadata {
            case .float: "float"
            case .double: "double"
            default: self
            }
        } else {
            self
        }
    }
    
    /// Returns the scope type at a given index.
    ///
    /// - Parameter index: The index of the scope to retreive.
    /// An index of 0 would return the most global scope.
    /// Pass `nil` if you want the last scope (the most local one).
    /// - Returns: The scope to retreive, if any.
    func scope(atIndex index: Int? = nil) -> GodotType? {
        switch self {
        case .scope(let scopeType, let type):
            if let index {
                if index == 0 {
                    return scopeType
                } else {
                    return type.scope(atIndex: index - 1)
                }
            } else {
                if let retreivedScopeType = type.scope(atIndex: nil) {
                    return retreivedScopeType
                } else {
                    return scopeType
                }
            }
        case .generic(let type, _):
            return type.scope(atIndex: index)
        default:
            return nil
        }
    }
    
    /// Returns a new type where all pointers to a Godot class
    /// are removed.
    ///
    /// For example:
    /// ```swift
    /// let type: GodotType = "Object *someType"
    /// print(type.syntax())
    /// // Prints "UnsafePointer<Object>"
    /// print(type.removePointerForGodotClass.syntax())
    /// // Prints "Object"
    /// ```
    ///
    /// > important: Godot types info should be set before retreiving this value.
    /// See the ``setGodotTypes(with:)`` function.
    var removeGodotClassPointers: GodotType {
        switch self {
        case .base(let string):
            return .base(string)
        case .enum(let godotType):
            return .enum(godotType.removeGodotClassPointers)
        case .bitfield(let godotType):
            return .bitfield(godotType.removeGodotClassPointers)
        case .scope(let scopeType, let type):
            return .scope(scopeType: scopeType.removeGodotClassPointers,
                          type: type.removeGodotClassPointers)
        case .generic(let type, let genericType):
            return .generic(type: type.removeGodotClassPointers,
                            genericType: genericType.removeGodotClassPointers)
        case .typedArray(let godotType):
            return .typedArray(godotType.removeGodotClassPointers)
        case .optional(let godotType):
            return .optional(godotType.removeGodotClassPointers)
        case .varargs(let godotType):
            return .varargs(godotType.removeGodotClassPointers)
        case .tuple(let types):
            return .tuple(types.map { $0.removeGodotClassPointers })
        case .immutable(let godotType):
            return .immutable(godotType.removeGodotClassPointers)
        case .pointer(let godotType):
            if godotType.isGodotClass {
                return godotType
            } else {
                return .pointer(godotType.removeGodotClassPointers)
            }
        }
    }
    
    var isEnum: Bool {
        switch self {
        case .enum(_): true
        case .generic(let type, _): type.isEnum
        case .scope(_, let type): type.isEnum
        case .immutable(let type): type.isEnum
        default: false
        }
    }
    
    var isBitfield: Bool {
        switch self {
        case .bitfield(_): true
        case .generic(let type, _): type.isBitfield
        case .scope(_, let type): type.isBitfield
        case .immutable(let type): type.isBitfield
        default: false
        }
    }
    
    var isTypedArray: Bool {
        switch self {
        case .typedArray(_): true
        case .generic(let type, _): type.isTypedArray
        case .scope(_, let type): type.isTypedArray
        case .immutable(let type): type.isTypedArray
        default: false
        }
    }
    
    var isOptional: Bool {
        switch self {
        case .optional(_): true
        default: false
        }
    }
    
    var isPointer: Bool {
        switch self {
        case .immutable(let instanceType): instanceType.isPointer
        case .pointer(_): true
        default: false
        }
    }
    
    /// A Boolean value indicating whether the type
    /// is a Godot class.
    ///
    /// - Returns: `true` if the type is a Godot class (not a builtin Godot class).
    ///
    /// > important: Godot types info should be set before retreiving this value.
    /// See the ``setGodotTypes(with:)`` function.
    var isGodotClass: Bool {
        GodotType.godotClassTypes.contains(self)
    }
    
    /// A Boolean value indicating whether the type
    /// is a Godot builtin class.
    ///
    /// - Returns: `true` if the type is a Godot builtin class (not a Godot class).
    ///
    /// > important: Godot types info should be set before retreiving this value.
    /// See the ``setGodotTypes(with:)`` function.
    var isBuiltinGodotClass: Bool {
        GodotType.godotBuiltinClassTypes.contains(self)
    }
    
    /// A Boolean value indicating whether the type
    /// is a Godot builtin class,
    /// and that doesn't use an opaque underlying value.
    ///
    /// - Parameter type: The type to check.
    /// - Returns: `true` if the type is a Godot builtin class (not a Godot class)
    /// without an opaque underlying value.
    ///
    /// > important: Godot types info should be set before retreiving this value.
    /// See the ``setGodotTypes(with:)`` function.
    var isBuiltinGodotClassWithoutOpaque: Bool {
        isBuiltinGodotClass && !isBuiltinGodotClassWithOpaque
    }
    
    /// A Boolean value indicating whether the type
    /// is a Godot builtin class,
    /// and that does use an opaque underlying value.
    ///
    /// - Returns: `true` if the type is a Godot builtin class (not a Godot class)
    /// with an opaque underlying value.
    ///
    /// > important: Godot types info should be set before retreiving this value.
    /// See the ``setGodotTypes(with:)`` function.
    var isBuiltinGodotClassWithOpaque: Bool {
        guard GodotType.godotBuiltinClassTypes.contains(self) else {
            return false
        }
        
        switch self.syntax() {
        case "Array": return true
        case "Callable": return true
        case "Dictionary": return true
        case "NodePath": return true
        case "PackedByteArray": return true
        case "PackedColorArray": return true
        case "PackedFloat32Array": return true
        case "PackedFloat64Array": return true
        case "PackedInt32Array": return true
        case "PackedInt64Array": return true
        case "PackedStringArray": return true
        case "PackedVector2Array": return true
        case "PackedVector3Array": return true
        case "RID": return true
        case "Signal": return true
        case "String": return true
        case "StringName": return true
        default: return false
        }
    }
    
    // MARK: - Syntax
    
    var variantType: String? {
        typeToGodotVariantType[syntax()]
    }
    
    /// Returns the syntax of the type.
    ///
    /// This function translates the type to Swift.
    ///
    /// - parameter options: The options to define how to translate the type.
    func syntax(options: GodotTypeSyntaxOptions = []) -> String {
        switch self {
        case .base(let string):
            switch string {
            case "float":
                if options.contains(.floatAsReal) {
                    return "Real"
                } else if options.contains(.floatAsDouble) {
                    return "Double"
                } else {
                    return "Float"
                }
            case "double": return "Double"
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
            case "Type": return "GodotType"
            default: return string
            }
        case .enum(let type):
            return type.syntax(options: options)
        case .bitfield(let type):
            return type.syntax(options: options)
        case .scope(let scopeType, let type):
            return scopeType.syntax(options: options) + "." + type.syntax(options: options)
        case .generic(let type, let genericType):
            return type.syntax(options: options) + "<" + genericType.syntax(options: options) + ">"
        case .typedArray(let type):
            return "TypedArray<\(type.syntax(options: options))>"
        case .optional(let instanceType):
            return instanceType.syntax(options: options) + "?"
        case .varargs(let type):
            return type.syntax(options: options) + "..."
        case .tuple(let types):
            return "(" + types.map { $0.syntax(options: options) }.joined(separator: ", ") + ")"
        case .immutable(let type):
            return type.syntax(options: options.union(.immutable))
        case .pointer(let type):
            let pointedType = type.syntax(options: options)
            let isImmutable = options.contains(.immutable)
            if pointedType == "void" {
                return isImmutable ? "UnsafeRawPointer" : "UnsafeMutableRawPointer"
            } else {
                let pointerString = isImmutable ? "UnsafePointer" : "UnsafeMutablePointer"
                return pointerString + "<" + pointedType + ">"
            }
        }
    }
    
    /// Returns the syntax for instantiating the type and returning it.
    ///
    /// Use the `bodyBuilder` parameter to use the instantiated variable type and name.
    /// For example:
    /// ```swift
    /// let type: GodotType = //...
    ///
    /// type.instantiationSyntax { instanceType, name in
    ///     DeclSyntax("print(\(raw: name), \(raw: instanceType.self))")
    /// }
    /// ```
    ///
    /// Returns for an `Int` type:
    ///
    /// ```swift
    /// var __temporary = Int()
    ///
    /// print(__temporary, Int.self)
    ///
    /// return __temporary
    /// ```
    ///
    /// > important: Godot types info should be set before calling this function.
    /// See the ``setGodotTypes(with:)`` function.
    @CodeBlockItemListBuilder
    func instantiationSyntax(
        options: GodotTypeSyntaxOptions = [],
        @CodeBlockItemListBuilder bodyBuilder: (GodotType, String) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        let variableName = "__temporary"
        
        if isGodotClass {
            DeclSyntax("var \(raw: variableName): GDExtensionObjectPtr!")
        } else if isEnum {
            DeclSyntax("var \(raw: variableName) = \(raw: syntax(options: options)).RawValue(0)")
        } else {
            DeclSyntax("var \(raw: variableName) = \(raw: syntax(options: options))()")
        }
        
        let type: GodotType = isGodotClass ? "GDExtensionObjectPtr" : self
        
        try bodyBuilder(type, variableName)
        
        if isGodotClass {
            DeclSyntax("return retreiveObject(ofType: \(raw: syntax(options: options)).self, from: \(raw: variableName))")
        } else if isEnum {
            DeclSyntax("return \(raw: syntax(options: options))(rawValue: \(raw: variableName))!")
        } else {
            DeclSyntax("return \(raw: variableName)")
        }
    }
    
    /// The mutability of a type.
    enum Mutability {
        /// The parameter is not mutable.
        case const
        /// The parameter is mutable.
        case mutable
        /// The parameter is not mutable, but its pointer is mutable.
        case constMutablePointer
    }
    
    /// Returns a syntax for accessing the pointer of an instance of the type.
    ///
    /// - Parameters:
    ///   - instanceName: The name of the instance.
    ///   - mutability: The mutability of the instance.
    ///   - bodyBuilder: The content syntax to access the pointer.
    ///   Use the value provided inside the closure to retreive the pointer name.
    @CodeBlockItemListBuilder
    func pointerAccessSyntax(
        instanceName: String,
        mutability: Mutability = .const,
        @CodeBlockItemListBuilder bodyBuilder: (String) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        let pointerName = "__ptr_" + instanceName
        let instanceName = CodeLanguage.swift.protectNameIfKeyword(for: instanceName)
        
        if isGodotClass || isBuiltinGodotClassWithOpaque || self == .variant {
            DeclSyntax("\(raw: instanceName).withUnsafeRawPointer { \(raw: pointerName) in")
        } else {
            switch mutability {
            case .const:
                DeclSyntax("withUnsafePointer(to: \(raw: instanceName)) { \(raw: pointerName) in")
            case .mutable:
                DeclSyntax("withUnsafeMutablePointer(to: &\(raw: instanceName)) { \(raw: pointerName) in")
            case .constMutablePointer:
                DeclSyntax("""
                withUnsafePointer(to: \(raw: instanceName)) {
                    let \(raw: pointerName) = UnsafeMutableRawPointer(mutating: $0)
                """)
            }
        }
        
        try bodyBuilder(pointerName)
        
        DeclSyntax("}")
    }
}

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
