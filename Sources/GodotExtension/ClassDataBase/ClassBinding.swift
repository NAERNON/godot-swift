import Foundation
import GodotExtensionHeaders
import Godot

final class ClassBinding {
    
    // MARK: Properties
    
    let level: GDNativeInitializationLevel
    let name: StringName
    let parentName: StringName
    
    private var virtualFuncNameToCall = [StringName : GDNativeExtensionClassCallVirtual]()
    
    // MARK: Init
    
    init(level: GDNativeInitializationLevel,
         name: StringName,
         parentName: StringName) {
        self.level = level
        self.name = name
        self.parentName = parentName
    }
    
    // MARK: Virtual Functions
    
    @discardableResult
    func appendVirtualFunc(name: StringName, call: GDNativeExtensionClassCallVirtual) -> Bool {
        guard virtualFuncNameToCall[name] == nil else {
            return false
        }
        
        virtualFuncNameToCall[name] = call
        
        return true
    }
    
    func virtualFuncCall(forName name: StringName) -> GDNativeExtensionClassCallVirtual? {
        virtualFuncNameToCall[name]
    }
}
