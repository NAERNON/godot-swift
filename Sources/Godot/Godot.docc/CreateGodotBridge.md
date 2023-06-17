# Create a Godot bridge

Make a Godot bridge that will be the entry point for Godot.

## Overview

Godot is the one responsible for calling your Swift code, not the other way around. In order for Godot to call your code, it needs an entry point.

Before Godot calls your entry point, all the types defined inside Godot Swift are useless, and none of your custom classes are acessible to the Godot editor.

A Godot bridge acts as the entry point.

### Create a bridge

Your module needs at least one bridge that Godot will call.

To define a bridge, simply make a struct, class or enum with an attached ``GodotBridge()`` macro.

```swift
@GodotBridge
enum MyGame {
    // Custom parameters
}
```

By using this macro, a C function is automatically generated. This is the function Godot will call to initialize your module.

The generated C function is named "`*attached-type*_godot_init`" where `*attached-type*` is the name of the type the macro is attached to, in lowercase. For example:

```swift
@GodotBridge
enum MyGame {
    // Custom parameters
}

// Automatically generates:
@_cdecl("mygame_godot_init")
func mygame_godot_init(...) {
    // Automatically generated Godot initialization
}
```

> Tip: You can make as many bridges as you want, providing several configurations for your needs.

### Expose custom Godot classes

Because the macro automatically conforms the attached type to the ``GodotBridgeProtocol`` protocol, the information provided by the protocol is used to specify custom parameters for Godot, like what classes are exposed to the Godot editor.

To expose custom classes to Godot that you will be able to use within the Godot editor, define the ``GodotBridgeProtocol/classesToRegister`` static variable. For example:

```swift
@GodotBridge
enum MyGame {
    static let classesToRegister: [Object.Type] = [
        CharacterNode.self,
        CharacterDarkSideNode.self
    ]
}
```

> Important: Only expose ``Object`` classes that are defined using the ``GodotExposable()`` macro. See <doc:CreateCustomClass>.

### Provide custom initialization and deinitialization

If you want to perform some custom operations during either the initialization or deinitialization of Godot, implement the ``GodotBridgeProtocol/initialize(level:)`` function or ``GodotBridgeProtocol/deinitialize(level:)`` function. For example:

```swift
@GodotBridge
enum MyGame {
    static let classesToRegister: [Object.Type] = [...]

    static func initialize(level: GodotInitializationLevel) {
        // Custom initialization
    }
}
```

### Configure Godot to work with your module

See <doc:CreateGDExtensionModule> to learn how to setup Godot.
