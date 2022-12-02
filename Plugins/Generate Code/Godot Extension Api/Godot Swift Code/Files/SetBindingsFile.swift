import Foundation

struct SetBindingsFile: SwiftFile {
    let path = "SetBindings.swift"
    let builtinClasses: [ExtensionApi.BuiltinClass]
    
    init(builtinClasses: [ExtensionApi.BuiltinClass]) {
        self.builtinClasses = builtinClasses
    }
    
    var code: some SwiftCode {
        Import.foundation
        Import.godotExtensionHeaders
        Import.godot
        
        Spacer()
        
        Func(name: "setInitAndDeinitBindingsOnBuiltinClasses",
             parameters: .named("interface", type: "GDNativeInterface", label: .name("with"))) {
            for builtinClass in builtinClasses {
                "Godot." + builtinClass.name + ".setInitAndDeinitBindings(with: interface)"
            }
        }.internal()
    }
}
