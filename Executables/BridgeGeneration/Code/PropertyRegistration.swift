import CodeGenerator

struct PropertyRegistration: Code {
    let definition: PropertyDefinition
    
    var body: some Code {
        Container {
            Mark(definition.className + "." + definition.name)
            
            if let registrationError {
                "printGodotError(\"Cannot register property \(definition.name). \(registrationError)\")"
            } else {
                PropertyGetterRegistration(definition: definition)
                
                if registersSetter {
                    PropertySetterRegistration(definition: definition)
                    registrationCode
                }
            }
        }
    }
    
    @CodeBuilder
    private var registrationCode: some Code {
        "GodotExtension.shared.classRegister.registerWritableProperty("
        Container {
            "keyPath: \\\(definition.className).\(definition.name),"
            "name: \"\(definition.translatedName)\","
            "getterFunctionName: \"\(definition.translatedGetterName)\","
            "setterFunctionName: \"\(definition.translatedSetterName)\")"
        }.indent()
    }
    
    // MARK: Registration error
    
    private var registrationError: String? {
        guard let accessControl = definition.accessControl,
              accessControl >= .public else {
            return "The property must be public."
        }
        
        return nil
    }
    
    private var registersSetter: Bool {
        if let accessControl = definition.setterAccessControl,
           accessControl >= .public {
            return true
        } else {
            return false
        }
    }
}

// MARK: - PropertyGetterRegistration

private struct PropertyGetterRegistration: Code {
    let definition: PropertyDefinition
    
    var body: some Code {
        Container {
            "GodotExtension.shared.classRegister.registerFunction("
            Container {
                "withName: \"\(definition.translatedGetterName)\","
                "insideType: \(definition.className).self,"
                "types: getterPropertyParameters(keyPath: \\\(definition.className).\(definition.name)),"
                "isStatic: false"
            }.indent()
            
            ")".curlyBraces("_, instancePtr, args, argsCount, returnPtr, error in") {
                Container {
                    "let returnValue = Unmanaged<\(definition.className)>.fromOpaque(instancePtr!).takeUnretainedValue()"
                    "." + definition.name
                    
                    "returnValue.variant.copyTo(variantPtr: returnPtr!)"
                }
            }
        }
    }
}

// MARK: - PropertySetterRegistration

private struct PropertySetterRegistration: Code {
    let definition: PropertyDefinition
    
    var body: some Code {
        Container {
            "GodotExtension.shared.classRegister.registerFunction("
            Container {
                "withName: \"\(definition.translatedSetterName)\","
                "insideType: \(definition.className).self,"
                "types: setterPropertyParameters(keyPath: \\\(definition.className).\(definition.name), name: \"\(definition.translatedName)\"),"
                "isStatic: false"
            }.indent()
            
            ")".curlyBraces("_, instancePtr, args, argsCount, returnPtr, error in") {
                Container {
                    "var object = Unmanaged<\(definition.className)>.fromOpaque(instancePtr!).takeUnretainedValue()"
                    
                    "object[keyPath: \\\(definition.className).\(definition.name)] = args!.pointee!.functionParameter()"
                }
            }
        }
    }
}
