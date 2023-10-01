
// MARK: - Public macros

/// Enables a custom Godot class
/// to be exposed to the Godot editor.
///
/// Learn how to expose a custom class: <doc:CreatingCustomClass>.
@attached(memberAttribute)
@attached(member, names:
    named(_$exposeToGodot),
    named(_$className),
    named(_$staticClassName),
    named(_$isCustomGodotClass),
    named(_$instanceBindingCallbacks)
)
public macro Exposable() = #externalMacro(module: "GodotMacros", type: "ExposableMacro")

/// Enables a member to be exposed to the Godot editor.
@attached(peer, names: prefixed(_$godotRegister_))
public macro ExposableMember(_: Object.Type) = #externalMacro(module: "GodotMacros", type: "ExposableMemberMacro")

/// Converts a Swift enum into an enum usable by Godot.
@attached(extension, conformances: VariantConvertible, names:
    named(variantType),
    named(makeVariant),
    named(fromCompatibleVariant),
    named(fromVariant),
    named(godotExposableValues)
)
public macro GodotEnum() = #externalMacro(module: "GodotMacros", type: "GodotEnumMacro")

/// Converts a Swift struct into an option set usable by Godot.
@attached(extension, conformances: OptionSet, VariantConvertible, names:
    named(variantType),
    named(makeVariant),
    named(fromCompatibleVariant),
    named(fromVariant),
    named(godotExposableValues)
)
@attached(member, names:
    named(RawValue),
    named(rawValue),
    named(init)
)
public macro GodotOptionSet() = #externalMacro(module: "GodotMacros", type: "GodotOptionSetMacro")

// MARK: - Internal macros

@attached(member, names: arbitrary)
internal macro GodotClass() = #externalMacro(module: "GodotMacros", type: "GodotClassMacro")

@attached(member, names: arbitrary)
internal macro GodotRefCountedClass() = #externalMacro(module: "GodotMacros", type: "GodotRefCountedClassMacro")

@attached(member, names: arbitrary)
internal macro GodotRootClass() = #externalMacro(module: "GodotMacros", type: "GodotRootClassMacro")

@attached(member, names: arbitrary)
internal macro GodotRefCountedRootClass() = #externalMacro(module: "GodotMacros", type: "GodotRefCountedRootClassMacro")

@attached(member, names: arbitrary)
internal macro GodotOpaqueBuiltinClass() = #externalMacro(module: "GodotMacros", type: "GodotOpaqueBuiltinClassMacro")
