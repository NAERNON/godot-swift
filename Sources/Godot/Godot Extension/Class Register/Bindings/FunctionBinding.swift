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
                finalPointer[index] = property.godotExtensionArgumentMetadata
            }
            
            body(.init(returnValue: finalPointer, argumentsValue: finalPointer+1))
            
            finalPointer.deinitialize(count: properties.count)
            finalPointer.deallocate()
        }
    }
}
