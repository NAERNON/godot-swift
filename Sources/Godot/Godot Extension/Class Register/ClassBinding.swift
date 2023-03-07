import Foundation
import GodotExtensionHeaders

final class ClassBinding {
    
    // MARK: Properties
    
    let level: GDExtensionInitializationLevel
    let name: StringName
    let parentName: StringName
    
    private var virtualFuncNameToCall = [StringName : GDExtensionClassCallVirtual]()
    
    // MARK: Init
    
    init(level: GDExtensionInitializationLevel,
         name: StringName,
         parentName: StringName) {
        self.level = level
        self.name = name
        self.parentName = parentName
    }
    
    // MARK: Virtual Functions
    
    @discardableResult
    func appendVirtualFunc(name: StringName, call: GDExtensionClassCallVirtual) -> Bool {
        guard virtualFuncNameToCall[name] == nil else {
            return false
        }
        
        virtualFuncNameToCall[name] = call
        
        return true
    }
    
    func virtualFuncCall(forName name: StringName) -> GDExtensionClassCallVirtual? {
        virtualFuncNameToCall[name]
    }
}
