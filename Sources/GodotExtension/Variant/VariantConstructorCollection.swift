import Foundation
import GodotExtensionHeaders

final class VariantConstructorCollection {
    private var fromTypeConstructors = [VariantType : GDNativeVariantFromTypeConstructorFunc]()
    private var toTypeConstructors = [VariantType : GDNativeTypeFromVariantConstructorFunc]()
    
    private init() {}
    
    static func loaded() -> VariantConstructorCollection {
        let constructor = VariantConstructorCollection()
        
        for variant in VariantType.allCases where variant != .nil {
            constructor.fromTypeConstructors[variant] = GodotLibrary.main.interface
                .get_variant_from_type_constructor(variant.godotType)
            constructor.toTypeConstructors[variant] = GodotLibrary.main.interface
                .get_variant_to_type_constructor(variant.godotType)
        }
        
#warning("Finish init bindings")
        
        return constructor
    }
    
    func from(type: VariantType) -> GDNativeVariantFromTypeConstructorFunc? {
        fromTypeConstructors[type]
    }
    
    func to(type: VariantType) -> GDNativeTypeFromVariantConstructorFunc? {
        toTypeConstructors[type]
    }
}
