import Foundation

/// A `BindingFunc` is a shortcut to a function with many translation being done for Godot.
/// Use the `Formatted` value given with the closure to use the formatted values such as the arguments and the return type.
/// The code can also generate a `var` instead of a `func` when applicable.
struct BindingFunc<Content>: SwiftCode, AccessControlCode where Content: SwiftCode {
    let name: FunctionName
    let type: InstanceType?
    let arguments: [ExtensionApi.Argument]?
    let returnType: InstanceType?
    let content: ([String]) -> Content
    var accessControl: AccessControl? = nil
    var isStatic: Bool = false
    var isFinal: Bool = false
    var isMutating: Bool = false
    
    public init(name: FunctionName,
                type: InstanceType?,
                arguments: [ExtensionApi.Argument]?,
                returnType: InstanceType?,
                @CodeBuilder content: @escaping ([String]) -> Content) {
        self.name = name
        self.type = type
        self.arguments = arguments
        self.returnType = returnType
        self.content = content
    }
    
    var body: some SwiftCode {
        let (translatedName, translatedParameters) = name.toSwift(withType: type, arguments: arguments)
        let translatedParametersNames = translatedParameters.map { $0.name }
        
        Func(name: translatedName,
             parameters: translatedParameters,
             returnType: returnType?.toSwift(scopeType: type)) {
            content(translatedParametersNames)
        }
             .accessControl(accessControl)
             .static(isStatic)
             .final(isFinal)
             .mutating(isMutating)
    }
    
    // MARK: Modifiers
    
    public func `static`(_ state: Bool = true) -> BindingFunc {
        var new = self
        new.isStatic = state
        return new
    }
    
    public func `final`(_ state: Bool = true) -> BindingFunc {
        var new = self
        new.isFinal = state
        return new
    }
    
    public func `mutating`(_ state: Bool = true) -> BindingFunc {
        var new = self
        new.isMutating = state
        return new
    }
}
