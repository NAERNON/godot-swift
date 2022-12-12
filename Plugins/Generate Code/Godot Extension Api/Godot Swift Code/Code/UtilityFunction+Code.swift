import Foundation

#warning("We are never using the isVararg argument from UtilityFunction. Is this a feature or a bug ?")

extension ExtensionApi.UtilityFunction {
    func code() -> some SwiftCode {
        BindingFunc(name: realName,
                    type: nil,
                    arguments: arguments,
                    returnType: returnType) { parameters in
            if let returnType {
                Property("__returnValue").defined(isVar: returnType.isValueType).assign(value: returnType.toSwift() + "()")
                Spacer()
            }

            ObjectsPointersAccess(parameters: functionParameters(withParameters: parameters),
                                  generatePointersArray: true) { pointerNames in

                if let returnType {
                    ObjectsPointersAccess(parameters: .named("__returnValue", type: returnType, isMutable: true)) { returnPointerNames in
                        "UtilityFunctions.\(godotFunctionPtrName)(\(returnPointerNames.parameters[0]), \(pointerNames.array!), \(pointerNames.parameters.count))"
                    }
                } else {
                    "UtilityFunctions.\(godotFunctionPtrName)(nil, \(pointerNames.array!), \(pointerNames.parameters.count))"
                }

            }

            if returnType != nil {
                Spacer()
                Return("__returnValue")
            }
        }.public()
    }
    
    private func functionParameters(withParameters parameters: [String]) -> [ObjectsPointersAccessParameter] {
        var accessParameters = [ObjectsPointersAccessParameter]()
        for index in 0..<parameters.count {
            let accessParameter = ObjectsPointersAccessParameter.named(parameters[index],
                                                                       type: arguments![index].type)
            accessParameters.append(accessParameter)
        }
        return accessParameters
    }
    
    private var realName: FunctionName {
        var new = name
        // We protect the name print for the Swift print function.
        if name.godotName == "print" {
            new.godotName = "print_variant"
        }
        return new
    }
    
    var godotFunctionPtrName: String {
        "__function_binding_\(name.godotName)"
    }
}
