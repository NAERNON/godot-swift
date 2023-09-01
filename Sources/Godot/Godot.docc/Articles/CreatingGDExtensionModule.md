# Defining a Godot extension

Define a Godot extension in your Godot project to import your Swift code

## Overview

When your Swift code is ready, it needs to be imported in Godot. The first step is to compile your library.

On macOS, a library is a `.dylib` file.

### Write the .gdextension file

In order for Godot to know what to load, use a `.gdextension` file:

```swift
[configuration]

entry_symbol = "my_bridge_godot_init"
compatibility_minimum = 4.1

[libraries]

macos.debug = "res://bin/my_lib.dylib"
macos.release = "res://bin/my_lib.dylib"
```

Under `configuration`, note the name of the function Godot must call to initialise your plugin. See <doc:CreatingGodotBridge> to learn what function name to use.

Under `libraries`, specify the name of the dynamic library for each platform.

In this example, the `.dylib` file is placed in the bin directory, and the `.gdextension` file in the project root:

```
project_root
├─my_project.godot
├─my_lib.gdextension
│ ..
│ ..
╰─bin
  ╰─my_lib.dylib
```

### Load the .gdextension file

Godot will automatically load the file and the libraries for you. Now, every custom class you defined in your Godot bridge is accessible from the editor.
