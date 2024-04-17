//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class TextServerManager: Object {
    public struct InterfaceAddedSignalInput: Godot.SignalInput {
        public let interfaceName: Godot.GodotStringName

        fileprivate init(
            interfaceName: Godot.GodotStringName
        ) {
            self.interfaceName = interfaceName
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.interfaceName)]
        }
    }

    public func interfaceAdded(
        interfaceName: Godot.GodotStringName
    ) {
        _ = interfaceAddedSignal.emit(.init(interfaceName: interfaceName))
    }

    public lazy var interfaceAddedSignal: Godot.SignalEmitter<InterfaceAddedSignalInput> = {
        .init(object: self, signalName: "interface_added") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<InterfaceAddedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(interfaceName: Godot.GodotStringName.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<InterfaceAddedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<InterfaceAddedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct InterfaceRemovedSignalInput: Godot.SignalInput {
        public let interfaceName: Godot.GodotStringName

        fileprivate init(
            interfaceName: Godot.GodotStringName
        ) {
            self.interfaceName = interfaceName
        }

        public static func arguments(
            from input: Self
        ) -> [Variant] {
            [Variant(input.interfaceName)]
        }
    }

    public func interfaceRemoved(
        interfaceName: Godot.GodotStringName
    ) {
        _ = interfaceRemovedSignal.emit(.init(interfaceName: interfaceName))
    }

    public lazy var interfaceRemovedSignal: Godot.SignalEmitter<InterfaceRemovedSignalInput> = {
        .init(object: self, signalName: "interface_removed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<InterfaceRemovedSignalInput>> .fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(interfaceName: Godot.GodotStringName.convertFromStorage(unsafePointer: args!.advanced(by: 0).pointee!)))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<InterfaceRemovedSignalInput>> .fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<InterfaceRemovedSignalInput>> .fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).transferToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    internal static var __method_binding_add_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_interface").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1799689403)!
        }
        }
    }()

    public func addInterface(
        _ interface: Godot.TextServer?
    ) {
        withTransferrableUnsafeRawPointer(to: interface) { __ptr_interface in
            withUnsafePointer(to: __ptr_interface) { _ptr___ptr_interface in
                withUnsafeArgumentPackPointer(_ptr___ptr_interface) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_add_interface,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_interface_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interface_count").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()

    public func interfaceCount() -> Int32 {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_interface_count,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_remove_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_interface").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1799689403)!
        }
        }
    }()

    public func removeInterface(
        _ interface: Godot.TextServer?
    ) {
        withTransferrableUnsafeRawPointer(to: interface) { __ptr_interface in
            withUnsafePointer(to: __ptr_interface) { _ptr___ptr_interface in
                withUnsafeArgumentPackPointer(_ptr___ptr_interface) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_remove_interface,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interface").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1672475555)!
        }
        }
    }()

    public func interface(
        idx: Int32
    ) -> Godot.TextServer? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: idx) { __ptr_idx in
                withUnsafeArgumentPackPointer(__ptr_idx) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_get_interface,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_interfaces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_interfaces").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()

    public func interfaces() -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_interfaces,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_find_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_interface").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240905781)!
        }
        }
    }()

    public func findInterface(
        name: Godot.GodotString
    ) -> Godot.TextServer? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: name) { __ptr_name in
                withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_find_interface,
                            __ptr_self,
                            __accessPtr,
                            __temporary
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_primary_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_primary_interface").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1799689403)!
        }
        }
    }()

    public func setPrimaryInterface(
        index: Godot.TextServer?
    ) {
        withTransferrableUnsafeRawPointer(to: index) { __ptr_index in
            withUnsafePointer(to: __ptr_index) { _ptr___ptr_index in
                withUnsafeArgumentPackPointer(_ptr___ptr_index) { __accessPtr in
                    self.withUnsafeMutableRawPointer { __ptr_self in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_set_primary_interface,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_get_primary_interface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_primary_interface").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 905850878)!
        }
        }
    }()

    public func primaryInterface() -> Godot.TextServer? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_primary_interface,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil

    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        _virtualFunctions = [
            :
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}