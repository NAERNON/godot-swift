import GodotExtensionHeaders

extension ClassRegistrar {
    struct PropertyInfo {
        let variantRepresentationType: Variant.RepresentationType
        let name: GodotStringName
        let className: GodotStringName
        let hint: PropertyHint
        let hintString: GodotString
        let defaultValue: Variant?
        private let usage: UInt32
        
        static let none = PropertyInfo(
            variantRepresentationType: .nil,
            name: .init(),
            defaultValue: .none,
            hint: .none,
            hintString: .init(),
            usageFlags: .default, .nilIsVariant,
            className: .init()
        )
        
        static let vararg = PropertyInfo(
            variantRepresentationType: .nil,
            name: "vararg",
            defaultValue: .none,
            hint: .none,
            hintString: .init(),
            usageFlags: .default, .nilIsVariant,
            className: .init()
        )
        
        init(variantRepresentationType: Variant.RepresentationType,
             name: GodotStringName,
             defaultValue: Variant? = nil,
             hint: PropertyHint = .none,
             hintString: GodotString = .init(),
             usageFlags: PropertyUsageFlags...,
             className: GodotStringName) {
            self.variantRepresentationType = variantRepresentationType
            self.name = name
            self.defaultValue = defaultValue
            self.hint = hint
            self.hintString = hintString
            self.className = className
            
            self.usage = usageFlags.reduce(0, { $0 | $1.rawValue })
        }
        
        func withGodotExtensionPropertyInfo(_ body: (GDExtensionPropertyInfo) -> Void) {
            name.withUnsafeRawPointer { namePtr in
                className.withUnsafeRawPointer { classNamePtr in
                    hintString.withUnsafeRawPointer { hintStringPtr in
                        let info = GDExtensionPropertyInfo(
                            type: variantRepresentationType.storageType.extensionType,
                            name: namePtr,
                            class_name: classNamePtr,
                            hint: hint.rawValue,
                            hint_string: hintStringPtr,
                            usage: usage
                        )
                        
                        body(info)
                    }
                }
            }
        }
    }
}
