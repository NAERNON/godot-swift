
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

@attached(extension, conformances:
    RandomAccessCollection,
    RangeReplaceableCollection,
    ExpressibleByArrayLiteral,
    MutableCollection,
    Equatable,
    Codable,
    CustomStringConvertible,
    CustomDebugStringConvertible,
    names: arbitrary
)
internal macro GodotPackedArray() = #externalMacro(module: "GodotMacros", type: "GodotPackedArrayMacro")
