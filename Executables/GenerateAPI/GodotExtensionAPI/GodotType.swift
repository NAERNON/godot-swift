import Foundation
import SwiftSyntax
import SwiftSyntaxBuilder
import Utils

/// A representation of a Godot type.
///
/// This model is used to represent a type definition.
indirect enum GodotType: Equatable, Decodable, Hashable {
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
    
    /// A generic array.
    ///
    /// In Godot, a generic array is a `GodotArray<Element>`.
    ///
    /// If `A` is a type:
    /// ```swift
    /// let a: GodotType = ... // A
    ///
    /// GodotType.typedArray(a)
    ///
    /// // Represents the type:
    /// GodotArray<A>
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
    @TaskLocal static var godotClassTypes: Set<GodotType> = []
    
    /// The Godot builtin classes types.
    ///
    /// This set is used to know if a type is a Godot builtin class.
    @TaskLocal static var godotBuiltinClassTypes: Set<GodotType> = []
    
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
    
    // MARK: Access
    
    func optional(_ `optional`: Bool = true) -> GodotType {
        if `optional` {
            .optional(self)
        } else {
            self
        }
    }
    
    /// Returns `Variant.Storage` if the type is a `Variant`, or the current type otherwise.
    var storage: GodotType {
        if self == .variant {
            return .variantStorage
        } else {
            return self
        }
    }
    
    func withMetadata(_ metadata: GodotTypeMetadata) -> GodotType {
        if self == .int {
            switch metadata {
            case .int8: .int8
            case .int16: .int16
            case .int32: .int32
            case .int64: .int64
            case .uint8: .uint8
            case .uint16: .uint16
            case .uint32: .uint32
            case .uint64: .uint64
            default: self
            }
        } else if self == .float {
            switch metadata {
            case .float: .float
            case .double: .double
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
    
    var isVector: Bool {
        switch self {
        case .vector2, .vector2I, 
                .vector3, .vector3I,
                .vector4, .vector4I:
            true
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
        
        switch self {
        case .array: return true
        case .callable: return true
        case .dictionary: return true
        case .nodePath: return true
        case .packedByteArray: return true
        case .packedColorArray: return true
        case .packedFloat32Array: return true
        case .packedFloat64Array: return true
        case .packedInt32Array: return true
        case .packedInt64Array: return true
        case .packedStringArray: return true
        case .packedVector2Array: return true
        case .packedVector3Array: return true
        case .rid: return true
        case .signal: return true
        case .string: return true
        case .stringName: return true
        default: return false
        }
    }
    
    var packedArrayGenericType: GodotType? {
        switch self {
        case .packedByteArray: .uint8
        case .packedInt32Array: .int32
        case .packedInt64Array: .int64
        case .packedFloat32Array: .float
        case .packedFloat64Array: .double
        case .packedStringArray: .string
        case .packedVector2Array: .vector2
        case .packedVector3Array: .vector3
        case .packedColorArray: .color
        default: nil
        }
    }
    
    // MARK: - Syntax
    
    var variantRepresentationType: String? {
        if isTypedArray {
            "GDEXTENSION_VARIANT_TYPE_ARRAY"
        } else {
            typeToGodotVariantType[self]
        }
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
            isEnum ||
            isBitfield ||
            self == .variant
        {
            return "Godot." + self._syntax(options: options, scopeIndex: scopeIndex+1)
        }
        
        if let packedArrayGenericType {
            if options.contains(.packedArrayStorage) {
                return "\(packedArrayGenericType.syntax()).GodotContiguousArrayStorage"
            } else {
                return "GodotContiguousArray<\(packedArrayGenericType.syntax())>"
            }
        }
        
        switch self {
        case .base(let string):
            switch string {
            case "float":
                if options.contains(.floatUseBuildConfiguration) {
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
            case "Rect2i": return "Rect2I"
            case "Vector2i": return "Vector2I"
            case "Vector3i": return "Vector3I"
            case "Vector4i": return "Vector4I"
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
        
        """
        \(raw: prefix)fromInitializingTransferrableUnsafeRawPointer { \(raw: variableName) in
            \(try bodyBuilder(variableName))
        }
        """
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
    func pointerAccessSyntax(
        instanceName: String,
        options: GodotTypeSyntaxOptions,
        mutability: Mutability,
        accessThroughVariantStorage: Bool = false,
        @CodeBlockItemListBuilder bodyBuilder: (String) throws -> CodeBlockItemListSyntax
    ) throws -> CodeBlockItemListSyntax {
        let pointerName = "__ptr_" + removeBackticks(instanceName)
        let newInstanceName = backticksKeyword(instanceName)
        
        if isPointer {
            return try bodyBuilder(newInstanceName)
        } else {
            let call = if accessThroughVariantStorage {
                "Godot.Variant.withStorageUnsafeRawPointer(to: \(newInstanceName))"
            } else {
                switch mutability {
                case .const:
                    "withTransferrableUnsafeRawPointer(to: \(newInstanceName))"
                case .mutable:
                    "withTransferrableUnsafeMutableRawPointer(to: &\(newInstanceName))"
                case .constMutablePointer:
                    "withTransferrableUnsafeRawPointer(to: \(newInstanceName))"
                }
            }
            
            let finalPointerName = if !accessThroughVariantStorage && mutability == .constMutablePointer {
                "UnsafeMutableRawPointer(mutating: \(pointerName))"
            } else {
                pointerName
            }
            
            return try CodeBlockItemListSyntax {
                """
                \(raw: call) { \(raw: pointerName) in
                    \(try bodyBuilder(finalPointerName))
                }
                """
            }
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
                
                """
                withUnsafePointer(to: \(raw: pointerName)) { \(raw: newPointerName) in
                    \(try bodyBuilder(newPointerName))
                }
                """
            } else {
                try bodyBuilder(pointerName)
            }
        }
    }
}

/// The godot native variant enum value: `GDEXTENSION_VARIANT_TYPE_<type>`.
private let typeToGodotVariantType: [GodotType : String] = [
    .nil: "GDEXTENSION_VARIANT_TYPE_NIL",
    .variant: "GDEXTENSION_VARIANT_TYPE_NIL",
    .bool: "GDEXTENSION_VARIANT_TYPE_BOOL",
    .int: "GDEXTENSION_VARIANT_TYPE_INT",
    .float: "GDEXTENSION_VARIANT_TYPE_FLOAT",
    .double: "GDEXTENSION_VARIANT_TYPE_FLOAT",
    .string: "GDEXTENSION_VARIANT_TYPE_STRING",
    .vector2: "GDEXTENSION_VARIANT_TYPE_VECTOR2",
    .vector2I: "GDEXTENSION_VARIANT_TYPE_VECTOR2I",
    .rect2: "GDEXTENSION_VARIANT_TYPE_RECT2",
    .rect2I: "GDEXTENSION_VARIANT_TYPE_RECT2I",
    .vector3: "GDEXTENSION_VARIANT_TYPE_VECTOR3",
    .vector3I: "GDEXTENSION_VARIANT_TYPE_VECTOR3I",
    .transform2D: "GDEXTENSION_VARIANT_TYPE_TRANSFORM2D",
    .vector4: "GDEXTENSION_VARIANT_TYPE_VECTOR4",
    .vector4I: "GDEXTENSION_VARIANT_TYPE_VECTOR4I",
    .plane: "GDEXTENSION_VARIANT_TYPE_PLANE",
    .quaternion: "GDEXTENSION_VARIANT_TYPE_QUATERNION",
    .aabb: "GDEXTENSION_VARIANT_TYPE_AABB",
    .basis: "GDEXTENSION_VARIANT_TYPE_BASIS",
    .transform3D: "GDEXTENSION_VARIANT_TYPE_TRANSFORM3D",
    .projection: "GDEXTENSION_VARIANT_TYPE_PROJECTION",
    .color: "GDEXTENSION_VARIANT_TYPE_COLOR",
    .stringName: "GDEXTENSION_VARIANT_TYPE_STRING_NAME",
    .nodePath: "GDEXTENSION_VARIANT_TYPE_NODE_PATH",
    .rid: "GDEXTENSION_VARIANT_TYPE_RID",
    .object: "GDEXTENSION_VARIANT_TYPE_OBJECT",
    .callable: "GDEXTENSION_VARIANT_TYPE_CALLABLE",
    .signal: "GDEXTENSION_VARIANT_TYPE_SIGNAL",
    .dictionary: "GDEXTENSION_VARIANT_TYPE_DICTIONARY",
    .array: "GDEXTENSION_VARIANT_TYPE_ARRAY",
    .packedByteArray: "GDEXTENSION_VARIANT_TYPE_PACKED_BYTE_ARRAY",
    .packedInt32Array: "GDEXTENSION_VARIANT_TYPE_PACKED_INT32_ARRAY",
    .packedInt64Array: "GDEXTENSION_VARIANT_TYPE_PACKED_INT64_ARRAY",
    .packedFloat32Array: "GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT32_ARRAY",
    .packedFloat64Array: "GDEXTENSION_VARIANT_TYPE_PACKED_FLOAT64_ARRAY",
    .packedStringArray: "GDEXTENSION_VARIANT_TYPE_PACKED_STRING_ARRAY",
    .packedVector2Array: "GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR2_ARRAY",
    .packedVector3Array: "GDEXTENSION_VARIANT_TYPE_PACKED_VECTOR3_ARRAY",
    .packedColorArray: "GDEXTENSION_VARIANT_TYPE_PACKED_COLOR_ARRAY",
]

// MARK: - Types

extension GodotType {
    static var selfType: GodotType {
        .base("Self")
    }
    
    static var variant: GodotType {
        .base("Variant")
    }
    
    static var variantStorage: GodotType {
        .scope(scopeType: .variant, type: .base("Storage"))
    }
    
    static var `nil`: GodotType {
        .base("Nil")
    }
    
    static var bool: GodotType {
        .base("bool")
    }
    
    static var float: GodotType {
        .base("float")
    }
    
    static var double: GodotType {
        .base("double")
    }
    
    static var int: GodotType {
        .base("int")
    }
    
    static var int8: GodotType {
        .base("int8_t")
    }
    
    static var int16: GodotType {
        .base("int16_t")
    }
    
    static var int32: GodotType {
        .base("int32_t")
    }
    
    static var int64: GodotType {
        .base("int64_t")
    }
    
    static var uint8: GodotType {
        .base("uint8_t")
    }
    
    static var uint16: GodotType {
        .base("uint16_t")
    }
    
    static var uint32: GodotType {
        .base("uint32_t")
    }
    
    static var uint64: GodotType {
        .base("uint64_t")
    }
    
    static var string: GodotType {
        .base("String")
    }
    
    static var vector2: GodotType {
        .base("Vector2")
    }
    
    static var vector2I: GodotType {
        .base("Vector2i")
    }
    
    static var rect2: GodotType {
        .base("Rect2")
    }
    
    static var rect2I: GodotType {
        .base("Rect2i")
    }
    
    static var vector3: GodotType {
        .base("Vector3")
    }
    
    static var vector3I: GodotType {
        .base("Vector3i")
    }
    
    static var transform2D: GodotType {
        .base("Transform2D")
    }
    
    static var vector4: GodotType {
        .base("Vector4")
    }
    
    static var vector4I: GodotType {
        .base("Vector4i")
    }
    
    static var plane: GodotType {
        .base("Plane")
    }
    
    static var quaternion: GodotType {
        .base("Quaternion")
    }
    
    static var aabb: GodotType {
        .base("AABB")
    }
    
    static var basis: GodotType {
        .base("Basis")
    }
    
    static var transform3D: GodotType {
        .base("Transform3D")
    }
    
    static var projection: GodotType {
        .base("Projection")
    }
    
    static var color: GodotType {
        .base("Color")
    }
    
    static var stringName: GodotType {
        .base("StringName")
    }
    
    static var nodePath: GodotType {
        .base("NodePath")
    }
    
    static var rid: GodotType {
        .base("RID")
    }
    
    static var object: GodotType {
        .base("Object")
    }
    
    static var refCounted: GodotType {
        .base("RefCounted")
    }
    
    static var callable: GodotType {
        .base("Callable")
    }
    
    static var signal: GodotType {
        .base("Signal")
    }
    
    static var dictionary: GodotType {
        .base("Dictionary")
    }
    
    static var array: GodotType {
        .base("Array")
    }
    
    static var packedByteArray: GodotType {
        .base("PackedByteArray")
    }
    
    static var packedInt32Array: GodotType {
        .base("PackedInt32Array")
    }
    
    static var packedInt64Array: GodotType {
        .base("PackedInt64Array")
    }
    
    static var packedFloat32Array: GodotType {
        .base("PackedFloat32Array")
    }
    
    static var packedFloat64Array: GodotType {
        .base("PackedFloat64Array")
    }
    
    static var packedStringArray: GodotType {
        .base("PackedStringArray")
    }
    
    static var packedVector2Array: GodotType {
        .base("PackedVector2Array")
    }
    
    static var packedVector3Array: GodotType {
        .base("PackedVector3Array")
    }
    
    static var packedColorArray: GodotType {
        .base("PackedColorArray")
    }
}
