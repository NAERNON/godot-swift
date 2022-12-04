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
            setBindingsCode()
            constructorsCode(translated: translated)
        }.public()
    }
    
    @CodeBuilder
    private func nativePtrCode(classSize: Int) -> some SwiftCode {
        Property("opaque").letDefined().type("_Opaque").private().assignComputed {
            if hasDestructor {
                ".init(size: \(classSize), destructorPtr: Self.\(destructorPtrName()))"
            } else {
                ".init(size: \(classSize))"
            }
        }
        Spacer()
        Comment(style: .doc) {
            "Calls a closure with a native type pointer of the underlying object. Should only be called by the `GodotLibrary`."
        }
        Func(name: "withUnsafeNativePointer", parameters: .named("body", type: "(GDNativeTypePtr) -> ()", label: .hidden)) {
            "opaque.withUnsafeMutableRawPointer(body)"
        }.public()
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
            Mark(text: "Constants", isSeparator: false).padding(top: 1)
            ForEach(constants!.consecutiveSplit { $0.type != $1.type }) { sameTypeConstants in
                Spacer()
                ForEach(sameTypeConstants) { constant in
                    Property(propertyName(constant.name, translated: translated))
                        .letDefined().public().static().type(ExtensionApi.convert(type: constant.type))
                        .assign(value: constantValue(from: constant.value))
                }.aligned(1)
            }
        }
    }
    
    /// Converts a valeu string such as `Vector2(inf, 0)` to `Vector2(.infinity, 0)` for example.
    private func constantValue(from string: String) -> String {
        guard let firstParenthesisIndex = string.firstIndex(of: "(") else {
            return string
        }
        
        return string.replacingOccurrences(of: "inf", with: ".infinity", range: firstParenthesisIndex..<string.endIndex)
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
    private func setBindingsCode() -> some SwiftCode {
        Mark(text: "Bindings", isSeparator: false).padding(top: 1, bottom: 1)
        
        Property("interface").varDefined().static().internal().type("GDNativeInterface!").padding(bottom: 1)
        
        for constructor in constructors {
            Property(constructorPtrName(index: constructor.index))
                .varDefined().private().static().type("GDNativePtrConstructor!")
        }
        if hasDestructor {
            Property(destructorPtrName()).varDefined().private().static().type("GDNativePtrDestructor!")
        }
        
        Spacer()
        
        Comment(style: .doc) {
"""
Sets all the bindings used to communicate with Godot, as well as the static `interface` property.

This function must be called before the creation of any `\(name)` instance since the bindings will be needed
for any initialization.

This function should only called by the `GodotLibrary`.
"""
        }
        Func(name: "setBindings", parameters: .named("interface", type: "GDNativeInterface", label: .name("with"))) {
            Property("self.interface").assign(value: "interface")
            
            Spacer()
            
            for constructor in constructors {
                Property(constructorPtrName(index: constructor.index))
                    .assign(value: "interface.variant_get_ptr_constructor(\(godotVariantType), \(constructor.index))")
            }
            if hasDestructor {
                Property(destructorPtrName())
                    .assign(value: "interface.variant_get_ptr_destructor(\(godotVariantType))")
            }
        }.public().static()
    }
    
    @CodeBuilder
    private func constructorsCode(translated: Bool) -> some SwiftCode {
        Spacer()
        Mark(text: "Init", isSeparator: false)
        for constructor in constructors {
            Spacer()
            
            let constructorParameters = constructorArguments(forConstructor: constructor, translated: translated)
            
            Init(parameters: constructorParameters) {
                for (index, parameter) in constructorParameters.enumerated() {
                    if ExtensionApi.isBaseType(parameter.type) {
                        "withUnsafePointer(to: \(parameter.name)) { \(parameterPointerName(parameter.name)) in"
                            .indentation(level: index)
                    } else {
                        "\(parameter.name).withUnsafeNativePointer { \(parameterPointerName(parameter.name)) in"
                            .indentation(level: index)
                    }
                }
                
                PointerArray(pointersNames: constructorArgumentsPointers(forConstructor: constructor, translated: translated),
                             arrayPointerName: "_arrayPtr") {
                    "self.withUnsafeNativePointer { self_nativePtr in"
                    ("Self." + constructorPtrName(index: constructor.index) + "(self_nativePtr, _arrayPtr)").indentation()
                    "}"
                }.indentation(level: constructorParameters.count)
                
                for (index, _) in constructorParameters.enumerated() {
                    "}".indentation(level: constructorParameters.count - index - 1)
                }
            }.public()
        }
    }
    
    // MARK: Naming
    
    private func propertyName(_ name: String, translated: Bool) -> String {
        guard translated else {
            return name
        }
        
        let newName = NamingConvention.snake.convert(string: name.lowercased(), to: .camel)
        return CodeLanguage.swift.protectNameIfKeyword(for: newName)
    }
    
    private func constructorPtrName(index: Int) -> String {
        "_constructor\(index)"
    }
    
    private func destructorPtrName() -> String {
        "_destructor"
    }
    
    private func constructorArguments(forConstructor constructor: ExtensionApi.BuiltinClass.Constructor,
                                      translated: Bool) -> [FunctionParameter] {
        guard let arguments = constructor.arguments else {
            return []
        }
        
        return arguments.map { argument in
            var parameter = argument.functionParameter(translated: translated)
            if parameter.name == "from" {
                parameter.name = NamingConvention.pascal.convert(string: parameter.type, to: .camel)
            }
            return parameter
        }
    }
    
    private func constructorArgumentsPointers(forConstructor constructor: ExtensionApi.BuiltinClass.Constructor,
                                              translated: Bool) -> [String] {
        let arguments = constructorArguments(forConstructor: constructor, translated: translated)
        return arguments.map { parameter in
            if ExtensionApi.isBaseType(parameter.type) {
                return "UnsafeMutableRawPointer(mutating: \(parameterPointerName(parameter.name)))"
            } else {
                return parameterPointerName(parameter.name)
            }
        }
    }
    
    private func parameterPointerName(_ parameterName: String) -> String {
        parameterName + "_ptr"
    }
}
