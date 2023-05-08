import Foundation
import CodeGenerator

struct InitializationFile: File {
    let moduleEntryCFunction: String
    let classDefinitions: [ClassDefinition]
    let functionDefinitions: [FunctionDefinition]
    
    let path: String = "Initialization.swift"
    
    init(moduleEntryCFunction: String,
         classDefinitions: [ClassDefinition],
         functionDefinitions: [FunctionDefinition]) {
        self.moduleEntryCFunction = moduleEntryCFunction
        self.classDefinitions = classDefinitions
        self.functionDefinitions = functionDefinitions
    }
    
    var code: some Code {
        Import("GodotExtensionHeaders")
        Import("Godot")
        
        Space()
        
        Stack {
            initializationModuleCode()
            
            Mark("Class registration", isSeparator: true)
            
            classRegistrationCode()
            
            Mark("Function registration", isSeparator: true)
            
            functionParameterFromPointerCode()
            
            functionRegistrationCode()
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
            Guard(condition: "level == GDEXTENSION_INITIALIZATION_SCENE") {
                Return()
            }
            
            Space()
            
            "registerClasses()"
            "registerFunctions()"
            
            Space()
            
            "GodotExtension.shared.classRegister.closeRegistration()"
        }.private()
        
        Func(name: "unitializeModule", parameters: .named("level", type: "GDExtensionInitializationLevel")) {
#warning("Fill this")
            EmptyCode()
        }.private()
    }
    
    private func classRegistrationCode() -> some Code {
        Func(name: "registerClasses") {
            Stack {
                ForEach(classDefinitions) { classDefinition in
                    ClassRegistration(definition: classDefinition)
                }
            }
        }.private()
    }
    
    private func functionParameterFromPointerCode() -> some Code {
        Extension("GDExtensionConstVariantPtr") {
            "func functionParameter<T>() -> T {"
            "fatalError()".indent()
            "}"
            
            Space()
            
            "func functionParameter<T>() -> T where T : ExpressibleByVariant {"
            "try! T(variant: Variant(extensionVariantPtr: self))".indent()
            "}"
        }.private()
    }
    
    private func functionRegistrationCode() -> some Code {
        Func(name: "registerFunctions") {
            Stack {
                ForEach(functionDefinitions) { functionDefinition in
                    FunctionRegistration(definition: functionDefinition)
                }
            }
        }.private()
    }
}
