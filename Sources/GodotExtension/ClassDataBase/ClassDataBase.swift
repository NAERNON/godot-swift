import Foundation
import GodotExtensionHeaders

#warning("METHOD_FLAGS_DEFAULT from the json file.")
private let METHOD_FLAGS_DEFAULT: UInt32 = 24

public final class ClassDataBase {
    
    // MARK: Properties
    
    public static let main = ClassDataBase()
    
    var currentLevel = GDNATIVE_INITIALIZATION_CORE
    
    private var nameToUnmanagedClass = [String : Unmanaged<ClassBind>]()
    
    // MARK: Init
    
    private init() {}
    
    // MARK: Initialize & deinitialize level
    
    func initialize(level: GDNativeInitializationLevel) {}
    
    func deinitialize(level: GDNativeInitializationLevel) {
        for (_, unmanagedClassBind) in nameToUnmanagedClass {
            let classBind = unmanagedClassBind.takeUnretainedValue()
            guard classBind.level == level else { continue }
            
            GodotLibrary.main.interface?.classdb_unregister_extension_class(
                GodotLibrary.main.libraryPtr,
                classBind.name
            )
            
            unmanagedClassBind.release()
        }
    }
    
    // MARK: Class registration
    
    @discardableResult
    public func registerClass(withName name: String,
                              parentName: String,
                              toStringFunction: @escaping GDNativeExtensionClassToString,
                              createInstanceFunction: @escaping GDNativeExtensionClassCreateInstance,
                              freeInstanceFunction: @escaping GDNativeExtensionClassFreeInstance) -> Bool {
        guard nameToUnmanagedClass[name] == nil else {
            printGodotError("Cannot register class \(name) because it is already registered.")
            return false
        }
        
        // Register this class within our extension.
        let classBind = ClassBind(name: name,
                                  parentName: parentName,
                                  level: currentLevel,
                                  signalNames: [],
                                  propertyNames: [],
                                  constantNames: [],
                                  parentInfos: nameToUnmanagedClass[parentName]?.takeUnretainedValue())
        let unmanagedClassBind = Unmanaged.passRetained(classBind)
        nameToUnmanagedClass[name] = unmanagedClassBind
        
        printGodotWarning("Registering class \(name).")
        
#warning("""
T::set_bind, // GDNativeExtensionClassSet set_func;
T::get_bind, // GDNativeExtensionClassGet get_func;
T::get_property_list_bind, // GDNativeExtensionClassGetPropertyList get_property_list_func;
T::free_property_list_bind, // GDNativeExtensionClassFreePropertyList free_property_list_func;
T::property_can_revert_bind, // GDNativeExtensionClassPropertyCanRevert property_can_revert_func;
T::property_get_revert_bind, // GDNativeExtensionClassPropertyGetRevert property_get_revert_func;
T::notification_bind, // GDNativeExtensionClassNotification notification_func;
""")
        // Register this class with Godot.
        var godotClassInfo = GDNativeExtensionClassCreationInfo(
            set_func: nil,
            get_func: nil,
            get_property_list_func: nil,
            free_property_list_func: nil,
            notification_func: nil,
            to_string_func: toStringFunction,
            reference_func: nil,
            unreference_func: nil,
            create_instance_func: createInstanceFunction, // This one is mandatory.
            free_instance_func: freeInstanceFunction, // This one is mandatory.
            get_virtual_func: { ClassDataBase.virtualFunc(fromUserDataPointer: $0, namePointer: $1) },
            get_rid_func: nil,
            class_userdata: unmanagedClassBind.toOpaque()
        )
        
        withUnsafePointer(to: &godotClassInfo) { godotClassInfoPtr in
            GodotLibrary.main.interface?.classdb_register_extension_class(
                GodotLibrary.main.libraryPtr,
                name,
                parentName,
                godotClassInfoPtr
            )
        }
        
        return true
    }
    
#warning("Necessary ?")
    private static func virtualFunc(fromUserDataPointer userDataPointer: UnsafeMutableRawPointer?,
                                    namePointer: UnsafePointer<CChar>?) -> GDNativeExtensionClassCallVirtual? {
        return nil
//        guard let classNamePointer = userDataPointer?.assumingMemoryBound(to: CChar.self) else {
//            printGodotError("Cannot retrieve String from pointer.")
//            return nil
//        }
//
//        guard let namePointer = namePointer else {
//            printGodotError("No virtual func name given.")
//            return nil
//        }
//
//        return virtualFunc(fromClassName: String(cString: classNamePointer),
//                           functionName: String(cString: namePointer))
    }

#warning("Necessary ?")
    private static func virtualFunc(fromClassName className: String,
                                    functionName: String) -> GDNativeExtensionClassCallVirtual? {
        return nil
//        guard let classInfo = ClassDataBase.main.classes[className] else {
//            printGodotError("Class doesn't exist.")
//            return nil
//        }
//
//        guard let function = classInfo.virtualMethods[functionName] else {
//            printGodotError("Virtual func doesn't exist.")
//            return nil
//        }
//
//        return function
    }
    
    // MARK: Function registration
    
    @discardableResult
    public func registerFunction(withDefinition functionDefinition: FunctionDefinition,
                                 callFunction: GDNativeExtensionClassMethodCall) -> Bool {
        guard let classBind = nameToUnmanagedClass[functionDefinition.className]?.takeUnretainedValue() else {
            printGodotError("Cannot register function \(functionDefinition.name) because the class doesn't exist.")
            return false
        }
        
        guard !classBind.functionExists(withSignature: functionDefinition.signature) else {
            printGodotError("Cannot register function \(functionDefinition.name) because it is already registered.")
            return false
        }
        
        let functionBind = FunctionBind(definition: functionDefinition,
                                        hintFlags: functionDefinition.isStatic ? 0 : METHOD_FLAGS_DEFAULT)
        
        let functionBindPtr = classBind.registerFunction(functionBind)
        
        printGodotWarning("Registering function \(functionDefinition.signature).")
        
        functionDefinition.name.withCString { cName in
            functionBind.withUnsafeDefaultArguments { defaultArgumentsPtr in
                var godotMethodInfo = GDNativeExtensionClassMethodInfo(
                    name: cName,
                    method_userdata: functionBindPtr,
                    call_func: callFunction,
                    ptrcall_func: nil,
                    method_flags: functionBind.functionFlags,
                    argument_count: functionBind.definition.numberOfArguments,
                    has_return_value: functionBind.definition.hasReturnValue ? GDNativeTrue : GDNativeFalse,
                    get_argument_type_func: { FunctionBind.argumentType(functionBindPtr: $0,
                                                                        argumentIndex: $1) },
                    get_argument_info_func: { FunctionBind.argumentInfo(functionBindPtr: $0,
                                                                        argumentIndex: $1,
                                                                        propertyInfoPtr: $2) }, // Name and hint information for the argument can be omitted in release builds. Class name should always be present if it applies.
                    get_argument_metadata_func: { FunctionBind.argumentMetaData(functionBindPtr: $0,
                                                                                argumentIndex: $1) },
                    default_argument_count: UInt32(functionBind.defaultArgumentValues.count),
                    default_arguments: defaultArgumentsPtr
                )
                
                withUnsafePointer(to: &godotMethodInfo) { godotMethodInfoPtr in
                    GodotLibrary.main.interface?.classdb_register_extension_class_method(
                        GodotLibrary.main.libraryPtr,
                        cName,
                        godotMethodInfoPtr
                    )
                }
            }
        }
        
        return true
    }
}
