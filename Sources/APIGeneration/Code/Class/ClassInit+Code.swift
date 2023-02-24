import Foundation
import CodeGenerator

extension ExtensionApi.Class {
    @CodeBuilder
    func initsCode() -> some Code {
        Mark("Inits", isSeparator: true)
        
        baseInitCode()
        nativeObjectInitCode()
        variantInitCode()
        classNameFunctionCode()
    }
    
    @CodeBuilder
    private func baseInitCode() -> some Code {
        if isRootClass {
            Let("nativeObjectPtr").typed("GDNativeObjectPtr").internal()
            
            Init() { #warning("Check another way to know if the class is an extension class.")
"""
var nativeObjectPtr: GDNativeObjectPtr!
Self.lastDerivedGodotClassName().withUnsafeNativePointer { namePtr in
    nativeObjectPtr = GodotInterface.native.classdb_construct_object(namePtr)!
}

self.nativeObjectPtr = nativeObjectPtr

let className = StringName(swiftString: .init(describing: Self.self))
if className != Self.lastDerivedGodotClassName() {
    self.withUnsafeNativePointer { ptr in
        className.withUnsafeNativePointer { classNamePtr in
            GodotInterface.native.object_set_instance(ptr, classNamePtr, Unmanaged.passRetained(self).toOpaque())
        }
    }
}
"""
            }.required().public()
        } else if isRefCountedRootClass {
            Var("_isReferenced").private().typed("Bool")
            
            
            Init() {
                Property("_isReferenced").assign("true")
                "super.init()"
                "_ = initRef()"
            }.required().public()
            
            Deinit {
                Guard(condition: "_isReferenced") {
                    Return()
                }
                
                If("unreference()") {
                    Property("self").pointerAccess(type: name, mutability: .constMutablePointer) { pointerName in
                        "GodotInterface.native.mem_free(\(pointerName))"
                    }
                }
            }
        } else {
            Init() {
                "super.init()"
            }.required().public()
        }
    }
    
    @CodeBuilder
    private func nativeObjectInitCode() -> some Code {
        if isRootClass {
            Init(parameters: .named("nativeObjectPtr", type: "GDNativeObjectPtr")) {
                Property("nativeObjectPtr").selfDefined().assign("nativeObjectPtr")
            }.internal()
        } else {
            Init(parameters: .named("nativeObjectPtr", type: "GDNativeObjectPtr")) {
                if isRefCountedRootClass {
                    Property("_isReferenced").assign("false")
                }
                
                "super.init(nativeObjectPtr: nativeObjectPtr)"
            }.override().internal()
        }
    }
    
    @CodeBuilder
    private func variantInitCode() -> some Code {
        Init(parameters: .named("typedVariant", type: "Variant")) {
            if isRootClass {
                Property("nativeObjectPtr").assign("typedVariant.uncheckedObjectValue(ofType: Self.self).nativeObjectPtr")
            } else {
                if isRefCountedRootClass {
                    Property("_isReferenced").assign("false")
                }
                "super.init(typedVariant: typedVariant)"
            }
        }.required().public()
    }
}
