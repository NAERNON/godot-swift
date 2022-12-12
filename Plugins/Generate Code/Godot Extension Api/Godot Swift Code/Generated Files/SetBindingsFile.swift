import Foundation

struct SetBindingsFile: GeneratedSwiftFile {
    let path = "SetBindings.swift"
    let builtinClasses: [ExtensionApi.BuiltinClass]
    
    init(builtinClasses: [ExtensionApi.BuiltinClass]) {
        self.builtinClasses = builtinClasses
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
        }.internal()
    }
}
