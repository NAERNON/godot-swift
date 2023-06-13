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
            
            Init() { #warning("Check another way to know if the class is an extension class.")
                """
                var extensionObjectPtr: GDExtensionObjectPtr!
                Self.lastDerivedGodotClassName().withUnsafeExtensionPointer { namePtr in
                    extensionObjectPtr = GodotExtension.shared.interface.classdb_construct_object(namePtr)!
                }

                self.extensionObjectPtr = extensionObjectPtr

                let className = StringName(swiftString: .init(describing: Self.self))
                if className != Self.lastDerivedGodotClassName() {
                    self.withUnsafeExtensionPointer { ptr in
                        className.withUnsafeExtensionPointer { classNamePtr in
                            GodotExtension.shared.interface.object_set_instance(ptr, classNamePtr, Unmanaged.passRetained(self).toOpaque())
                        }
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
                        "GodotExtension.shared.interface.mem_free(\(pointerName))"
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
