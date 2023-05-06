import Foundation
import GodotExtensionHeaders

extension ClassRegister {
    @discardableResult
    public func registerClass<Class>(
        ofType classType: Class.Type,
        superclassName: StringName,
        toStringFunction: GDExtensionClassToString,
        createInstanceFunction: GDExtensionClassCreateInstance,
        freeInstanceFunction: GDExtensionClassFreeInstance)
    -> RegistrationResult {
        // If the type is not an Object, then nothing should be done.
        return .none
    }
    
    public func instantiateClass<Class>(ofType type: Class.Type) -> GDExtensionObjectPtr {
        fatalError("Cannot instantiate class that is not a subclass of Object.")
    }
    
    @discardableResult
    public func registerFunction<Class>(
        withName functionName: Swift.String,
        insideType classType: Class.Type,
        types: FunctionRegistrationTypes?,
        call: GDExtensionClassMethodCall)
    -> RegistrationResult {
        return .none
    }
    
    @discardableResult
    public func registerFunction<Class>(
        withName functionName: Swift.String,
        insideType classType: Class.Type,
        types: FunctionRegistrationTypes?,
        call: GDExtensionClassMethodCall)
    -> RegistrationResult where Class : Object {
        guard let types else {
            return .none
        }
        
        return registerFunction(withName: functionName,
                                insideType: classType,
                                types: types,
                                call: call)
    }
}
