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
    
    private func isPropertySetterExportable(_ propertyDefinition: PropertyDefinition) -> Bool {
        if let accessControl = propertyDefinition.setterAccessControl,
           accessControl >= .public {
            return true
        } else {
            return false
        }
    }
    
    // MARK: Code
    
    var code: some Code {
        let filteredClassDefinitions = classDefinitions.filter(isClassExportable)
        let filteredFunctionDefinitions = filteredClassDefinitions
            .flatMap { $0.functionDefinitions().filter(isFunctionExportable) }
        let filteredPropertyDefinitions = filteredClassDefinitions
            .flatMap { $0.propertyDefinitions() }
        
        Import("GodotExtensionHeaders")
        Import("Godot")
        
        Space()
        
        Stack {
            initializationModuleCode()
            
            functionParametersCode(for: filteredFunctionDefinitions)
            propertyParameterCode()
            
            classRegistrationCode(for: filteredClassDefinitions)
            functionRegistrationCode(for: filteredFunctionDefinitions)
            propertyRegistrationCode(for: filteredPropertyDefinitions)
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
    private func functionParametersCode(for functionDefinitions: [FunctionDefinition]) -> some Code {
        Mark("Function registration types", isSeparator: true)
        
        Extension("GDExtensionConstVariantPtr") {
            "func functionParameter<T>() -> T where T : ExpressibleByVariant {"
            "try! T(variant: Variant(extensionVariantPtr: self))".indent()
            "}"
        }.private()
        
        ForEach(Set(functionDefinitions.map { FunctionParameters(functionDefinition: $0) }).sorted())
        { functionParameterCode in
            functionParameterCode
        }
    }
    
    @CodeBuilder
    private func functionRegistrationCode(for functionDefinitions: [FunctionDefinition]) -> some Code {
        Mark("Function registration", isSeparator: true)
        
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
        Mark("Property registration types", isSeparator: true)
        
        Container {
            "private func getterPropertyParameters<T, R>(keyPath: KeyPath<T, R>) -> ClassRegister.FunctionRegistrationTypes"
            "where R : TypedVariantTransformable".indent()
            
            "{"
            Container {
                ".init(arguments: [], returnType: .init(type: R.self, name: StringName()))"
            }.indent()
            "}"
        }
        
        Container {
            "private func setterPropertyParameters<T, R>(keyPath: WritableKeyPath<T, R>, name: StringName) -> ClassRegister.FunctionRegistrationTypes"
            "where R : TypedVariantTransformable".indent()
            
            "{"
            Container {
                ".init(arguments: [.init(type: R.self, name: name)], returnType: nil)"
            }.indent()
            "}"
        }
    }
    
    @CodeBuilder
    private func propertyRegistrationCode(for propertyDefinitions: [PropertyDefinition]) -> some Code {
        Mark("Property registration", isSeparator: true)
        
        Func(name: "registerProperties") {
            Stack {
                ForEach(propertyDefinitions) { propertyDefinition in
                    PropertyGetterRegistration(definition: propertyDefinition)
                    
                    if isPropertySetterExportable(propertyDefinition) {
                        PropertySetterRegistration(definition: propertyDefinition)
                        
                        PropertyRegistration(definition: propertyDefinition)
                    }
                }
            }
        }.private()
    }
}
