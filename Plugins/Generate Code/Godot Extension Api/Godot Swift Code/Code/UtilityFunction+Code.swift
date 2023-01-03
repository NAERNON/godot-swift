import Foundation

#warning("We are never using the isVararg argument from UtilityFunction. Is this a feature or a bug ?")

extension ExtensionApi.UtilityFunction {
    func code() -> some SwiftCode {
        BindingFunc(name: realName,
                    type: nil,
                    arguments: arguments,
                    returnType: returnType) { parameters in
            if let returnType {
                returnType.initializerCode(propertyName: "__returnValue")
                Spacer()
            }

            ObjectsArrayPointersAccess(parameters: functionParameters(withParameters: parameters)) { pointerNames, arrayName in

                if let returnType {
                    ObjectsPointersAccess(parameters: .named("__returnValue", type: returnType.initializerType(), mutability: .mutable)) { returnPointerNames in
                        "UtilityFunctions.\(godotFunctionPtrName)(\(returnPointerNames[0]), \(arrayName), \(pointerNames.count))"
                    }
                } else {
                    "UtilityFunctions.\(godotFunctionPtrName)(nil, \(arrayName), \(pointerNames.count))"
                }

            }

            if let returnType {
                Spacer()
                returnType.returnCode(propertyName: "__returnValue")
            }
        }.public()
    }
    
    private func functionParameters(withParameters parameters: [String]) -> [ObjectsPointersAccessParameter] {
        var accessParameters = [ObjectsPointersAccessParameter]()
        for index in 0..<parameters.count {
            accessParameters
                .append(.named(parameters[index], type: arguments![index].type, mutability: .const))
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
