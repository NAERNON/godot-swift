import Foundation
import CodeGenerator
import CodeTranslation

extension ExtensionApi.BuiltinClass {
    func opaqueCode() -> some Code {
        Stack {
            replaceOpaqueValueCode()
            nativePtrCode()
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
    private func nativePtrCode() -> some Code {
        Var("opaque").typed("Opaque").privateSet()
        
        Func(name: "withUnsafeNativePointer", parameters: .named("body", type: "(GDNativeTypePtr) -> ()", label: .hidden)) {
            "opaque.withUnsafeMutableRawPointer(body)"
        }
        .public()
        .documentation {
            "Calls a closure with a native type pointer of the underlying object. Should only be called by the `GodotLibrary`."
        }
        
        Func(name: "opaqueIsZero", returnType: "Bool") {
            "opaque.isZero()"
        }.internal()
        
        Var("opaqueDescription").typed("Swift.String").curlyBraces {
            "opaque.debugDescription"
        }.internal()
    }
}
