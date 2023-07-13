import Foundation
import GodotExtensionHeaders

extension ClassRegister {
    struct PropertyInfo {
        let variantType: Variant.RepresentationType
        let name: StringName
        let className: StringName
        let hint: PropertyHint
        let hintString: String
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
             name: StringName,
             defaultValue: Variant? = nil,
             hint: PropertyHint = .none,
             hintString: String = .init(),
             usageFlags: PropertyUsageFlags...,
             className: StringName) {
            self.variantType = variantType
            self.name = name
            self.defaultValue = defaultValue
            self.hint = hint
            self.hintString = ""
            
            if hint == .resourceType {
                self.className = StringName(string: hintString)
            } else {
                self.className = className
            }
            
            self.usage = usageFlags.reduce(0, { $0 | $1.rawValue })
        }
        
        func withGodotExtensionPropertyInfo(_ body: (GDExtensionPropertyInfo) -> Void) {
            name.withUnsafeExtensionPointer { namePtr in
                className.withUnsafeExtensionPointer { classeNamePtr in
                    hintString.withUnsafeExtensionPointer { hintStringPtr in
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
