import GodotExtensionHeaders

extension ClassRegistrar {
    struct PropertyInfo {
        var variantRepresentationType: Variant.RepresentationType
        var name: GodotStringName
        var className: GodotStringName
        var hint: PropertyHint
        var hintString: GodotString
        var defaultValue: Variant?
        private let usage: UInt32
        
        static let none = PropertyInfo(
            variantRepresentationType: .nil,
            name: .init(),
            defaultValue: .none,
            hint: .none,
            hintString: .init(),
            usageFlags: [.default, .nilIsVariant],
            className: .init()
        )
        
        static let vararg = PropertyInfo(
            variantRepresentationType: .nil,
            name: "vararg",
            defaultValue: .none,
            hint: .none,
            hintString: .init(),
            usageFlags: [.default, .nilIsVariant],
            className: .init()
        )
        
        init(variantRepresentationType: Variant.RepresentationType,
             name: GodotStringName,
             defaultValue: Variant? = nil,
             hint: PropertyHint = .none,
             hintString: GodotString = .init(),
             usageFlags: PropertyUsageFlags,
             className: GodotStringName) {
            self.variantRepresentationType = variantRepresentationType
            self.name = name
            self.defaultValue = defaultValue
            self.hint = hint
            self.hintString = hintString
            self.className = className
            
            self.usage = UInt32(usageFlags.rawValue)
        }
        
        mutating func withGodotExtensionPropertyInfo(_ body: (GDExtensionPropertyInfo) -> Void) {
            name.withGodotUnsafeMutableRawPointer { namePtr in
                className.withGodotUnsafeMutableRawPointer { classNamePtr in
                    hintString.withGodotUnsafeMutableRawPointer { hintStringPtr in
                        let info = GDExtensionPropertyInfo(
                            type: variantRepresentationType.storageType.extensionType,
                            name: namePtr,
                            class_name: classNamePtr,
                            hint: UInt32(hint.rawValue),
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
