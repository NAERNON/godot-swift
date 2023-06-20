import Foundation
import SwiftSyntax

/// A representation of a Godot type.
///
/// This model is used to represent a type definition,
/// in both Swift and C. Use it to translate a type from one language to the other.
indirect enum GodotType: Equatable, Decodable, Hashable {
    // MARK: Cases
    
    /// The base of a `GodotType`, written using Swift conventions.
    ///
    /// In order to define a type named "`SomeClass`", use:
    /// ```swift
    /// GodotType.swift("SomeClass")
    /// ```
    case swift(String)
    
    /// The base of a `GodotType`, written using C conventions.
    ///
    /// In order to define a type named "`some_class`", use:
    /// ```swift
    /// GodotType.c("some_class")
    /// ```
    case c(String)
    
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
    
    /// An immutable type.
    ///
    /// This is usefull for defining pointers.
    /// A pointer inside an `immutable` type will be a `UnsafePointer`
    /// where a pointer not defined inside an `immutable` type
    /// will be a `UnsafeMutablePointer`.
    case immutable(GodotType)
    
    /// A pointer type.
    case pointer(GodotType)
    
    // MARK: Init
    
    enum InitError: Error {
        case cannotRetreiveGeneric
    }
    
    /// Creates a new `GodotType` with the given C type syntax.
    init(cTypeSyntax: some StringProtocol) throws {
        let string = cTypeSyntax.trimmingCharacters(in: .whitespacesAndNewlines)
        if string.starts(with: "const ") {
            self = .immutable(try GodotType(cTypeSyntax: cTypeSyntax.dropFirst(6)))
        } else if string.last == "*" {
            self = .pointer(try GodotType(cTypeSyntax: cTypeSyntax.dropLast(1)))
        } else if string.last == ">" {
            guard let index = string.firstIndex(of: "<") else {
                throw InitError.cannotRetreiveGeneric
            }
            
            self = .generic(
                type: try GodotType(cTypeSyntax: string[..<index]),
                genericType: try GodotType(cTypeSyntax: string[string.index(after: index)...])
            )
        } else if string.starts(with: "enum::") {
            self = .enum(try GodotType(cTypeSyntax: cTypeSyntax.dropFirst(6)))
        } else if string.starts(with: "bitfield::") {
            self = .bitfield(try GodotType(cTypeSyntax: cTypeSyntax.dropFirst(10)))
        } else if string.starts(with: "typedarray::") {
            self = .generic(
                type: .swift("TypedArray"),
                genericType: try GodotType(cTypeSyntax: cTypeSyntax.dropFirst(12))
            )
        } else if let index = string.lastIndex(of: ".") {
            self = .scope(
                scopeType: try GodotType(cTypeSyntax: string[..<index]),
                type: try GodotType(cTypeSyntax: string[string.index(after: index)...])
            )
        } else {
            self = .c(string)
        }
    }
    
    init(from decoder: Decoder) throws {
        let string = try String(from: decoder)
        try self.init(cTypeSyntax: string)
    }
    
    // MARK: Tools
    
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
    
    // MARK: Syntax
    
    /// Returns the syntax of the type.
    ///
    /// This function translates the type to Swift.
    ///
    /// - parameter options: The options to define how to translate the type.
    func syntax(options: GodotSyntaxOptions = []) -> String {
        switch self {
        case .c(let string):
            switch string {
            case "float":
                if options.contains(.floatAsReal) {
                    return "Real"
                } else if options.contains(.floatAsDouble) {
                    return "Double"
                } else {
                    return "Float"
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
            case "Type": return "Type"
            default: return string
            }
        case .swift(let string):
            return string
        case .enum(let type):
            return type.syntax(options: options)
        case .bitfield(let type):
            return type.syntax(options: options)
        case .scope(let scopeType, let type):
            return scopeType.syntax(options: options) + "." + type.syntax(options: options)
        case .generic(let type, let genericType):
            return type.syntax(options: options) + "<" + genericType.syntax(options: options) + ">"
        case .optional(let instanceType):
            return instanceType.syntax(options: options) + "?"
        case .varargs(let type):
            return type.syntax(options: options) + "..."
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
}
