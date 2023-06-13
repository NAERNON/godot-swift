import GodotExtensionHeaders

public enum GodotInitializationLevel {
    case core
    case servers
    case scene
    case editor
    case level
    
    public init(_ initializationLevel: GDExtensionInitializationLevel) {
        switch initializationLevel {
        case GDEXTENSION_INITIALIZATION_CORE:
            self = .core
        case GDEXTENSION_INITIALIZATION_SERVERS:
            self = .servers
        case GDEXTENSION_INITIALIZATION_SCENE:
            self = .scene
        case GDEXTENSION_INITIALIZATION_EDITOR:
            self = .editor
        case GDEXTENSION_MAX_INITIALIZATION_LEVEL:
            self = .level
        default:
            fatalError("The initialization level could not be retreived.")
        }
    }
}
