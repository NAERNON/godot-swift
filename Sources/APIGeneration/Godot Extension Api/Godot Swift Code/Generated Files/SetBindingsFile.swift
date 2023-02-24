import Foundation
import CodeGenerator

struct SetBindingsFile: GeneratedFile {
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
        
        Extension("GodotInterface") {
            Func(name: "setAllBuiltinStructsBindings") {
                for builtinClass in builtinClasses {
                    "Godot." + builtinClass.name.toSwift() + ".setInitBindings()"
                }
                
                for builtinClass in builtinClasses {
                    "Godot." + builtinClass.name.toSwift() + ".setFunctionBindings()"
                }
            }.static()
            
            Func(name: "setAllClassesBindings") {
                for `class` in classes {
                    "Godot." + `class`.name.toSwift() + ".setFunctionBindings()"
                }
            }.static()
        }.internal()
    }
}
