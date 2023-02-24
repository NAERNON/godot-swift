import Foundation
import CodeGenerator

extension ExtensionApi.BuiltinClass {
    @CodeBuilder
    func code(classSize: Int) -> some Code {
        if name.isBuiltinBaseValueType {
            Extension(name.toSwift()) {
                insideStructOrExtensionCode(classSize: classSize)
            }
        } else {
            Struct(name.toSwift()) {
                insideStructOrExtensionCode(classSize: classSize)
            }.public()
        }
        
        Space()
        
        customDebugStringConvertibleExtensionCode()
    }
    
    @CodeBuilder
    private func insideStructOrExtensionCode(classSize: Int) -> some Code {
        Stack {
            constantsCode()
            enumCode()
            constructorsCode(classSize: classSize)
            operatorsCode()
            getterSetterCode()
            keyedCode()
            methodsCode()
            bindingsCode()
        }
        
        if name.isBuiltinOpaqueValueType {
            opaqueCode().padding(.top)
        }
    }
    
    @CodeBuilder
    private func enumCode() -> some Code {
        if let enums,
           !enums.isEmpty {
            Mark("Enums", isSeparator: true)
            for `enum` in enums {
                `enum`.code(definedInside: name)
            }
        }
    }
    
    @CodeBuilder
    private func constructorsCode(classSize: Int) -> some Code {
        Mark("Init", isSeparator: true)
        
        if name.isBuiltinOpaqueValueType {
            Init(parameters: .named("opaque", type: "Opaque")) {
                Property("opaque").selfDefined().assign("opaque")
            }.private()
        }
        
        for constructor in constructors {
            constructor.code(type: name,
                             classSize: classSize,
                             hasDestructor: hasDestructor,
                             godotDestructorPtrName: godotDestructorPtrName)
        }
    }
    
    @CodeBuilder
    private func methodsCode() -> some Code {
        if let methods,
           !methods.isEmpty {
            Mark("Functions", isSeparator: true)
            
            for method in methods {
                method.code(type: name)
            }
        }
    }
    
    @CodeBuilder
    private func operatorsCode() -> some Code {
        if !operators.isEmpty {
            Mark("Operators", isSeparator: true)
            for op in operators {
                op.code(type: name)
            }
        }
    }
    
    private func customDebugStringConvertibleExtensionCode() -> some Code {
        Extension(name.toSwift(), extensions: ["CustomDebugStringConvertible"]) {
            Var("debugDescription").public().typed("Swift.String").curlyBraces {
                "Variant(self).debugDescription"
            }
        }
    }
    
    var godotVariantType: String {
        name.godotVariantType
    }
    
    var godotDestructorPtrName: String {
        "__destructor"
    }
}
