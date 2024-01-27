import Foundation
import SwiftSyntax
import SwiftSyntaxBuilder
import Utils

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
    
    /// A raw pointer type.
    case rawPointer
    
    /// A typed pointer type.
    case typedPointer(GodotType)
    
    // MARK: Godot types
    
    
    /// The Godot classes types.
    ///
    /// This set is used to know if a type is a Godot class.
    static var godotClassTypes: Set<GodotType> = []
    
    /// The Godot builtin classes types.
    ///
    /// This set is used to know if a type is a Godot builtin class.
    static var godotBuiltinClassTypes: Set<GodotType> = []
    
    // MARK: Init
    
    /// Creates a new `GodotType` with the given C type syntax.
    init(cTypeSyntax: some StringProtocol) {
        let string = cTypeSyntax.trimmingCharacters(in: .whitespacesAndNewlines)
        if string.starts(with: "const ") {
            self = .immutable(GodotType(cTypeSyntax: cTypeSyntax.dropFirst(6)))
        } else if string.last == "*" {
            self = .typedPointer(GodotType(cTypeSyntax: cTypeSyntax.dropLast(1)))
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
    
    func optional(_ `optional`: Bool = true) -> GodotType {
        if `optional` {
            .optional(self)
        } else {
            self
        }
    }
    
    var description: String {
        syntax()
    }
    
    static let variant: GodotType = "Variant"
    static let variantStorage: GodotType = .scope(scopeType: .variant, type: "Storage")
    static let array: GodotType = "Array"
    static let dictionary: GodotType = "Dictionary"
    
    /// Returns `Variant.Storage` if the type is a `Variant`, or the current type otherwise.
    var storage: GodotType {
        if self == .variant {
            return .variantStorage
        } else {
            return self
        }
    }
    
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
    /// - Parameter index: The index of the scope to retrieve.
    /// An index of 0 would return the most global scope.
    /// Pass `nil` if you want the last scope (the most local one).
    /// - Returns: The scope to retrieve, if any.
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
                if let retrievedScopeType = type.scope(atIndex: nil) {
                    return retrievedScopeType
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
        case .rawPointer:
            return .rawPointer
        case .typedPointer(let godotType):
            if godotType.isGodotClass {
                return godotType
            } else {
                return .typedPointer(godotType.removeGodotClassPointers)
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
        case .rawPointer, .typedPointer(_): true
        default: false
        }
    }
    
    /// A Boolean value indicating whether the type
    /// is a Godot class.
    ///
    /// - Returns: `true` if the type is a Godot class (not a builtin Godot class).
    var isGodotClass: Bool {
        GodotType.godotClassTypes.contains(self)
    }
    
    /// A Boolean value indicating whether the type
    /// is a Godot builtin class.
    ///
    /// - Returns: `true` if the type is a Godot builtin class (not a Godot class).
    var isBuiltinGodotClass: Bool {
        GodotType.godotBuiltinClassTypes.contains(self) || isTypedArray
    }
    
    /// A Boolean value indicating whether the type
    /// is a Godot builtin class,
    /// and that doesn't use an opaque underlying value.
    ///
    /// - Parameter type: The type to check.
    /// - Returns: `true` if the type is a Godot builtin class (not a Godot class)
    /// without an opaque underlying value.
    var isBuiltinGodotClassWithoutOpaque: Bool {
        isBuiltinGodotClass && !isBuiltinGodotClassWithOpaque
    }
    
    /// A Boolean value indicating whether the type
    /// is a Godot builtin class,
    /// and that does use an opaque underlying value.
    ///
    /// - Returns: `true` if the type is a Godot builtin class (not a Godot class)
    /// with an opaque underlying value.
    var isBuiltinGodotClassWithOpaque: Bool {
        guard isBuiltinGodotClass else {
            return false
        }
        
        if isTypedArray { return true }
        
        switch self.syntax() {
        case "GodotArray": return true
        case "Callable": return true
        case "GodotDictionary": return true
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
        case "GodotString": return true
        case "GodotStringName": return true
        default: return false
        }
    }
    
    // MARK: - Syntax
    
    var variantRepresentationType: String? {
        typeToGodotVariantType[syntax()]
    }
    
    /// Returns the syntax of the type.
    ///
    /// This function translates the type to Swift.
    ///
    /// - parameter options: The options to define how to translate the type.
    func syntax(options: GodotTypeSyntaxOptions = []) -> String {
        _syntax(options: options, scopeIndex: 0)
    }
    
    /// Returns the syntax of the type, using the scope index.
    ///
    /// The scope index is equal to:
    /// - 0 for types defined at the root
    /// - 1 for typed defined inside other types, or for types defined inside a namespace
    /// ...
    private func _syntax(options: GodotTypeSyntaxOptions, scopeIndex: Int) -> String {
        if options.contains(.prefixByGodot),
           scopeIndex == 0,
            isGodotClass ||
            isBuiltinGodotClass ||
            isTypedArray ||
            isEnum ||
            isBitfield ||
            self == .variant
        {
            return "Godot." + self._syntax(options: options, scopeIndex: scopeIndex+1)
        }
        
        switch self {
        case .base(let string):
            switch string {
            case "float":
                if options.contains(.floatAsScalar) {
                    return "Scalar"
                } else if options.contains(.floatAsDouble) {
                    return "Double"
                } else {
                    return "Float"
                }
            case "double": return "Double"
            case "real_t": return "Scalar"
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
            case "Array":
                return if options.contains(.genericArrayOnVariant) {
                    "AnyGodotArray"
                } else if options.contains(.genericArrayOnElement) {
                    "GodotArray<Element>"
                } else {
                    "GodotArray"
                }
            case "Dictionary": 
                return if options.contains(.genericDictionaryOnVariant) {
                    "AnyGodotDictionary"
                } else if options.contains(.genericDictionaryOnKeyValue) {
                    "GodotDictionary<Key, AssociatedValue>"
                } else {
                    "GodotDictionary"
                }
            case "String": return "GodotString"
            case "StringName": return "GodotStringName"
            case "Error": return "ErrorType"
            case "Type": return options.contains(.typeIsStorageType) ?
                "StorageType" : "GodotType"
            default:
                if options.contains(.optionalClasses) && isGodotClass {
                    return string + "?"
                } else {
                    return string
                }
            }
        case .enum(let type):
            return type._syntax(options: options, scopeIndex: scopeIndex)
        case .bitfield(let type):
            return type._syntax(options: options, scopeIndex: scopeIndex)
        case .scope(let scopeType, let type):
            let base = scopeType._syntax(
                options: options.subtracting(.optionalClasses),
                scopeIndex: scopeIndex
            )
            let additional = type._syntax(
                options: options.union(scopeType == .variant ? [.typeIsStorageType] : []),
                scopeIndex: scopeIndex+1
            )
            return base + "." + additional
        case .generic(let type, let genericType):
            return type._syntax(options: options.subtracting(.optionalClasses), scopeIndex: scopeIndex) + "<"
                + genericType._syntax(options: options, scopeIndex: 0) + ">"
        case .typedArray(let type):
            return "GodotArray" +
                "<" + type._syntax(options: options, scopeIndex: 0) + ">"
        case .optional(let instanceType):
            return instanceType._syntax(options: options, scopeIndex: scopeIndex) + "?"
        case .varargs(let type):
            return type._syntax(options: options, scopeIndex: scopeIndex) + "..."
        case .tuple(let types):
            return "(" + types.map { $0._syntax(options: options, scopeIndex: scopeIndex) }
                .joined(separator: ", ") + ")"
        case .immutable(let type):
            return type._syntax(options: options.union(.immutable), scopeIndex: scopeIndex)
        case .rawPointer:
            return "UnsafeRawPointer"
        case .typedPointer(let type):
            let pointedType = type._syntax(options: options, scopeIndex: scopeIndex)
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
    /// Use the `bodyBuilder` parameter to use the instantiated variable name.
    @CodeBlockItemListBuilder
    func instantiationSyntax(
        options: GodotTypeSyntaxOptions = [],
        prefix: String = "",
        @CodeBlockItemListBuilder bodyBuilder: (String) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        let variableName = "__temporary"
        
        "\(raw: prefix)\(raw: syntax(options: options)).fromMutatingGodotUnsafePointer { \(raw: variableName) in"
        
        try bodyBuilder(variableName)
        
        "}"
    }
    
    /// The mutability of a type.
    enum Mutability {
        /// The parameter is not mutable.
        case const
        /// The parameter is mutable.
        case mutable
        /// The parameter is not mutable, but its pointer is.
        case constMutablePointer
    }
    
    /// Returns a syntax for accessing the pointer of an instance of the type.
    ///
    /// - Parameters:
    ///   - instanceName: The name of the instance.
    ///   - options: The options to define how to translate the type.
    ///   - mutability: The mutability of the instance.
    ///   - accessThroughVariantStorage: A Boolean value indicating whether
    ///   the pointer is accessed through a variant storage.
    ///   - bodyBuilder: The content syntax to access the pointer.
    ///   Use the value provided inside the closure to retrieve the pointer name.
    @CodeBlockItemListBuilder
    func pointerAccessSyntax(
        instanceName: String,
        options: GodotTypeSyntaxOptions,
        mutability: Mutability,
        accessThroughVariantStorage: Bool = false,
        @CodeBlockItemListBuilder bodyBuilder: (String) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        var pointerName = "__ptr_" + removeBackticks(instanceName)
        let newInstanceName = backticksKeyword(instanceName)
        
        if isPointer {
            try bodyBuilder(newInstanceName)
        } else {
            if accessThroughVariantStorage {
                "Godot.Variant.withStorageUnsafeRawPointer(to: \(raw: newInstanceName)) { \(raw: pointerName) in"
            } else {
                switch mutability {
                case .const:
                    "\(raw: newInstanceName).withGodotUnsafeRawPointer { \(raw: pointerName) in"
                case .mutable:
                    "\(raw: newInstanceName).withGodotUnsafeMutableRawPointer { \(raw: pointerName) in"
                case .constMutablePointer:
                    "\(raw: newInstanceName).withGodotUnsafeRawPointer { \(raw: pointerName) in"
                    
                    let _ = pointerName = "UnsafeMutableRawPointer(mutating: \(pointerName))"
                }
            }
            
            try bodyBuilder(pointerName)
            
            "}"
        }
    }
    
    /// Returns a syntax for accessing the pointer of an instance of the type,
    /// used for a function argument.
    ///
    /// - Parameters:
    ///   - caller: The syntax calling the pointer.
    ///   If nil, the `instanceName` is used as the caller.
    ///   - instanceName: The name of the instance.
    ///   - mutability: The mutability of the instance.
    ///   - accessThroughVariantStorage: A Boolean value indicating whether
    ///   the pointer is accessed through a variant storage.
    ///   - bodyBuilder: The content syntax to access the pointer.
    ///   Use the value provided inside the closure to retrieve the pointer name.
    @CodeBlockItemListBuilder
    func argumentPointerAccessSyntax(
        instanceName: String,
        options: GodotTypeSyntaxOptions,
        mutability: Mutability,
        accessThroughVariantStorage: Bool = false,
        @CodeBlockItemListBuilder bodyBuilder: (String) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        try pointerAccessSyntax(
            instanceName: instanceName,
            options: options,
            mutability: mutability,
            accessThroughVariantStorage: accessThroughVariantStorage
        ) { pointerName in
            if isGodotClass && !accessThroughVariantStorage {
                let newPointerName = "_ptr_" + pointerName
                
                "withUnsafePointer(to: \(raw: pointerName)) { \(raw: newPointerName) in"
                
                try bodyBuilder(newPointerName)
                
                "}"
            } else {
                try bodyBuilder(pointerName)
            }
        }
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
    "GodotString": "GDEXTENSION_VARIANT_TYPE_STRING",
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
    "GodotStringName": "GDEXTENSION_VARIANT_TYPE_STRING_NAME",
    "NodePath": "GDEXTENSION_VARIANT_TYPE_NODE_PATH",
    "RID": "GDEXTENSION_VARIANT_TYPE_RID",
    "Object": "GDEXTENSION_VARIANT_TYPE_OBJECT",
    "Callable": "GDEXTENSION_VARIANT_TYPE_CALLABLE",
    "Signal": "GDEXTENSION_VARIANT_TYPE_SIGNAL",
    "GodotDictionary": "GDEXTENSION_VARIANT_TYPE_DICTIONARY",
    "GodotArray": "GDEXTENSION_VARIANT_TYPE_ARRAY",
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
