import Foundation
import CodeGenerator

struct SetBindingsFile: File {
    let path = "SetBindings.swift"
    let builtinClasses: [ExtensionApi.BuiltinClass]
    let classes: [ExtensionApi.Class]
    
    init(builtinClasses: [ExtensionApi.BuiltinClass],
         classes: [ExtensionApi.Class]) {
        self.builtinClasses = builtinClasses
        self.classes = classes
    }
    
    var code: some Code {
        Import.foundation
        
        Space()
        
        Extension("GodotExtension") {
            Func(name: "setBuiltinStructsBindings") {
                for builtinClass in builtinClasses {
                    "Godot." + builtinClass.name.code() + ".setInitBindings()"
                }
                
                Space()
                
                for builtinClass in builtinClasses {
                    "Godot." + builtinClass.name.code() + ".setFunctionBindings()"
                }
            }
            
            Space()
            
            Func(name: "registerGodotClasses") {
                for `class` in classes {
                    "GodotExtension.shared.classRegister.registerGodotClass(ofType: \(`class`.name.code()).self)"
                }
            }
        }.internal()
    }
}
