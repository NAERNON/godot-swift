import Foundation
import CodeGenerator

struct InitializationFile: File {
    let moduleEntryCFunction: String
    let classDefinitions: [ClassDefinition]
    
    let path: String = "Initialization.swift"
    
    init(moduleEntryCFunction: String,
         classDefinitions: [ClassDefinition]) {
        self.moduleEntryCFunction = moduleEntryCFunction
        self.classDefinitions = classDefinitions
    }
    
    var code: some Code {
        Import("GodotExtensionHeaders")
        Import("Godot")
        
        Space()
        
        Stack {
            initializationModuleCode()
            
            Mark("Class registration", isSeparator: true)
            
            classRegistrationCode()
        }
    }
    
    @CodeBuilder
    private func initializationModuleCode() -> some Code {
        Group {
            "@_cdecl(\"\(moduleEntryCFunction)\")"
            Func(name: "libraryInit",
                 parameters: [.named("interfacePtr", type: "UnsafePointer<GDExtensionInterface>"),
                              .named("libraryPtr", type: "GDExtensionClassLibraryPtr"),
                              .named("initializationPtr", type: "UnsafeMutablePointer<GDExtensionInitialization>")],
                 returnType: "GDExtensionBool") {
"""
return GodotExtension.shared.setUp(
    withInterfacePtr: interfacePtr,
    libraryPtr: libraryPtr,
    initializationPtr: initializationPtr,
    initializerCallback: initializeModule,
    terminatorCallback: unitializeModule,
    minimumInitializationLevel: GDEXTENSION_INITIALIZATION_SCENE
)
"""
            }
        }
        
        Func(name: "initializeModule", parameters: .named("level", type: "GDExtensionInitializationLevel")) {
            Stack {
                Guard(condition: "level == GDEXTENSION_INITIALIZATION_SCENE") {
                    Return()
                }
                
                "registerClasses(using: GodotExtension.shared.classRegister)"
            }
        }.private()
        
        Func(name: "unitializeModule", parameters: .named("level", type: "GDExtensionInitializationLevel")) {
#warning("Fill this")
            EmptyCode()
        }.private()
    }
    
    @CodeBuilder
    private func classRegistrationCode() -> some Code {
        Func(name: "registerClasses",
             parameters: .named("classRegister", type: "ClassRegister", label: "using")) {
            Stack {
                ForEach(classDefinitions) { classDefinition in
                    Group {
                        if let filePath = classDefinition.filePath {
                            ("Defined inside file: " + filePath).comment()
                        }
                        "classRegister.registerClass(ofType: \(classDefinition.name).self, parentType: \(classDefinition.superclassName).self) { _, _, _ in"
                        "} createInstanceFunction: { _ in"
                        
                        Return("classRegister.instantiateClass(ofType: \(classDefinition.name).self)").indent()
                        
                        "} freeInstanceFunction: { _, instancePtr in"
                        
                        "Unmanaged<\(classDefinition.name)>.fromOpaque(instancePtr!).release()".indent()
                        
                        "}"
                    }
                }
            }
        }.private()
    }
}
