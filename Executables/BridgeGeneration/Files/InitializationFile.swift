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
    
    // MARK: Class registration
    
    private func classRegistrationCode() -> some Code {
        Func(name: "registerClasses") {
            Stack {
                ForEach(classDefinitions) { classDefinition in
                    classRegistrationCode(for: classDefinition)
                }
            }
        }.private()
    }
    
    private func classRegistrationCode(for definition: ClassDefinition) -> some Code {
        Group {
            Mark(definition.name)
            
            if let filePath = definition.filePath {
                Comment {
                    "Defined inside file: " + filePath
                }
            }
            
            "GodotExtension.shared.classRegister.registerClass(ofType: \(definition.name).self, superclassName: \"\(definition.superclassName)\") { _, _, _ in"
            
            "} createInstanceFunction: { _ in"
            
            Return("GodotExtension.shared.classRegister.instantiateClass(ofType: \(definition.name).self)").indent()
            
            "} freeInstanceFunction: { _, instancePtr in"
            
            "Unmanaged<\(definition.name)>.fromOpaque(instancePtr!).release()".indent()
            
            "}"
        }
    }
    
    // MARK: Function registration
    
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
                    functionRegistrationCode(for: functionDefinition)
                }
            }
        }.private()
    }
    
    private func functionRegistrationCode(for definition: FunctionDefinition) -> some Code {
        Group {
            Mark(definition.className + "." + definition.nameSignature)
            
            let nameParameter = "\"\(definition.name)\""
            let insideTypeParameter = "\(definition.className).self"
            let typesParameter = "GodotExtension.shared.classRegister.functionParameters(from: \(definition.className).\(definition.name), parameterNames: \(definition.parameters.map { $0.name }))"
            
            "GodotExtension.shared.classRegister.registerFunction(withName: \(nameParameter), insideType: \(insideTypeParameter), types: \(typesParameter)) { _, instancePtr, args, argsCount, returnPtr, error in"
            Group {
                "Unmanaged<\(definition.className)>.fromOpaque(instancePtr!).takeUnretainedValue()"
                "." + definition.functionCallCode(withParameters: (0..<definition.parameters.count).map {
                    "args!.advanced(by: \($0)).pointee!.functionParameter()"
                })
            }.indent()
            "}"
        }
    }
}
