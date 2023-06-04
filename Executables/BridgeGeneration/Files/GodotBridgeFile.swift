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
    
    // MARK: Code
    
    var code: some Code {
        let exposedClassDefinitions = classDefinitions.filter(\.isExposedToGodot)
        let exposedFunctionDefinitions = exposedClassDefinitions
            .flatMap { $0.functionDefinitions().filter(\.isExposedToGodot) }
        let exposedPropertyDefinitions = exposedClassDefinitions
            .flatMap { $0.propertyDefinitions() }
        
        Import("GodotExtensionHeaders")
        Import("Godot")
        
        Space()
        
        Stack {
            initializationModuleCode()
            
            Mark("Function registration types", isSeparator: true)
            functionParametersCode(for: exposedFunctionDefinitions)
            
            Mark("Property registration types", isSeparator: true)
            propertyParameterCode()
            
            Mark("Class registration", isSeparator: true)
            classRegistrationCode(for: exposedClassDefinitions)
            
            Mark("Function registration", isSeparator: true)
            functionRegistrationCode(for: exposedFunctionDefinitions)
            
            Mark("Property registration", isSeparator: true)
            propertyRegistrationCode(for: exposedPropertyDefinitions)
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
            "registerProperties()"
            
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
        Func(name: "registerClasses") {
            Stack {
                ForEach(classDefinitions) { classDefinition in
                    ClassRegistration(definition: classDefinition)
                }
            }
        }.private()
    }
    
    @CodeBuilder
    private func functionParametersCode(for functionDefinitions: [FunctionDefinition]) -> some Code {
        Extension("GDExtensionConstVariantPtr") {
            "func functionParameter<T>() -> T where T : ExpressibleByVariant".curlyBraces {
                "try! T(variant: Variant(extensionVariantPtr: self))"
            }
        }.private()
        
        ForEach(Set(functionDefinitions.map { FunctionParameters(functionDefinition: $0) }).sorted())
        { functionParameterCode in
            functionParameterCode
        }
    }
    
    @CodeBuilder
    private func functionRegistrationCode(for functionDefinitions: [FunctionDefinition]) -> some Code {
        Func(name: "registerFunctions") {
            Stack {
                ForEach(functionDefinitions) { functionDefinition in
                    FunctionRegistration(definition: functionDefinition)
                }
            }
        }.private()
    }
    
    @CodeBuilder
    private func propertyParameterCode() -> some Code {
        Container {
            "private func getterPropertyParameters<T, R>(keyPath: KeyPath<T, R>) -> ClassRegister.FunctionRegistrationTypes"
            "where R : TypedVariantTransformable".indent()
            
            CurlyBracesBlock {
                Container {
                    ".init(arguments: [], returnType: .init(type: R.self, name: StringName()))"
                }
            }
        }
        
        Container {
            "private func setterPropertyParameters<T, R>(keyPath: WritableKeyPath<T, R>, name: StringName) -> ClassRegister.FunctionRegistrationTypes"
            "where R : TypedVariantTransformable".indent()
            
            CurlyBracesBlock {
                Container {
                    ".init(arguments: [.init(type: R.self, name: name)], returnType: nil)"
                }
            }
        }
    }
    
    @CodeBuilder
    private func propertyRegistrationCode(for propertyDefinitions: [PropertyDefinition]) -> some Code {
        Func(name: "registerProperties") {
            Stack {
                ForEach(propertyDefinitions) { propertyDefinition in
                    PropertyRegistration(definition: propertyDefinition)
                }
            }
        }.private()
    }
}
