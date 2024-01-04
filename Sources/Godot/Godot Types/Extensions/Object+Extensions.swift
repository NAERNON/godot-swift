import GodotExtensionHeaders

public extension Object {
    var script: Variant {
        get {
            __getScript()
        }
        set(newValue) {
            __setScript(newValue)
        }
    }
    
    func meta(for entry: GodotStringName, `default`: Variant = nil) -> Variant {
        __getMeta(name: entry, default: `default`)
    }
    
    func setMeta(_ meta: Variant, for entry: GodotStringName) {
        __setMeta(name: entry, value: meta)
    }
    
    func removeMeta(for entry: GodotStringName) {
        __removeMeta(name: entry)
    }
    
    func hasMeta(for entry: GodotStringName) -> Bool {
        __hasMeta(name: entry)
    }
    
    func metaList() -> Godot.GodotArray<Godot.GodotStringName> {
        __getMetaList()
    }
    
    func signals() -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        __getSignalList()
    }
    
    /// Returns an Array of connections for the given signal.
    ///
    /// >important: Reading connections from an instance different
    /// from the given emitter source will stop execution.
    func signalConnections<Input>(
        from emitter: SignalEmitter<Input>
    ) -> [SignalConnection] {
        precondition(emitter.sourceObject == self, "Attempting to retrieve connections from \(self) using emitter emitting from \(emitter.sourceObject).")
        
        return __getSignalConnectionList(signal: emitter.signalName).map { info in
            SignalConnection.fromEmitter(
                emitter: emitter,
                infoDictionary: info
            )
        }
    }
    
    func incomingConnections() -> [SignalConnection] {
        __getIncomingConnections().map { info in
            SignalConnection.fromInfoDictionary(info)
        }
    }
    
    var isBlockingSignals: Bool {
        get {
            __isBlockingSignals()
        }
        set(newValue) {
            __setBlockSignals(enable: newValue)
        }
    }
    
    var isQueuedForDeletion: Bool {
        __isQueuedForDeletion()
    }
    
    func cancelFree() {
        __cancelFree()
    }
    
    func translate(
        _ message: GodotStringName,
        context: GodotStringName = ""
    ) -> GodotString {
        __tr(message: message, context: context)
    }
    
    func translate(
        _ message: GodotStringName,
        plural: GodotStringName,
        amount: Int32,
        context: GodotStringName = ""
    ) -> GodotString {
        __trN(message: message, pluralMessage: plural, n: amount, context: context)
    }
    
    var canTranslateMessages: Bool {
        get {
            __canTranslateMessages()
        }
        set(newValue) {
            __setMessageTranslation(enable: newValue)
        }
    }
}

extension Object: Identifiable {
    /// Returns the object's unique instance ID.
    ///
    /// This ID can be saved in ``EncodedObjectAsID``,
    /// and can be used to retrieve this object instance
    /// with ``instance(fromID:)``.
    public var id: UInt64 {
        __getInstanceId()
    }
}

extension Object: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

extension Object: Equatable {
    public static func == (lhs: Object, rhs: Object) -> Bool {
        lhs.id == rhs.id
    }
}

extension Object: CustomStringConvertible {
    public var description: String {
        "\(Self.self)<\(id)>"
    }
}

extension Object: CustomDebugStringConvertible {
    public var debugDescription: String {
        "\(Self.self)<\(id)>"
    }
}

// MARK: - Internal

extension Object {
    internal class func retrievedInstanceManagedByGodot(_ instancePtr: GDExtensionObjectPtr?) -> Self? {
        guard let instancePtr else {
            return nil
        }
        
        guard let className = GodotStringName.className(forObjectPointer: instancePtr) else {
            gdDebugPrintError("Cannot retrieve class name of an instance")
            return nil
        }
        
        guard let binding = GodotExtension.classRegistrar.binding(forClassNamed: className) else {
            gdDebugPrintError("No class binding found for class \(className)")
            return nil
        }
        
        let instance: Object = withUnsafePointer(to: binding.callbacks) { callbacksPointer in
            let opaque = GodotExtension.Interface.objectGetInstanceBinding(
                instancePtr,
                GodotExtension.token,
                callbacksPointer
            )
            
            return binding.type._retrieveObjectInstance(fromUnsafePointer: opaque!)
        }
        
        return instance as? Self
    }
    
    internal func __emitSignalWithArgumentsArray(
        _ signal: GodotStringName,
        arguments: [Variant]
    ) -> ErrorType {
        ErrorType.fromMutatingGodotUnsafePointer { __temporary in
            Variant.withStorageUnsafeRawPointer(to: signal) { __ptr_signal in
                withUnsafeArgumentPackPointer(
                    __ptr_signal,
                    varargsArray: arguments
                ) { packCount, __accessPtr in
                    `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindCall(
                            Self.__method_binding_emit_signal,
                            __ptr_self,
                            __accessPtr,
                            Int64(packCount),
                            __temporary,
                            nil
                        )
                    }
                }
            }
        }
    }
}
