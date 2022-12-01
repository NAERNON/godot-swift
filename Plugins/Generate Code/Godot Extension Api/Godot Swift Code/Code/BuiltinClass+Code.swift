import Foundation

extension ExtensionApi.BuiltinClass {
    @CodeBuilder
    func code(classSize: Int,
              members: [ExtensionApi.MemberOffsets.Class.Member],
              translated: Bool) -> some SwiftCode {
        Struct(name) {
            initAndNativePtrCode(classSize: classSize)
            membersCode(with: members, translated: translated)
            constantsCode(translated: translated)
            enumCode(translated: translated)
            constructorsCode()
        }.public()
    }
    
    @CodeBuilder
    private func initAndNativePtrCode(classSize: Int) -> some SwiftCode {
        Property("opaque").letDefined().type("_Opaque").private()
        Spacer()
        Init {
            Property("opaque").assign(value: "_Opaque(size: \(classSize))")
        }
        Spacer()
        Property("nativePtr").varDefined().public().type("GDNativeTypePtr").computed(inline: "opaque.ptr")
    }
    
    @CodeBuilder
    private func membersCode(with members: [ExtensionApi.MemberOffsets.Class.Member],
                             translated: Bool) -> some SwiftCode {
        if !members.isEmpty {
            Spacer()
            Mark(text: "Members", isSeparator: true)
            Spacer()
            for member in members {
                Property(propertyName(member.member, translated: translated))
                    .varDefined().public().type("_TYPE_").computed(inline: "")
            }
        }
    }
    
    @CodeBuilder
    private func constantsCode(translated: Bool) -> some SwiftCode {
        if constants?.isEmpty == false {
            Spacer()
            Mark(text: "Constants", isSeparator: true)
            Spacer()
            for constant in constants! {
                Property(propertyName(constant.name, translated: translated))
                    .letDefined().public().static().type(constant.type).assign(value: constant.value)
            }
        }
    }
    
    @CodeBuilder
    private func enumCode(translated: Bool) -> some SwiftCode {
        if enums?.isEmpty == false {
            Spacer()
            Mark(text: "Enums", isSeparator: true)
            for `enum` in enums! {
                Spacer()
                `enum`.code(translated: translated)
            }
        }
    }
    
    @CodeBuilder
    private func constructorsCode() -> some SwiftCode {
        for constructor in constructors {
            "// Constructor here"
        }
    }
    
    private func propertyName(_ name: String, translated: Bool) -> String {
        guard translated else {
            return name
        }
        
        return NamingConvention.snake.convert(string: name.lowercased(), to: .camel)
    }
}
