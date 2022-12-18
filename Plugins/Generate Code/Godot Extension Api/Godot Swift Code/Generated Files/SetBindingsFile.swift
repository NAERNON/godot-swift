import Foundation

struct SetBindingsFile: GeneratedSwiftFile {
    let path = "SetBindings.swift"
    let builtinClasses: [ExtensionApi.BuiltinClass]
    let classes: [ExtensionApi.Class]
    
    init(builtinClasses: [ExtensionApi.BuiltinClass],
         classes: [ExtensionApi.Class]) {
        self.builtinClasses = builtinClasses
        self.classes = classes
    }
    
    var code: some SwiftCode {
        Import.foundation
        
        Spacer()
        
        Extension("GodotInterface") {
            Func(name: "setAllBuiltinStructsBindings") {
                for builtinClass in builtinClasses {
                    "Godot." + builtinClass.name.toSwift() + ".setInitBindings()"
                }
                
                Spacer()
                
                for builtinClass in builtinClasses {
                    "Godot." + builtinClass.name.toSwift() + ".setFunctionBindings()"
                }
            }.static()
            
            Spacer()
            
            Func(name: "setAllClassesBindings") {
                for `class` in classes {
                    "Godot." + `class`.name.toSwift() + ".setFunctionBindings()"
                }
            }.static()
        }.internal()
    }
}
