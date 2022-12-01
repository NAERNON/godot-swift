import Foundation

#warning("isRefcounted and isInstantiable not used from ExtensionApi.Class. Is it ok or am I dumb ?")

extension ExtensionApi.Class {
    func code(translated: Bool) -> some SwiftCode {
        Class(name, extensions: extensions) {
            methodsCode(translated: translated)
            enumsCode(translated: translated)
        }.public()
    }
    
    private var extensions: [String] {
        if let superclass = inherits {
            return [superclass]
        }
        return []
    }
    
    @CodeBuilder
    private func methodsCode(translated: Bool) -> some SwiftCode {
        if let methods {
            for method in methods {
                Spacer()
                method.code(className: name, methodPointerName: methodPointerName(with: method), translated: translated)
                
                if let hash = method.hash {
                    Spacer()
                    methodPointerDefinitionCode(with: method, methodHash: hash)
                }
            }
        }
    }
    
    @CodeBuilder
    private func methodPointerDefinitionCode(with method: ExtensionApi.Class.Method, methodHash: Int) -> some SwiftCode {
        "private static let \(methodPointerName(with: method)): GDNativeMethodBindPtr? = {"
        Group {
            Property("methodPtr").varDefined().type("GDNativeMethodBindPtr?")
            
            Property("methodPtr")
                .assign(value: "GodotLibrary.main.interface?.classdb_get_method_bind(\"\(name)\", \"\(method.name)\", \(methodHash))")
            
            Return("methodPtr")
        }.indentation()
        "}()"
    }
    
    private func methodPointerName(with method: ExtensionApi.Class.Method) -> String {
        method.name + "_methodPtr"
    }
    
    @CodeBuilder
    private func enumsCode(translated: Bool) -> some SwiftCode {
        if let enums {
            Spacer()
            
            Mark(text: "Enums", isSeparator: true)
            
            for `enum` in enums {
                Spacer()
                
                `enum`.code(translated: translated)
            }
        }
    }
}