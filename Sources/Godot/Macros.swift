
// MARK: - Public macros

/// Enables a custom Godot class
/// to be exposed to the Godot editor.
///
/// Learn how to expose a custom class: <doc:CreatingCustomClass>.
@attached(memberAttribute)
@attached(member, names:
    named(__exposeToGodot),
    named(__className),
    named(__staticClassName),
    named(__isCustomGodotClass),
    named(__instanceBindingCallbacks)
)
public macro Exposable() = #externalMacro(module: "GodotMacros", type: "ExposableMacro")

/// Enables a member to be exposed to the Godot editor.
@attached(peer, names: prefixed(__godotRegister_))
public macro ExposableMember(_: Object.Type) = #externalMacro(module: "GodotMacros", type: "ExposableMemberMacro")

/// Define and implements conformance of the GodotBridge protocol.
///
/// Learn how to create a bridge: <doc:CreatingGodotBridge>.
@attached(extension, conformances: GodotBridge)
@attached(peer, names: suffixed(_godot_init))
public macro Bridge() = #externalMacro(module: "GodotMacros", type: "BridgeMacro")

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

/// Converts a Swift struct into a Godot signal.
@attached(extension, conformances: Godot.EmitterProtocol)
@attached(peer, names: prefixed(emitter))
@attached(member, names:
    named(SignalInput),
    named(signalName),
    named(object),
    named(init),
    named(emit)
)
public macro Emitter(signal: StaticString? = nil, args: (StaticString, Any.Type)...) = #externalMacro(module: "GodotMacros", type: "EmitterMacro")

/// Converts a Swift function into a Godot signal receiver.
@attached(peer, names: suffixed(Receiver), prefixed(Receiver_))
public macro Receiver() = #externalMacro(module: "GodotMacros", type: "ReceiverMacro")

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
