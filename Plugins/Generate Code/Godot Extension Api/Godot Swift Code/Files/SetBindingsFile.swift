import Foundation

struct SetBindingsFile: GeneratedSwiftFile {
    let path = "SetBindings.swift"
    let builtinClasses: [ExtensionApi.BuiltinClass]
    
    init(builtinClasses: [ExtensionApi.BuiltinClass]) {
        self.builtinClasses = builtinClasses
    }
    
    var code: some SwiftCode {
        Import.foundation
        Import.godot
        
        Spacer()
        
        Extension("GodotLibrary") {
            Func(name: "setBindingsOnBuiltinClasses") {
                for builtinClass in builtinClasses {
                    "Godot." + builtinClass.name.toSwift() + ".setInitBindings(with: interface)"
                }
                
                Spacer()
                
                for builtinClass in builtinClasses {
                    "Godot." + builtinClass.name.toSwift() + ".setFunctionBindings()"
                }
            }
        }.internal()
    }
}
