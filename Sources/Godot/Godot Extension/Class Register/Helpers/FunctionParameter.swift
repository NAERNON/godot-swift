
extension ClassRegister {
    /// A representation of a function parameter.
    ///
    /// This structure is used to register functions.
    ///
    /// Use `argument(_:name:)` to create an argument `FunctionParameter`,
    /// or use `returnParameter(_:)` to create a return `FunctionParameter`.
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
            defaultValue: Value?,
            className: GodotStringName
        ) where Value : VariantConvertible {
            self.variantType = type.variantType
            self.name = name
            if let defaultValue {
                self.defaultValue = Variant(defaultValue)
            } else {
                self.defaultValue = nil
            }
            self.className = className
        }
        
        /// Creates a new FunctionParameter used as a function argument.
        ///
        /// - Parameters:
        ///   - type: The type of the parameter.
        ///   - name: The name of the parameter.
        ///   - defaultValue: The default value of the parameter.
        public static func argument<Value>(
            _ type: Value.Type,
            name: GodotStringName,
            defaultValue: Value? = nil
        ) -> FunctionParameter
        where Value : VariantConvertible {
            FunctionParameter(
                type: type,
                name: name,
                defaultValue: defaultValue,
                className: Value.__className
            )
        }
        
        /// Creates a new FunctionParameter used as a function return type.
        ///
        /// - Parameter type: The type of the parameter.
        public static func returnParameter<Value>(_ type: Value.Type) -> FunctionParameter
        where Value : VariantConvertible {
            FunctionParameter(
                type: type,
                name: .init(),
                defaultValue: nil,
                className: Value.__className
            )
        }
        
        // MARK: PropertyInfo
        
        /// Creates a `PropertyInfo` using the information of the parameter.
        var propertyInfo: ClassRegister.PropertyInfo {
            ClassRegister.PropertyInfo(
                variantType: variantType,
                name: name,
                defaultValue: defaultValue,
                hint: .none,
                hintString: .init(),
                usageFlags: .default,
                className: className
            )
        }
    }
}
