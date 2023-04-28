import Foundation

protocol Function {
    func arguments(definedInside type: InstanceType?) -> [ExtensionApi.Argument]
    func returnType(definedInside type: InstanceType?) -> InstanceType?
    func temporaryType(definedInside type: InstanceType?) -> InstanceType?
    
    var functionName: FunctionName { get }
    
    var isVararg: Bool { get }
    var isStatic: Bool { get }
    var isConst: Bool { get }
    var isMutating: Bool { get }
    
    var usesPointersArray: Bool { get }
    var allParametersHaveHiddenLabels: Bool { get }
}
