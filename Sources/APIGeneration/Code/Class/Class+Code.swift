import Foundation
import CodeGenerator

#warning("isRefcounted and isInstantiable, isVararg, isVirtual not used from ExtensionApi.Class. Is it ok or am I dumb ?")

extension ExtensionApi.Class {
    var isRootClass: Bool { name == "Object" }
    
    @CodeBuilder
    func code() -> some Code {
        Class(name.code(), extensions: inherits == nil ? [] : [inherits!.code()]) {
            Stack {
                initsCode()
                if isRootClass {
                    isExtensionClassCode()
                }
                bindingsCallbackCode()
                enumCode()
                methodsCode()
                bindingsCode()
            }
        }.open()
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
    private func methodsCode() -> some Code {
        if let methods,
           !methods.isEmpty {
            Mark("Functions", isSeparator: true)
            
            for method in methods {
                method.code(type: name, accessControl: accessControl(for: method))
            }
        }
    }
    
    private func accessControl(for method: Method) -> AccessControl {
        isRefCountedRootClass ? .private : method.isStatic ? .public : .open
    }
    
    var isRefCountedRootClass: Bool {
        name == "RefCounted"
    }
}
