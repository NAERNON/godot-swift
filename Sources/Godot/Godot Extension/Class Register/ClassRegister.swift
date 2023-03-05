import Foundation
import GodotExtensionHeaders

#warning("METHOD_FLAGS_DEFAULT from the json file.")
private let METHOD_FLAGS_DEFAULT: UInt32 = 24

public final class ClassRegister {
    
    // MARK: Properties
    
    internal static let shared = ClassRegister()
    
    private var currentLevel: GDNativeInitializationLevel?
    private var classNameToClassBinding = [StringName : ClassBinding]()
    
    // MARK: Init
    
    private init() {}
    
    // MARK: Initialize & deinitialize level
    
    func initialize(level: GDNativeInitializationLevel) {
        currentLevel = level
    }
    
    func deinitialize(level: GDNativeInitializationLevel) {
        let classesToUnregister = classNameToClassBinding.compactMap { (name, binding) in
            if binding.level == level {
                return name
            } else {
                return nil
            }
        }
        
        for className in classesToUnregister {
            let classBinding = classNameToClassBinding.removeValue(forKey: className)!
            
            classBinding.name.withUnsafeNativePointer { namePtr in
                GodotExtension.shared.interface.classdb_unregister_extension_class(
                    GodotExtension.shared.libraryPtr,
                    namePtr
                )
            }
        }
    }
    
    // MARK: Class registration
    
    public func instantiateClass<Class>(ofType type: Class.Type) -> GDNativeObjectPtr where Class : Object {
        let instance = Class()
        var objectPtr: GDNativeObjectPtr!
        
        instance.withUnsafeNativePointer { ptr in
            objectPtr = ptr
        }
        
        return objectPtr
    }
    
    @discardableResult
    public func registerClass<Class, Parent>(
        ofType classType: Class.Type,
        parentType: Parent.Type,
        toStringFunction: GDNativeExtensionClassToString,
        createInstanceFunction: GDNativeExtensionClassCreateInstance,
        freeInstanceFunction: GDNativeExtensionClassFreeInstance
    ) -> Bool
    where Class : Object,
          Parent : Object
    {
        guard let currentLevel else { return false }
        
        let className = StringName(swiftString: .init(describing: classType))
        let parentClassName = StringName(swiftString: .init(describing: parentType))
        
        guard classNameToClassBinding[className] == nil else {
            printGodotError("Cannot register class \(classType) because it is already registered.")
            return false
        }
        
        // Register this class within our extension.
        let classBinding = ClassBinding(
            level: currentLevel,
            name: className,
            parentName: parentClassName
        )
        classNameToClassBinding[className] = classBinding
        
#warning("Fill all the blanks")
        var godotClassInfo = GDNativeExtensionClassCreationInfo(
            is_virtual: 0,
            is_abstract: 0,
            set_func: { _, _, _ in
                return 1
            },
            get_func: { _, _, _ in
                return 1
            },
            get_property_list_func: { a, b in
                return nil
            },
            free_property_list_func: { _, _ in },
            property_can_revert_func: { _, _ in while true {} },
            property_get_revert_func: { _, _, _ in while true {} },
            notification_func: { _, _ in },
            to_string_func: toStringFunction,
            reference_func: nil,
            unreference_func: nil,
            create_instance_func: createInstanceFunction, // This one is mandatory.
            free_instance_func: freeInstanceFunction, // This one is mandatory.
            get_virtual_func: { ClassRegister.virtualFunc(fromUserDataPtr: $0, methodNamePtr: $1) },
            get_rid_func: nil,
            class_userdata: Unmanaged.passUnretained(classBinding).toOpaque()
        )
        
        className.withUnsafeNativePointer { namePtr in
            parentClassName.withUnsafeNativePointer { parentNamePtr in
                withUnsafePointer(to: godotClassInfo) { classInfoPtr in
                    GodotExtension.shared.interface.classdb_register_extension_class(
                        GodotExtension.shared.libraryPtr, namePtr, parentNamePtr, classInfoPtr
                    )
                }
            }
        }
        
        // Register all the virtual functions
        classType.setVirtualFunctionCalls { methodName, call in
            registerVirtualFunc(ofType: classType, name: methodName, call: call)
        }
        
        return true
    }
    
    // MARK: Virtual functions
    
    private static func virtualFunc(fromUserDataPtr userDataPtr: UnsafeMutableRawPointer?,
                                    methodNamePtr: GDNativeConstStringNamePtr?) -> GDNativeExtensionClassCallVirtual? {
        guard let userDataPtr else {
            printGodotError("No class data pointer provided.")
            return nil
        }
        
        guard let methodNamePtr else {
            printGodotError("No virtual func name given.")
            return nil
        }
        
        let classBinding = Unmanaged<ClassBinding>.fromOpaque(userDataPtr).takeUnretainedValue()
        let methodName = StringName.makeFromPtr(methodNamePtr)
        
        return virtualFunc(fromClassBinding: classBinding, functionName: methodName)
    }
    
    private static func virtualFunc(fromClassBinding classBinding: ClassBinding,
                                    functionName: StringName) -> GDNativeExtensionClassCallVirtual? {
        guard let classBinding = shared.classNameToClassBinding[classBinding.name] else {
            printGodotError("Class doesn't exist.")
            return nil
        }
        
        guard let functionCall = classBinding.virtualFuncCall(forName: functionName) else {
            printGodotError("Virtual func doesn't exist.")
            return nil
        }
        
        return functionCall
    }
    
    @discardableResult
    private func registerVirtualFunc<Class>(ofType type: Class.Type,
                                            name: StringName,
                                            call: GDNativeExtensionClassCallVirtual) -> Bool
    where Class : Object {
        let className = StringName(swiftString: .init(describing: type))
        
        guard let classBinding = classNameToClassBinding[className] else {
            printGodotError("Class doesn't exist.")
            return false
        }
        
        return classBinding.appendVirtualFunc(name: name, call: call)
    }
}

// MARK: - StringName extensions

private extension StringName {
    static func makeFromPtr(_ unsafeStringNamePtr: GDNativeConstStringNamePtr) -> StringName {
        let string = StringName()
        string.opaque.copyRaw(from: unsafeStringNamePtr)
        
        // We create the new string by calling the constructor to ensure copy of the data.
        return StringName(string)
    }
}