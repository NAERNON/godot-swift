import GodotExtensionHeaders

public enum GodotInitializationLevel: Comparable {
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
            fatalError("The initialization level could not be retrieved.")
        }
    }
    
    var extensionLevel: GDExtensionInitializationLevel {
        switch self {
        case .core: GDEXTENSION_INITIALIZATION_CORE
        case .servers: GDEXTENSION_INITIALIZATION_SERVERS
        case .scene: GDEXTENSION_INITIALIZATION_SCENE
        case .editor: GDEXTENSION_INITIALIZATION_EDITOR
        case .level: GDEXTENSION_MAX_INITIALIZATION_LEVEL
        }
    }
}
