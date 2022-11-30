import Foundation

extension ExtensionApi.BuiltinClass {
    @CodeBuilder
    func code(classSize: Int,
              members: [ExtensionApi.MemberOffsets.Class.Member],
              translated: Bool) -> some SwiftCode {
        Struct(name) {
            Property("opaque").letDefined().type("_Opaque").private()
            
            Spacer()
            
            Init {
                Property("opaque").assign(value: "_Opaque(size: \(classSize))")
            }
            
            Spacer()
            
            Property("nativePtr").varDefined().type("GDNativeTypePtr").computed(inline: "Unmanaged.passUnretained(opaque).toOpaque()")
            
            Spacer()
            
            for member in members {
                Property(member.member).varDefined().type("_TYPE_").computed(inline: "")
            }
        }.public()
    }
}
