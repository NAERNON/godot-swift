import Foundation

extension ExtensionApi.BuiltinClass {
    @CodeBuilder
    func code(classSize: Int,
              members: [ExtensionApi.MemberOffsets.Class.Member],
              translated: Bool) -> some SwiftCode {
        Struct(name) {
            nativePtrCode(classSize: classSize)
            membersCode(with: members, translated: translated)
            constantsCode(translated: translated)
            enumCode(translated: translated)
            setInitAndDeinitBindingsCode()
            constructorsCode(translated: translated)
        }.public()
    }
    
    @CodeBuilder
    private func nativePtrCode(classSize: Int) -> some SwiftCode {
        Property("opaque").letDefined().type("_Opaque").private().assign(value: ".init(size: \(classSize))")
        Spacer()
        Comment(style: .doc) {
            "The pointer to the underlying object. Should only be called by the `GodotLibrary`."
        }
        Property("nativePtr").varDefined().public().type("GDNativeTypePtr").computed(inline: "opaque.ptr")
    }
    
    @CodeBuilder
    private func membersCode(with members: [ExtensionApi.MemberOffsets.Class.Member],
                             translated: Bool) -> some SwiftCode {
        if !members.isEmpty {
            Mark(text: "Members", isSeparator: false).padding(top: 1, bottom: 1)
            for member in members {
                Property(propertyName(member.member, translated: translated))
                    .varDefined().public().type("_TYPE_").computed(inline: "")
            }
        }
    }
    
    @CodeBuilder
    private func constantsCode(translated: Bool) -> some SwiftCode {
        if constants?.isEmpty == false {
            Mark(text: "Constants", isSeparator: false).padding(top: 1, bottom: 1)
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
            Mark(text: "Enums", isSeparator: false)
            for `enum` in enums! {
                Spacer()
                `enum`.code(translated: translated)
            }
        }
    }
    
    @CodeBuilder
    private func setInitAndDeinitBindingsCode() -> some SwiftCode {
        Mark(text: "Bindings", isSeparator: false).padding(top: 1, bottom: 1)
        
        for constructor in constructors {
            Property(constructorMethodName(index: constructor.index))
                .varDefined().private().static().type("GDNativePtrConstructor!")
        }
        if hasDestructor {
            Property(destructorMethodName()).varDefined().private().static().type("GDNativePtrDestructor!")
        }
        
        Spacer()
        
        Comment(style: .doc) {
"""
Sets the constructors and destructor pointers used to communicate with Godot.

This function must be called before the creation of any `\(name)` instance since the bindings will be needed
for any initialization.

This function should only called by the `GodotLibrary`.
"""
        }
        Func(name: "setInitAndDeinitBindings", parameters: .named("interface", type: "GDNativeInterface", label: .name("with"))) {
            for constructor in constructors {
                Property(constructorMethodName(index: constructor.index))
                    .assign(value: "interface.variant_get_ptr_constructor(\(variantTypeName), \(constructor.index))")
            }
            if hasDestructor {
                Property(destructorMethodName())
                    .assign(value: "interface.variant_get_ptr_destructor(\(variantTypeName))")
            }
        }.public().static()
    }
    
    @CodeBuilder
    private func constructorsCode(translated: Bool) -> some SwiftCode {
        Spacer()
        Mark(text: "Init", isSeparator: false)
        for constructor in constructors {
            Spacer()
            Init(parameters: constructorArguments(forConstructor: constructor, translated: translated)) {
                "// DO SOMETHING HERE"
            }.public()
        }
    }
    
    // MARK: Naming
    
    private func propertyName(_ name: String, translated: Bool) -> String {
        guard translated else {
            return name
        }
        
        return NamingConvention.snake.convert(string: name.lowercased(), to: .camel)
    }
    
    private func constructorMethodName(index: Int) -> String {
        "_constructor\(index)"
    }
    
    private func destructorMethodName() -> String {
        "_destructor"
    }
    
    private var variantTypeName: String {
        NamingConvention.camel.convert(string: "gdnativeVariantType" + name, to: .snake).uppercased()
    }
    
    private func constructorArguments(forConstructor constructor: ExtensionApi.BuiltinClass.Constructor,
                                      translated: Bool) -> [FunctionParameter] {
        guard let arguments = constructor.arguments else {
            return []
        }
        
        return arguments.map { $0.functionParameter(translated: translated) }
    }
}