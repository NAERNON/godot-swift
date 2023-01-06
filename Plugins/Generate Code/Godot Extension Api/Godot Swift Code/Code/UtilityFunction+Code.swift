import Foundation

extension ExtensionApi.UtilityFunction {
    func code() -> some SwiftCode {
        BindingFunc(name: realName,
                    type: nil,
                    arguments: arguments,
                    addVariantVarargs: isVararg,
                    returnType: returnType) { parameters in
            if let returnType {
                returnType.initializerCode(propertyName: "__returnValue")
                Spacer()
            }
            
            ObjectsArrayPointersAccess(parameters: self.objectsPointersAccessParameters(named: parameters)) { pointerNames, arrayName, argumentsCountName in
                
                if let returnType {
                    ObjectsPointersAccess(parameters: .named("__returnValue", type: returnType.initializerType(), mutability: .mutable)) { returnPointerNames in
                        "UtilityFunctions.\(godotFunctionPtrName)(\(returnPointerNames[0]), \(arrayName), Int32(\(argumentsCountName)))"
                    }
                } else {
                    "UtilityFunctions.\(godotFunctionPtrName)(nil, \(arrayName), Int32(\(argumentsCountName)))"
                }
                
            }
            
            if let returnType {
                Spacer()
                returnType.returnCode(propertyName: "__returnValue")
            }
        }.public()
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
