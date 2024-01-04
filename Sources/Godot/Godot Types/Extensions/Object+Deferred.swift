import GodotExtensionHeaders

public extension Object {
    func frameDefer(@_implicitSelfCapture _ body: @escaping () -> Void) {
        GodotExtension.classRegistrar.registerCustomCallable(
            on: self,
            userData: DeferredCallable(body: body),
            callFunc: deferredCall,
            freeFunc: deferredFree,
            toStringFunc: deferredToString
        ).callDeferred()
    }
}

private let deferredCall: GDExtensionCallableCustomCall = { callablePtr, _, _, _, _ in
    Unmanaged<DeferredCallable>.fromOpaque(callablePtr!).takeUnretainedValue()
        .body()
}

private let deferredFree: GDExtensionCallableCustomFree = { callablePtr in
    Unmanaged<DeferredCallable>.fromOpaque(callablePtr!).release()
}

private let deferredToString: GDExtensionCallableCustomToString = { callablePtr, resultPtr, stringResultPtr in
    resultPtr?.pointee = 1
    Godot.GodotString(describing:
        Unmanaged<DeferredCallable>.fromOpaque(callablePtr!)
            .takeUnretainedValue()
    ).copyToGodot(unsafePointer: stringResultPtr!)
}

private class DeferredCallable {
    let body: () -> Void
    
    init(body: @escaping () -> Void) {
        self.body = body
    }
}
