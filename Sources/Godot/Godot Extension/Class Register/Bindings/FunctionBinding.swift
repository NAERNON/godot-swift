import Foundation
import GodotExtensionHeaders

extension ClassRegister {
    final class FunctionBinding {
        struct PropertiesDataPointer<T> {
            let returnValue: UnsafeMutablePointer<T>
            let argumentsValue: UnsafeMutablePointer<T>
        }
        
        let name: StringName
        let className: StringName
        
        let hasReturnValue: Bool
        
        let isStatic: Bool
        
        /// A Boolean value indicating whether the function has varargs at the end.
        /// In Godot, only the last parameter can be a vararg.
        let isVararg: Bool
        
        let returnTypeInfo: PropertyInfo
        
        /// Contains all the arguments `PropertyInfo` values.
        /// The last vararg argument, if exists, is not inside this array.
        private let argumentsTypeInfoWithoutVararg: [PropertyInfo]
        
        // MARK: Init
        
        init(name: StringName,
             className: StringName,
             arguments: [PropertyInfo],
             returnType: PropertyInfo?,
             isVararg: Bool,
             isStatic: Bool) {
            self.name = name
            self.className = className
            self.argumentsTypeInfoWithoutVararg = arguments
            self.returnTypeInfo = returnType ?? .none
            self.hasReturnValue = returnType != nil
            self.isVararg = isVararg
            self.isStatic = isStatic
        }
        
        // MARK: Tools
        
        var flag: UInt32 {
            GDEXTENSION_METHOD_FLAGS_DEFAULT.rawValue
            | (isStatic ? GDEXTENSION_METHOD_FLAG_STATIC.rawValue : 0)
            | (isVararg ? GDEXTENSION_METHOD_FLAG_VARARG.rawValue : 0)
        }
        
        var argumentsTypeInfo: [PropertyInfo] {
            if isVararg {
                return argumentsTypeInfoWithoutVararg + [.vararg]
            } else {
                return argumentsTypeInfoWithoutVararg
            }
        }
        
        var argumentsCount: Int {
            argumentsTypeInfo.count
        }
        
        var lastDefaultArgumentsCount: Int {
            var count = 0
            let argumentsCount = argumentsTypeInfoWithoutVararg.count
            while count < argumentsCount {
                if argumentsTypeInfoWithoutVararg[argumentsCount - count - 1].defaultValue != nil {
                    count += 1
                } else {
                    break
                }
            }
            return count
        }
        
        /// Only the consecutive last default arguments are used in Godot.
        var lastDefaultArguments: [Variant] {
            let argumentsCount = argumentsTypeInfoWithoutVararg.count
            return (0..<lastDefaultArgumentsCount).map { argumentsTypeInfoWithoutVararg[argumentsCount - $0 - 1].defaultValue! }
        }
        
        // MARK: Pointers
        
        func withGodotExtensionPropertiesInfo(_ body: (PropertiesDataPointer<GDExtensionPropertyInfo>) -> Void) {
            let properties = [returnTypeInfo] + argumentsTypeInfo
            withGodotExtensionPropertiesInfo(properties: properties) { propertiesInfo in
                let finalPointer = UnsafeMutablePointer<GDExtensionPropertyInfo>.allocate(capacity: properties.count)
                for (index, propertyInfo) in propertiesInfo.enumerated() {
                    finalPointer[index] = propertyInfo
                }
                
                body(.init(returnValue: finalPointer, argumentsValue: finalPointer+1))
                
                finalPointer.deinitialize(count: properties.count)
                finalPointer.deallocate()
            }
        }
        
        private func withGodotExtensionPropertiesInfo(properties: [PropertyInfo],
                                                      index: Int = 0,
                                                      _ body: ([GDExtensionPropertyInfo]) -> Void) {
            guard index < properties.count else {
                body([])
                return
            }
            
            properties[index].withGodotExtensionPropertyInfo { propertyInfo in
                withGodotExtensionPropertiesInfo(properties: properties, index: index + 1) { propertiesInfo in
                    body([propertyInfo] + propertiesInfo)
                }
            }
        }
        
        func withGodotExtensionArgumentsMetadata(_ body: (PropertiesDataPointer<GDExtensionClassMethodArgumentMetadata>) -> Void) {
            let properties = [returnTypeInfo] + argumentsTypeInfo
            
            let finalPointer = UnsafeMutablePointer<GDExtensionClassMethodArgumentMetadata>.allocate(capacity: properties.count)
            for (index, property) in properties.enumerated() {
                finalPointer[index] = property.variantRepresentation.argumentMetadata
            }
            
            body(.init(returnValue: finalPointer, argumentsValue: finalPointer+1))
            
            finalPointer.deinitialize(count: properties.count)
            finalPointer.deallocate()
        }
        
        func withLastDefaultArguments(_ body: (UnsafeMutablePointer<GDExtensionVariantPtr?>) -> ()) {
            let arguments = lastDefaultArguments
            withLastDefaultArguments(arguments) { variantPtrs in
                let finalPointer = UnsafeMutablePointer<GDExtensionVariantPtr?>.allocate(capacity: arguments.count)
                for (index, variantPtr) in variantPtrs.enumerated() {
                    finalPointer[index] = variantPtr
                }
                
                body(finalPointer)
                
                finalPointer.deinitialize(count: arguments.count)
                finalPointer.deallocate()
            }
        }
        
        private func withLastDefaultArguments(_ arguments: [Variant],
                                              index: Int = 0,
                                              _ body: ([GDExtensionVariantPtr]) -> Void) {
            guard index < arguments.count else {
                body([])
                return
            }
            
            arguments[index].withUnsafeExtensionPointer { variantPtr in
                withLastDefaultArguments(arguments, index: index + 1) { variantPtrs in
                    body([variantPtr] + variantPtrs)
                }
            }
        }
    }
}
