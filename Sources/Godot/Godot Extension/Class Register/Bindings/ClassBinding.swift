import Foundation
import GodotExtensionHeaders

extension ClassRegister {
    final class ClassBinding {
        let level: GDExtensionInitializationLevel
        let type: Object.Type
        let name: StringName
        let superclassName: StringName
        
        private var virtualFuncNameToCall = [StringName : GDExtensionClassCallVirtual]()
        
        private(set) var functions = [FunctionBinding]()
        
        // MARK: Init
        
        init(level: GDExtensionInitializationLevel,
             type: Object.Type,
             name: StringName,
             superclassName: StringName) {
            self.level = level
            self.type = type
            self.name = name
            self.superclassName = superclassName
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
        
        // MARK: Functions
        
        func appendFunctionBinding(_ functionBinding: FunctionBinding) {
            functions.append(functionBinding)
        }
    }
}
