import Foundation
import CodeGenerator
import CodeTranslator

extension ExtensionApi.BuiltinClass {
    func opaqueCode() -> some Code {
        Stack {
            replaceOpaqueValueCode()
            extensionPtrCode()
        }
    }
    
    @CodeBuilder
    private func replaceOpaqueValueCode() -> some Code {
        Func(name: "replaceOpaqueValueIfNecessary") {
            // We find a constructor that will duplicate our value.
            Guard(condition: "!isKnownUniquelyReferenced(&opaque)") {
                Return()
            }
            
            Space()
            
            Property("tmp").letDefined().assign("Self(self)")
            Property("opaque").selfDefined().assign("tmp.opaque")
        }
        .mutating()
        .private()
        .documentation {
            """
            When a function modifies the opaque array or any value associated,
            we should check that the `Opaque` value is uniquely referenced and if not,
            duplicate its value.
            """
        }
    }
    
    @CodeBuilder
    private func extensionPtrCode() -> some Code {
        Var("opaque").typed("Opaque").privateSet()
        
        Func(name: "withUnsafeExtensionPointer", parameters: .named("body", type: "(GDExtensionTypePtr) -> ()", label: .hidden)) {
            "opaque.withUnsafeMutableRawPointer(body)"
        }.internal()
        
        Func(name: "opaqueIsZero", returnType: "Bool") {
            "opaque.isZero()"
        }.internal()
        
        Var("opaqueDescription").typed("Swift.String").curlyBraces {
            "opaque.debugDescription"
        }.internal()
    }
}
