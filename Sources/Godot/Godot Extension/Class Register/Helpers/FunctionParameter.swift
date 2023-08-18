
extension ClassRegister {
    /// A representation of a function parameter.
    ///
    /// This structure is used to register functions.
    ///
    /// Use ``argument(_:name:)`` to create an argument `FunctionParameter`,
    /// or use ``returnParameter(_:)`` to create a return `FunctionParameter`.
    public struct FunctionParameter {
        /// The variant representation type of the parameter.
        public let variantType: Variant.RepresentationType
        
        /// The name of the parameter.
        public let name: GodotStringName
        
        /// The default value of the parameter.
        public let defaultValue: Variant?
        
        /// The name of the class.
        ///
        /// If the parameter is *not* a class, the string is empty.
        public let className: GodotStringName
        
        // MARK: Init
        
        private init<Value>(
            type: Value.Type,
            name: GodotStringName,
            className: GodotStringName
        ) where Value : ConvertibleToVariant {
            self.variantType = type.variantType
            self.name = name
            self.defaultValue = nil
            self.className = className
        }
        
        /// Creates a new `FunctionParameter` used as a function argument.
        ///
        /// - Parameters:
        ///   - type: The type of the parameter.
        ///   - name: The name of the parameter.
        public static func argument<Value>(
            _ type: Value.Type,
            name: GodotStringName
        ) -> FunctionParameter
        where Value : ConvertibleToVariant {
            .init(type: type, name: name, className: .init())
        }
        
        /// Creates a new `FunctionParameter` used as a function argument.
        ///
        /// - Parameters:
        ///   - type: The type of the parameter.
        ///   - name: The name of the parameter.
        public static func argument<Value>(
            _ type: Value.Type,
            name: GodotStringName
        ) -> FunctionParameter
        where Value : Object {
            .init(type: type, name: name, className: type.__className)
        }
        
        /// Creates a new `FunctionParameter` used as a function return type.
        ///
        /// - Parameter type: The type of the parameter.
        public static func returnParameter<Value>(_ type: Value.Type) -> FunctionParameter
        where Value : ConvertibleToVariant {
            .init(type: type, name: .init(), className: .init())
        }
        
        /// Creates a new `FunctionParameter` used as a function return type.
        ///
        /// - Parameter type: The type of the parameter.
        public static func returnParameter<Value>(_ type: Value.Type) -> FunctionParameter
        where Value : Object {
            .init(type: type, name: .init(), className: type.__className)
        }
        
        // MARK: PropertyInfo
        
        /// Creates a `PropertyInfo` using the information of the parameter.
        var propertyInfo: ClassRegister.PropertyInfo {
            .init(variantType: variantType,
                  name: name,
                  defaultValue: defaultValue,
                  hint: .none,
                  hintString: .init(),
                  usageFlags: .default,
                  className: className)
        }
    }
}