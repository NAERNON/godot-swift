# Creating a Godot bridge

Make an entry point for your module and initialize it with custom parameters.

## Overview

The code you write using Godot Swift is an extension of Godot. Before using any type defined by Godot in your own code, or exposing any custom class you wrote to the Godot editor, your module needs to be initialized. Godot will call an entry point you defined in your module to initialize it.

A Godot bridge *is* the entry point.

### Create a bridge

Your module needs at least one bridge that Godot will call.

To define a bridge, simply make a struct, class or enum with an attached ``Bridge()`` macro.

```swift
@Bridge
enum MyGame {
    // Custom parameters
}
```

By using this macro, a C function is automatically generated. This is the function Godot will call to initialize your module.

The generated C function is named "*type*`_godot_init`" where "*type*" is the name of the type the macro is attached to, in lowercase. For example:

```swift
@Bridge
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

Because the macro automatically conforms the attached type to the ``GodotBridge`` protocol, the information provided by the protocol is used to specify custom parameters for Godot, like what classes are exposed to the Godot editor.

To expose custom classes to Godot that you will be able to use within the Godot editor, define the ``GodotBridge/classesToRegister`` static variable. For example:

```swift
@Bridge
enum MyGame {
    static let classesToRegister: [Object.Type] = [
        CharacterNode.self,
        CharacterDarkSideNode.self
    ]
}
```

Subclasses you expose should be registered right after their superclasses. In the previous example, if `CharacterDarkSideNode` is a direct subclass of `CharacterNode`, the two classes are correctly registered.

> Important: Only expose ``Object`` classes that are defined using the ``Exposable()`` macro. See <doc:CreatingCustomClass>.

### Provide custom initialization and deinitialization

If you want to perform some custom operations during either the initialization or deinitialization of Godot, implement the ``GodotBridge/initialize(level:)`` function or ``GodotBridge/deinitialize(level:)`` function. For example:

```swift
@Bridge
enum MyGame {
    static let classesToRegister: [Object.Type] = [...]

    static func initialize(level: GodotInitializationLevel) {
        // Custom initialization
    }

    static func deinitialize(level: GodotInitializationLevel) {
        // Custom deinitialization
    }
}
```

### Configure your Godot project to work with your module

See <doc:CreatingGDExtensionModule> to learn how to setup your Godot project.
