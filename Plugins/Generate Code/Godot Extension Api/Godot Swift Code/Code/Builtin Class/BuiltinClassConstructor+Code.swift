import Foundation

extension ExtensionApi.BuiltinClass.Constructor {
    func code(type: InstanceType,
              classSize: Int,
              hasDestructor: Bool,
              godotDestructorPtrName: String) -> some SwiftCode {
        BindingFunc(name: FunctionName(godotName: "constructor").underscored,
                    type: type,
                    arguments: arguments,
                    returnType: type) { parameters in
            if type.isBuiltinValueType {
                "var __temporary = \(type.toSwift())()"
            } else {
                if hasDestructor {
                    Property("__opaque").letDefined().type("Opaque")
                        .assign(value: ".init(size: \(classSize), destructorPtr: Self.\(godotDestructorPtrName))")
                } else {
                    Property("__opaque").letDefined().type("Opaque")
                        .assign(value: ".init(size: \(classSize))")
                }
            }
            Spacer()
            
            ObjectsArrayPointersAccess(parameters: functionParameters(withParameters: parameters)) { pointerNames, arrayName in
                if type.isBuiltinValueType {
                    Property("__temporary").pointerAccess(type: type, mutability: .mutable) { temporaryPtrName in
                        "Self." + godotConstructorPtrName + "(\(temporaryPtrName), \(arrayName))"
                    }
                } else {
                    "__opaque.withUnsafeMutableRawPointer { __opaque_ptr in"
                    ("Self." + godotConstructorPtrName + "(__opaque_ptr, \(arrayName))").indentation()
                    "}"
                }
            }
            
            Spacer()
            if type.isBuiltinValueType {
                Return("__temporary")
            } else {
                Return("Self.init(opaque: __opaque)")
            }
        }.internal().static()
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
