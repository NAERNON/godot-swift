import Foundation
import CodeGenerator

struct GodotBridgeFile: File {
    let moduleEntryCFunction: String
    let classDefinitions: [ClassDefinition]
    
    let path: String = "_GodotBridge.swift"
    
    init(moduleEntryCFunction: String,
         classDefinitions: [ClassDefinition]) {
        self.moduleEntryCFunction = moduleEntryCFunction
        self.classDefinitions = classDefinitions
    }
    
    private func isClassExportable(_ classDefinition: ClassDefinition) -> Bool {
        if let accessControl = classDefinition.accessControl,
           accessControl >= .public,
           classDefinition.name.hasSuffix("_godot") {
            return true
        } else {
            return false
        }
    }
    
    private func isFunctionExportable(_ functionDefinition: FunctionDefinition) -> Bool {
        if let accessControl = functionDefinition.accessControl,
           accessControl >= .public,
           functionDefinition.name.hasSuffix("_godot") {
            return true
        } else {
            return false
        }
    }
    
    // MARK: Code
    
    var code: some Code {
        let filteredClassDefinitions = classDefinitions.filter(isClassExportable)
        
        Import("GodotExtensionHeaders")
        Import("Godot")
        
        Space()
        
        Stack {
            initializationModuleCode()
            classRegistrationCode(for: filteredClassDefinitions)
            functionRegistrationCode(for: filteredClassDefinitions)
        }
    }
    
    @CodeBuilder
    private func initializationModuleCode() -> some Code {
        Container {
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
    
    @CodeBuilder
    private func classRegistrationCode(for classDefinitions: [ClassDefinition]) -> some Code {
        Mark("Class registration", isSeparator: true)
        
        Func(name: "registerClasses") {
            Stack {
                ForEach(classDefinitions) { classDefinition in
                    ClassRegistration(definition: classDefinition)
                }
            }
        }.private()
    }
    
    @CodeBuilder
    private func functionRegistrationCode(for classDefinitions: [ClassDefinition]) -> some Code {
        let filteredFunctionDefinitions = classDefinitions
            .map { $0.functionDefinitions().filter(isFunctionExportable)
            }
        let functionParametersCodes = filteredFunctionDefinitions
            .reduce(into: Set<FunctionParameters>()) { partialResult, functionDefinitions in
                for functionDefinition in functionDefinitions {
                    partialResult.insert(.init(parametersCount: functionDefinition.parameters.count,
                                               functionReturns: functionDefinition.returnType != nil))
                }
            }
        
        Mark("Function registration", isSeparator: true)
        
        ForEach(functionParametersCodes.sorted()) { code in
            code
        }
        
        Extension("GDExtensionConstVariantPtr") {
            "func functionParameter<T>() -> T where T : ExpressibleByVariant {"
            "try! T(variant: Variant(extensionVariantPtr: self))".indent()
            "}"
        }.private()
        
        Func(name: "registerFunctions") {
            Stack {
                ForEach(0..<classDefinitions.count) { index in
                    let classDefinition = classDefinitions[index]
                    let functionDefinitions = filteredFunctionDefinitions[index]
                    
                    ForEach(functionDefinitions) { functionDefinition in
                        FunctionRegistration(definition: functionDefinition, className: classDefinition.name)
                    }
                }
            }
        }.private()
    }
}
