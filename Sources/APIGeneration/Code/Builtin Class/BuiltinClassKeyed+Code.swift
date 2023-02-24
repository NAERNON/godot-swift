import Foundation
import CodeGenerator

extension ExtensionApi.BuiltinClass {
    @CodeBuilder
    func keyedCode() -> some Code {
        if isKeyed {
            // Keyed functions are internal, and public extensions should be
            // made to generate the subscripts.
            Mark("Keyed", isSeparator: true)
            
            Func(name: "_getValue",
                 parameters: .named("key", type: "Variant", label: "forKey"),
                 returnType: "Variant") {
                Stack {
                    Var("__returnValue").assign("Variant()")
                    
                    ObjectsPointersAccess(parameters:
                                            [.named("__returnValue", type: .variant, mutability: .mutable),
                                             .named("key", type: .variant, mutability: .const),
                                             .named("self", type: self.name, mutability: .const)]
                    ) { pointerNames in
                        "Self.__keyed_getter(\(pointerNames[2]), \(pointerNames[1]), \(pointerNames[0]))"
                    }
                    
                    Return("__returnValue")
                }
            }.internal()
            
            Func(name: "_set",
                 parameters: [.named("value", type: "Variant"),
                              .named("key", type: "Variant", label: "forKey")])
            {
                Stack {
                    "replaceOpaqueValueIfNecessary()"
                    
                    ObjectsPointersAccess(parameters:
                                            [.named("value", type: .variant, mutability: .const),
                                             .named("key", type: .variant, mutability: .const),
                                             .named("self", type: self.name, mutability: .mutable)]
                    ) { pointerNames in
                        "Self.__keyed_setter(\(pointerNames[2]), \(pointerNames[1]), \(pointerNames[0]))"
                    }
                }
            }.mutating().internal()
            
            Func(name: "_check",
                 parameters: [.named("key", type: "Variant")],
                 returnType: "Bool") {
                Stack {
                    Var("keyCheck").assign("UInt32()")
                    
                    ObjectsPointersAccess(parameters:
                                            [.named("key", type: .variant, mutability: .const),
                                             .named("self", type: self.name, mutability: .const)]
                    ) { pointerNames in
                        "keyCheck = Self.__keyed_checker(\(pointerNames[1]), \(pointerNames[0]))"
                    }
                    
                    Return("keyCheck != 0")
                }
            }.internal()
        }
    }
    
    var godotKeyedSetterPtrName: String {
        "__keyed_setter"
    }
    
    var godotKeyedGetterPtrName: String {
        "__keyed_getter"
    }
    
    var godotKeyedCheckerPtrName: String {
        "__keyed_checker"
    }
}
