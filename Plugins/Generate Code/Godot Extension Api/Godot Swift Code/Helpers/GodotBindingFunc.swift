import Foundation

// MARK: - GodotBindingFunc

/// A `GodotBindingFunc` is a shortcut to a function with many translation being done for Godot.
struct GodotBindingFunc<Content, InitContent, ReturnContent, Function>: SwiftCode, AccessControlCode
where
Content: SwiftCode,
InitContent: SwiftCode,
ReturnContent: SwiftCode,
Function: GodotBindingFuncDefinition {
    let godotFunction: Function
    let type: InstanceType?
    
    let overrideReturnType: InstanceType?
    let overrideTemporaryType: InstanceType?
    
    let overridesInit: Bool
    let overrideInitContent: (String) -> InitContent
    
    let content: (GodotBindingFuncValues) -> Content
    
    let overridesReturn: Bool
    let overrideReturnContent: (String) -> ReturnContent
    
    let usePointerAccess: Bool
    
    var accessControl: AccessControl? = nil
    var isOverride: Bool = false
    var isFinal: Bool = false
    
    init(_ godotFunction: Function,
         type: InstanceType?,
         overrideReturnType: InstanceType? = nil,
         overrideTemporaryType: InstanceType? = nil,
         overridesInit: Bool = false,
         overridesReturn: Bool = false,
         usePointerAccess: Bool = true,
         @CodeBuilder overrideInitContent: @escaping (String) -> InitContent = { _ in EmptyCode() },
         @CodeBuilder content: @escaping (GodotBindingFuncValues) -> Content,
         @CodeBuilder overrideReturnContent: @escaping (String) -> ReturnContent = { _ in EmptyCode() }) {
        self.godotFunction = godotFunction
        self.type = type
        
        self.overrideReturnType = overrideReturnType
        self.overrideTemporaryType = overrideTemporaryType
        
        self.overridesInit = overridesInit
        self.overrideInitContent = overrideInitContent
        
        self.content = content
        
        self.overridesReturn = overridesReturn
        self.overrideReturnContent = overrideReturnContent
        
        self.usePointerAccess = usePointerAccess
    }
    
    var body: some SwiftCode {
        let (name, parameters) = translatedNameAndParameters
        
        Func(name: name,
             parameters: parameters,
             returnType: returnTypeString) {
            if overridesInit {
                overrideInitContent(temporaryValueName)
            } else {
                if let temporaryType {
                    temporaryType.temporaryInitializerCode(propertyName: temporaryValueName, definedInside: type)
                }
            }
            
            if usePointerAccess {
                ObjectsArrayPointersAccess(parameters: objectsPointersAccessParameters(with: parameters))
                { pointerNames, arrayName in
                    selfParameterPointerAccess { selfPointerName in
                        temporaryParameterPointerAccess { temporaryPointerName in
                            let values = GodotBindingFuncValues(pointerNames: pointerNames,
                                                                pointersArrayName: arrayName,
                                                                pointersCountValue: argumentCountString,
                                                                selfPointerName: selfPointerName ?? "nil",
                                                                temporaryPointerName: temporaryPointerName ?? "nil")
                            content(values)
                        }
                    }
                }
            } else {
                content(.empty)
            }
            
            if overridesReturn {
                overrideReturnContent(temporaryValueName)
            } else if let temporaryType {
                temporaryType.temporaryReturnCode(propertyName: temporaryValueName, definedInside: type)
            }
        }
             .accessControl(accessControl)
             .static(godotFunction.isStatic)
             .final(isFinal)
             .mutating(godotFunction.isMutating)
             .override(isOverride)
    }
    
    private var arguments: [ExtensionApi.Argument] {
        godotFunction.bindingArguments ?? []
    }
    
    private var returnType: InstanceType? {
        if let type = overrideReturnType {
            return type
        } else {
            return godotFunction.bindingReturnType
        }
    }
    
    private var returnTypeString: String? {
        returnType?.optional(returnType?.isGodotClassType == true)
            .toSwift(definedInside: type)
    }
    
    private var temporaryType: InstanceType? {
        if let type = overrideTemporaryType {
            return type
        } else {
            return returnType
        }
    }
    
    private var temporaryValueName: String {
        "__temporary"
    }
    
    private var translatedNameAndParameters: (name: String, parameters: [FunctionParameter]) {
        var (translatedName, translatedParameters) = godotFunction.bindingName.toSwift(withType: type, arguments: arguments)
        
        if godotFunction.isVararg {
            translatedParameters.append(.named("rest", type: InstanceType.variant.toSwift(), isVararg: true))
        }
        
        return (translatedName, translatedParameters)
    }
    
    private var argumentCountString: String {
        let countString = String(arguments.count)
        guard godotFunction.isVararg else {
            return countString
        }
        
        return countString + " + Int32(rest.count)"
    }
    
    private func objectsPointersAccessParameters(with parameters: [FunctionParameter]) -> [ObjectsPointersAccessParameter] {
        var accessParameters = [ObjectsPointersAccessParameter]()
        for (index, parameter) in parameters.enumerated() {
            let type: InstanceType = parameter.isVararg ? .variantVarargs : arguments[index].type
            accessParameters
                .append(.named(parameter.name, type: type, mutability: .const, isVararg: parameter.isVararg))
        }
        return accessParameters
    }
    
    private func selfParameterPointerAccess(@CodeBuilder _ body: @escaping (String?) -> some SwiftCode) -> some SwiftCode {
        var parameters = [ObjectsPointersAccessParameter]()
        if let type, !godotFunction.isStatic {
            parameters.append(.named("self", type: type, mutability: godotFunction.isMutating ? .mutable : .constMutablePointer))
        }
        
        return ObjectsPointersAccess(parameters: parameters) { pointerNames in
            body(pointerNames.first)
        }
    }
    
    private func temporaryParameterPointerAccess(@CodeBuilder _ body: @escaping (String?) -> some SwiftCode) -> some SwiftCode {
        var parameters = [ObjectsPointersAccessParameter]()
        if let temporaryType {
            parameters.append(.named(temporaryValueName, type: temporaryType.temporaryInstanceType, mutability: .mutable))
        }
        
        return ObjectsPointersAccess(parameters: parameters) { pointerNames in
            body(pointerNames.first)
        }
    }
    
    // MARK: Modifiers
    
    func `final`(_ state: Bool = true) -> GodotBindingFunc {
        var new = self
        new.isFinal = state
        return new
    }
    
    func overrides(_ state: Bool = true) -> GodotBindingFunc {
        var new = self
        new.isOverride = state
        return new
    }
}

// MARK: - Values

struct GodotBindingFuncValues {
    let pointerNames: [String]
    let pointersArrayName: String
    let pointersCountValue: String
    let selfPointerName: String
    let temporaryPointerName: String
    
    static let empty = GodotBindingFuncValues(pointerNames: [],
                                              pointersArrayName: "",
                                              pointersCountValue: "",
                                              selfPointerName: "",
                                              temporaryPointerName: "")
}

// MARK: - GodotBindingFuncDefinition

protocol GodotBindingFuncDefinition {
    var bindingName: FunctionName { get }
    var bindingArguments: [ExtensionApi.Argument]? { get }
    var bindingReturnType: InstanceType? { get }
    
    var isVararg: Bool { get }
    var isStatic: Bool { get }
    var isConst: Bool { get }
    var isMutating: Bool { get }
}
