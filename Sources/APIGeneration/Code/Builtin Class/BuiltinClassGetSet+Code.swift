import Foundation
import CodeGenerator

extension ExtensionApi.BuiltinClass {
    @CodeBuilder
    func getterSetterCode() -> some Code {
        if let indexingReturnType, !isKeyed {
            // Getter/setters are internal, and public extensions should be
            // made to generate the subscripts.
            Mark("Getter/Setter", isSeparator: true)
            
            let indexingType = indexingReturnType.toSwift(definedInside: name)
            
            Func(name: "_getValue",
                 parameters: .named("index", type: "GDNativeInt", label: "at"),
                 returnType: indexingType) {
                Stack {
                    indexingReturnType.temporaryInitializerCode(propertyName: "__returnValue", definedInside: name)
                    
                    ObjectsPointersAccess(parameters:
                                            [.named("__returnValue", type: indexingReturnType, mutability: .mutable),
                                             .named("self", type: self.name, mutability: .const)]
                    ) { pointerNames in
                        "Self.__indexed_getter(\(pointerNames[1]), index, \(pointerNames[0]))"
                    }
                    
                    indexingReturnType.temporaryReturnCode(propertyName: "__returnValue", definedInside: name)
                }
            }.internal()
            
            Func(name: "_setValue",
                 parameters: [.named("value", type: indexingType, label: .hidden),
                              .named("index", type: "GDNativeInt", label: "at")])
            {
                Stack {
                    if self.name.isBuiltinOpaqueValueType {
                        "replaceOpaqueValueIfNecessary()"
                    }
                    
                    ObjectsPointersAccess(parameters: [.named("value", type: indexingReturnType, mutability: .const),
                                                       .named("self", type: self.name, mutability: .mutable)])
                    { pointerNames in
                        "Self.__indexed_setter(\(pointerNames[1]), index, \(pointerNames[0]))"
                    }
                }
            }.mutating().internal()
        }
    }
    
    var godotIndexedSetterPtrName: String {
        "__indexed_setter"
    }
    
    var godotIndexedGetterPtrName: String {
        "__indexed_getter"
    }
}
