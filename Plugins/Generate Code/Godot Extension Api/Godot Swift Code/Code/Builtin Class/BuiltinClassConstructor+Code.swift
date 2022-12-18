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
            
            ObjectsArrayPointersAccess(parameters: functionParameters(withParameters: parameters)) { pointerNames, arrayName in
                
                if type.isBuiltinValueType {
                    ObjectsPointersAccess(parameters: .named("__temporary", type: type, mutability: .mutable)) { temporaryPointerNames in
                        "Self." + godotConstructorPtrName + "(\(temporaryPointerNames[0]), \(arrayName))"
                    }
                } else {
                    ObjectsPointersAccess(parameters: .named("self", type: type, mutability: .mutable)) { selfPointerNames in
                        "Self." + godotConstructorPtrName + "(\(selfPointerNames[0]), \(arrayName))"
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
            accessParameters
                .append(.named(parameters[index], type: arguments![index].type, mutability: .const))
        }
        return accessParameters
    }
    
    var godotConstructorPtrName: String {
        "__constructor_\(index)"
    }
}
