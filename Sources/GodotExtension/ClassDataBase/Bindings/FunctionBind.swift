import Foundation
import GodotExtensionHeaders

final public class FunctionBind {
    let definition: FunctionDefinition
    let hintFlags: UInt32
    let defaultArgumentValues: [Variant]
    
    private let cArgumentNames: [(ptr: UnsafeMutablePointer<CChar>, capacity: Int)]
    
    init(definition: FunctionDefinition,
         hintFlags: UInt32) {
        self.definition = definition
        self.hintFlags = hintFlags
        
        defaultArgumentValues = definition.arguments.map { argument in
            Variant()
        }
        
        cArgumentNames = definition.arguments.map { argument in
            let name = argument.name.cString(using: .utf8)
            
            let capacity = name?.count ?? 0
            let pointer = UnsafeMutablePointer<CChar>.allocate(capacity: capacity)
            
            if let name {
                pointer.initialize(from: name, count: capacity)
            }
            
            return (pointer, capacity)
        }
    }
    
    deinit {
        for (argumentPtr, capacity) in cArgumentNames {
            argumentPtr.deinitialize(count: capacity)
            argumentPtr.deallocate()
        }
    }
    
    var functionFlags: UInt32 {
        hintFlags
        | GDNATIVE_EXTENSION_METHOD_FLAG_CONST.rawValue
        | (definition.isStatic ? GDNATIVE_EXTENSION_METHOD_FLAG_STATIC.rawValue : 0)
    }
    
    func withUnsafeDefaultArguments(_ body: (UnsafeMutablePointer<GDNativeVariantPtr?>) -> Void) {
        let capacity = defaultArgumentValues.count
        let defaultArgumentsPtr = UnsafeMutablePointer<GDNativeVariantPtr?>.allocate(capacity: capacity)
        
        for (index, variant) in defaultArgumentValues.enumerated() {
            (defaultArgumentsPtr + index).initialize(to: variant.nativePtr)
        }
        
        body(defaultArgumentsPtr)
        
        defaultArgumentsPtr.deinitialize(count: capacity)
        defaultArgumentsPtr.deallocate()
    }
    
    // MARK: Static functions
    
    static func argumentType(functionBindPtr: UnsafeMutableRawPointer?, argumentIndex: Int32) -> GDNativeVariantType {
        guard let functionBindPtr else {
            printGodotError("No method user data given.")
            return GDNATIVE_VARIANT_TYPE_NIL
        }
        
        let functionBind = Unmanaged<FunctionBind>.fromOpaque(functionBindPtr).takeUnretainedValue()
        let functionDefinition = functionBind.definition
        let numberOfArguments = Int32(functionDefinition.numberOfArguments)
        
        guard argumentIndex >= -1 && argumentIndex < numberOfArguments else {
            return GDNATIVE_VARIANT_TYPE_NIL
        }
        
        if numberOfArguments < 0 { // -1 is the return type.
            return (functionDefinition.returnType).variantType
        } else {
            return functionDefinition.arguments[Int(argumentIndex)].type.variantType
        }
    }
    
    static func argumentInfo(functionBindPtr: UnsafeMutableRawPointer?,
                             argumentIndex: Int32,
                             propertyInfoPtr: UnsafeMutablePointer<GDNativePropertyInfo>?) {
        guard let functionBindPtr else { return }
        
        let functionBind = Unmanaged<FunctionBind>.fromOpaque(functionBindPtr).takeUnretainedValue()
        
        guard argumentIndex >= 0 && argumentIndex < functionBind.cArgumentNames.count else { return }
        
        if argumentIndex < functionBind.cArgumentNames.count {
            let mutablePtr = functionBind.cArgumentNames[Int(argumentIndex)].ptr
            propertyInfoPtr?.pointee.name = UnsafePointer(mutablePtr)
        }
    }
    
    static func argumentMetaData(functionBindPtr: UnsafeMutableRawPointer?,
                                 argumentIndex: Int32) -> GDNativeExtensionClassMethodArgumentMetadata {
        guard let functionBindPtr else { return GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_NONE }
        
        let functionBind = Unmanaged<FunctionBind>.fromOpaque(functionBindPtr).takeUnretainedValue()
        let functionDefinition = functionBind.definition
        let numberOfArguments = Int32(functionDefinition.numberOfArguments)
        
        guard argumentIndex >= -1 && argumentIndex < numberOfArguments else {
            return GDNATIVE_EXTENSION_METHOD_ARGUMENT_METADATA_NONE
        }
        
        if numberOfArguments < 0 { // -1 is the return type.
            return (functionDefinition.returnType).metaData
        } else {
            return functionDefinition.arguments[Int(argumentIndex)].type.metaData
        }
    }
}
