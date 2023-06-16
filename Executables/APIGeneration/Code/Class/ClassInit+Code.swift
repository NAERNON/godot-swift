import Foundation
import CodeGenerator

extension ExtensionApi.Class {
    @CodeBuilder
    func initsCode() -> some Code {
        Mark("Inits", isSeparator: true)
        
        baseInitCode()
        extensionObjectInitCode()
        variantInitCode()
        classNameFunctionCode()
        exposeToGodotCode()
    }
    
    @CodeBuilder
    private func baseInitCode() -> some Code {
        if isRootClass {
            Let("extensionObjectPtr").typed("GDExtensionObjectPtr").internal()
            
            Init() {
                """
                var extensionObjectPtr: GDExtensionObjectPtr!
                
                Self._gd_lastDerivedClassName.withUnsafeExtensionPointer { namePtr in
                    extensionObjectPtr = GodotExtension.interface.classdb_construct_object(namePtr)!
                }
                
                self.extensionObjectPtr = extensionObjectPtr
                
                if Self._gd_isCustomClass {
                    Self._gd_className.withUnsafeExtensionPointer { classNamePtr in
                        GodotExtension.interface.object_set_instance(extensionObjectPtr, classNamePtr, Unmanaged.passRetained(self).toOpaque())
                    }
                }
                """
            }.required().public()
        } else if isRefCountedRootClass {
            Init() {
                "super.init()"
                "_ = initRef()"
            }.required().public()
            
            Deinit {
                If("unreference()") {
                    Property("self").pointerAccess(type: name, mutability: .constMutablePointer) { pointerName in
                        "GodotExtension.interface.mem_free(\(pointerName))"
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
    private func extensionObjectInitCode() -> some Code {
        if isRootClass {
            Init(parameters: .named("extensionObjectPtr", type: "GDExtensionObjectPtr")) {
                Property("extensionObjectPtr").selfDefined().assign("extensionObjectPtr")
            }.internal()
        } else {
            Init(parameters: .named("extensionObjectPtr", type: "GDExtensionObjectPtr")) {
                "super.init(extensionObjectPtr: extensionObjectPtr)"
                if isRefCountedRootClass {
                    "_ = initRef()"
                }
            }.override().internal()
        }
    }
    
    @CodeBuilder
    private func variantInitCode() -> some Code {
        Init(parameters: .named("typedVariant", type: "Variant")) {
            if isRootClass {
                Property("extensionObjectPtr").assign("typedVariant.uncheckedObjectValue(ofType: Self.self).extensionObjectPtr")
            } else {
                "super.init(typedVariant: typedVariant)"
                if isRefCountedRootClass {
                    "_ = initRef()"
                }
            }
        }.required().public()
    }
}
