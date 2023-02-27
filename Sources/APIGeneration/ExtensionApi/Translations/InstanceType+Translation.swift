import Foundation
import CodeGenerator

extension InstanceType {
    func code(definedInside insideType: InstanceType? = nil) -> String {
        _code(isConst: false, definedInside: insideType)
    }
    
    private func _code(isConst: Bool, definedInside insideType: InstanceType?) -> String {
        switch self {
        case .type(let stringType):
            return stringType.code(definedInside: insideType)
        case .enum(let stringType):
            return stringType.code(definedInside: insideType)
        case .bitfield(let stringType):
            return stringType.code(definedInside: insideType)
        case .scope(let scopeType, let type):
            let scopeString = insideType == scopeType ? "" : scopeType._code(isConst: false, definedInside: insideType) + "."
            return scopeString + type._code(isConst: isConst, definedInside: scopeType)
        case .generic(let type, let genericType):
            return type._code(isConst: isConst, definedInside: insideType)
            + "<" + genericType._code(isConst: false, definedInside: insideType) + ">"
        case .optional(let instanceType):
            return instanceType._code(isConst: isConst, definedInside: insideType) + "?"
        case .varargs(let instanceType):
            return instanceType._code(isConst: isConst, definedInside: insideType) + "..."
        case .const(let instanceType):
            return instanceType._code(isConst: true, definedInside: insideType)
        case .pointer(let instanceType):
            let pointedType = instanceType._code(isConst: false, definedInside: insideType)
            if pointedType == "void" {
                return isConst ? "UnsafeRawPointer" : "UnsafeMutableRawPointer"
            } else {
                let pointerString = isConst ? "UnsafePointer" : "UnsafeMutablePointer"
                return pointerString + "<" + pointedType + ">"
            }
        }
    }
    
    /// Returns the type that will be generated for instantiating the given type.
    /// For instance, a `String` type will return `String`,
    /// while an `Enum` type will return `Int`
    var temporaryInitializerType: InstanceType {
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
    func temporaryInitializerCode(propertyName: String, definedInside insideType: InstanceType?) -> some Code {
        if isEnumType || isBitfieldType {
            Var(propertyName)
                .assign("Int(0)")
        } else if isGodotClassType {
            Var(propertyName)
                .typed("GDNativeObjectPtr!")
        } else {
            Var(propertyName)
                .assign(temporaryInitializerType.code(definedInside: insideType) + "()")
        }
    }
    
    /// Returns the temporary return code for a given type.
    /// For instance, a `String` type will return `return returnValue`,
    /// while an `Enum` type will return `return = Type(rawValue: returnValue)`.
    @CodeBuilder
    func temporaryReturnCode(propertyName: String,
                             definedInside insideType: InstanceType?) -> some Code {
        if isEnumType {
            Return(code(definedInside: insideType) + "(rawValue: \(propertyName))!")
        } else if isBitfieldType {
            Return(code(definedInside: insideType) + "(rawValue: \(propertyName))")
        } else if isGodotClassType {
            Return("retreiveObject(ofType: \(code(definedInside: insideType)).self, from: \(propertyName))")
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
            return finalType.code(definedInside: nil) + "()"
        }
        
        if constantValue.string == "null" {
            return "nil"
        }
        
        if isEnumType {
            return code(definedInside: nil) + "(rawValue: \(constantValue.string))!"
        }
        
        if isBitfieldType {
            return code(definedInside: nil) + "(rawValue: \(constantValue.string))"
        }
        
        return constantValue.string
    }
    
    func defaultValueCode() -> String {
        if isGodotClassType
            || self == .variant
            || isOptional {
            return "nil"
        } else if isEnumType {
            return code() + "(rawValue: 0)!"
        } else if isPointer {
            return "fatalError(\"No default value provided for pointers.\")"
        }
        
        return code() + "()"
    }
}
