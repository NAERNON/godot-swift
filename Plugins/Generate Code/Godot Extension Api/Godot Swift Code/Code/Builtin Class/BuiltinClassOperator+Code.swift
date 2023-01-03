import Foundation
import PackagePlugin

extension ExtensionApi.BuiltinClass.Operator {
    @CodeBuilder
    func code(type: InstanceType) -> some SwiftCode {
        let (translatedName, _) = FunctionName(godotName: "operator_" + name.operationName!.lowercased()).underscored
            .toSwift(withType: type, arguments: nil)
        
        Func(name: translatedName,
             parameters: functionParameters(type: type),
             returnType: returnType.toSwift(usedInside: type)) {
            
            returnType.initializerCode(propertyName: "__returnValue", usedInside: type)
            Spacer()
            
            ObjectsPointersAccess(parameters: objectsPointerAccessParameters(type: type)) { pointerNames in
                if rightType != nil {
                    let lhsName = pointerNames[0]
                    let rhsName = pointerNames[1]
                    let returnName = pointerNames[2]
                    "Self.\(godotOperatorPtrName)(\(lhsName), \(rhsName), \(returnName))"
                } else {
                    let selfName = pointerNames[0]
                    let returnName = pointerNames[1]
                    "Self.\(godotOperatorPtrName)(\(selfName), nil, \(returnName))"
                }
            }
            
            Spacer()
            Return("__returnValue")
            
        }.static().internal()
    }
    
    private func functionParameters(type: InstanceType) -> [FunctionParameter] {
        var parameters = [FunctionParameter]()
        parameters.append(.named("lhs", type: type.toSwift(usedInside: type), label: .hidden))
        if let rightType {
            parameters.append(.named("rhs", type: rightType.toSwift(usedInside: type), label: .hidden))
        }
        return parameters
    }
    
    private func objectsPointerAccessParameters(type: InstanceType) -> [ObjectsPointersAccessParameter] {
        var parameters = [ObjectsPointersAccessParameter]()
        
        if let rightType {
            parameters.append(.named("lhs", type: type, mutability: .const))
            parameters.append(.named("rhs", type: rightType, mutability: .const))
        } else {
            parameters.append(.named("lhs", type: type, mutability: .const))
        }
        
        parameters.append(.named("__returnValue", type: returnType, mutability: .mutable))
        
        return parameters
    }
    
    private func emptyErrorCode() -> some SwiftCode {
        Diagnostics.error("The operator \"\(name)\" could not be generated.")
        return EmptyCode()
    }
    
    var godotVariantOperation: String? {
        "GDNATIVE_VARIANT_OP_" + name.operationName!
    }
    
    var godotOperatorPtrName: String {
        var name = "__operator_binding_" + name.operationName!
        if let rightType {
            name += "_" + rightType.toSwift()
        }
        
        return name.lowercased()
    }
}
