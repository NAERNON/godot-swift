import Foundation

extension ExtensionApi.BuiltinClass.Constructor {
    func code(type: InstanceType) -> some SwiftCode {
        BindingInit(type: type, arguments: arguments) { parameters in
            // If the type is builtin, we need to make a temporary value
            // that will be modified by the Godot constructor.
            if type.isBuiltinValueType {
                "var __temporary = \(type.toSwift())()"
                Spacer()
            }
            
            ObjectsPointersAccess(parameters: functionParameters(withParameters: parameters), generatePointersArray: true) { pointerNames in
                
                if type.isBuiltinValueType {
                    ObjectsPointersAccess(parameters: .named("__temporary", type: type, isMutable: true)) { temporaryPointerNames in
                        "Self." + godotConstructorPtrName + "(\(temporaryPointerNames.parameters[0]), \(pointerNames.array!))"
                    }
                } else {
                    ObjectsPointersAccess(parameters: .named("self", type: type, isMutable: false)) { selfPointerNames in
                        "Self." + godotConstructorPtrName + "(\(selfPointerNames.parameters[0]), \(pointerNames.array!))"
                    }
                }
                
            }
            
            // If the type is builtin, we use the temporary value set it to self.
            if type.isBuiltinValueType {
                Spacer()
                "self = __temporary"
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
    
    var godotConstructorPtrName: String {
        "__constructor_\(index)"
    }
}
