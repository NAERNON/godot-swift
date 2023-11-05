import GodotExtensionHeaders

extension ClassRegistrar {
    struct PropertyInfo {
        let variantType: Variant.RepresentationType
        let name: GodotStringName
        let className: GodotStringName
        let hint: PropertyHint
        let hintString: GodotString
        let defaultValue: Variant?
        private let usage: UInt32
        
        static let none = PropertyInfo(
            variantType: .nil,
            name: .init(),
            defaultValue: .none,
            hint: .none,
            hintString: .init(),
            usageFlags: .default, .nilIsVariant,
            className: .init()
        )
        
        static let vararg = PropertyInfo(
            variantType: .nil,
            name: "vararg",
            defaultValue: .none,
            hint: .none,
            hintString: .init(),
            usageFlags: .default, .nilIsVariant,
            className: .init()
        )
        
        init(variantType: Variant.RepresentationType,
             name: GodotStringName,
             defaultValue: Variant? = nil,
             hint: PropertyHint = .none,
             hintString: GodotString = .init(),
             usageFlags: PropertyUsageFlags...,
             className: GodotStringName) {
            self.variantType = variantType
            self.name = name
            self.defaultValue = defaultValue
            self.hint = hint
            self.hintString = GodotString()
            
            if hint == .resourceType {
                self.className = GodotStringName(string: hintString)
            } else {
                self.className = className
            }
            
            self.usage = usageFlags.reduce(0, { $0 | $1.rawValue })
        }
        
        func withGodotExtensionPropertyInfo(_ body: (GDExtensionPropertyInfo) -> Void) {
            name.withUnsafeRawPointer { namePtr in
                className.withUnsafeRawPointer { classeNamePtr in
                    hintString.withUnsafeRawPointer { hintStringPtr in
                        let info = GDExtensionPropertyInfo(
                            type: variantType.storageType,
                            name: namePtr,
                            class_name: classeNamePtr,
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
