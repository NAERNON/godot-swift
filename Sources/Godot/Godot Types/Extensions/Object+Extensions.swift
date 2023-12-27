import GodotExtensionHeaders

extension Object {
    internal class func retrievedInstanceManagedByGodot(_ instancePtr: GDExtensionObjectPtr?) -> Self? {
        guard let instancePtr else {
            return nil
        }
        
        guard let className = GodotStringName.className(forObjectPointer: instancePtr) else {
            gdDebugPrintError("Cannot retrieve class name of an instance")
            return nil
        }
        
        guard let binding = GodotExtension.classRegistrar.binding(forClassNamed: className) else {
            gdDebugPrintError("No class binding found for class \(className)")
            return nil
        }
        
        let instance: Object = withUnsafePointer(to: binding.callbacks) { callbacksPointer in
            let opaque = GodotExtension.Interface.objectGetInstanceBinding(
                instancePtr,
                GodotExtension.token,
                callbacksPointer
            )
            
            return binding.type._retrieveObjectInstance(fromUnsafePointer: opaque!)
        }
        
        return instance as? Self
    }
}

extension Object: Equatable {
    public static func == (lhs: Object, rhs: Object) -> Bool {
        lhs.instanceId() == rhs.instanceId()
    }
}

extension Object: CustomStringConvertible {
    public var description: String {
        "\(Self.self)<\(instanceId())>"
    }
}

extension Object: CustomDebugStringConvertible {
    public var debugDescription: String {
        "\(Self.self)<\(instanceId())>"
    }
}
