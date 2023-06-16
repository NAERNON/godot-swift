import Foundation
import CodeGenerator

extension ExtensionApi.Class {
    @CodeBuilder
    func bindingsCallbackCode() -> some Code {
        Func(name: "instanceBindingsCallbacks", returnType: "GDExtensionInstanceBindingCallbacks") {
            """
            return GDExtensionInstanceBindingCallbacks { token, instance in
                return Unmanaged.passRetained(\(name.code())(extensionObjectPtr: instance!)).toOpaque()
            } free_callback: { token, instance, bindings in
                Unmanaged<\(name.code())>.fromOpaque(instance!).takeRetainedValue().withUnsafeExtensionPointer { __ptr_self in
                    GodotExtension.interface.mem_free(__ptr_self)
                }
            } reference_callback: { token, instance, reference in
                return 1
            }
            """
        }.class().override(!isRootClass).internal()
    }
    
    @CodeBuilder
    func classNameFunctionCode() -> some Code {
        """
        private static let __gd_className: StringName = "\(name.code())"
        
        open \(isRootClass ? "" : "override ")class var _gd_className: StringName { __gd_className }
        open \(isRootClass ? "" : "override ")class var _gd_isCustomClass: Bool { false }
        internal \(isRootClass ? "" : "override ")class var _gd_lastDerivedClassName: StringName { __gd_className }
        """
    }
    
    @CodeBuilder
    func exposeToGodotCode() -> some Code {
        """
        open \(isRootClass ? "" : "override ")class func _gd_exposeToGodot() {
            guard GodotExtension.classRegister.registerBaseGodotClass(ofType: self) else {
                return
            }
            
            setFunctionBindings()
        }
        """
    }
}
