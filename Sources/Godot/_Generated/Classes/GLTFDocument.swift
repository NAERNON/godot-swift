//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class GLTFDocument: Resource {
    public enum RootNodeMode: UInt32, GodotEnum {
        case singleRoot = 0
        case keepRoot = 1
        case multiRoot = 2

        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Single Root", 0),
            ("Keep Root", 1),
            ("Multi Root", 2),]
        }
    }

    internal static var __method_binding_append_from_file: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "append_from_file").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 866380864)!
        }
        }
    }()

    public func appendFromFile(
        path: Godot.GodotString,
        state: Godot.GLTFState?,
        flags: UInt32 = 0,
        basePath: Godot.GodotString = ""
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: path) { __ptr_path in
                withTransferrableUnsafeRawPointer(to: state) { __ptr_state in
                    withUnsafePointer(to: __ptr_state) { _ptr___ptr_state in
                        withTransferrableUnsafeRawPointer(to: flags) { __ptr_flags in
                            withTransferrableUnsafeRawPointer(to: basePath) { __ptr_basePath in
                                withUnsafeArgumentPackPointer(__ptr_path, _ptr___ptr_state, __ptr_flags, __ptr_basePath) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_append_from_file,
                                            __ptr_self,
                                            __accessPtr,
                                            __temporary
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_append_from_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "append_from_buffer").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1616081266)!
        }
        }
    }()

    public func appendFromBuffer(
        bytes: Godot.PackedByteArray,
        basePath: Godot.GodotString,
        state: Godot.GLTFState?,
        flags: UInt32 = 0
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: bytes) { __ptr_bytes in
                withTransferrableUnsafeRawPointer(to: basePath) { __ptr_basePath in
                    withTransferrableUnsafeRawPointer(to: state) { __ptr_state in
                        withUnsafePointer(to: __ptr_state) { _ptr___ptr_state in
                            withTransferrableUnsafeRawPointer(to: flags) { __ptr_flags in
                                withUnsafeArgumentPackPointer(__ptr_bytes, __ptr_basePath, _ptr___ptr_state, __ptr_flags) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_append_from_buffer,
                                            __ptr_self,
                                            __accessPtr,
                                            __temporary
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_append_from_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "append_from_scene").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1622574258)!
        }
        }
    }()

    public func appendFromScene(
        node: Godot.Node?,
        state: Godot.GLTFState?,
        flags: UInt32 = 0
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: node) { __ptr_node in
                withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
                    withTransferrableUnsafeRawPointer(to: state) { __ptr_state in
                        withUnsafePointer(to: __ptr_state) { _ptr___ptr_state in
                            withTransferrableUnsafeRawPointer(to: flags) { __ptr_flags in
                                withUnsafeArgumentPackPointer(_ptr___ptr_node, _ptr___ptr_state, __ptr_flags) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_append_from_scene,
                                            __ptr_self,
                                            __accessPtr,
                                            __temporary
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_generate_scene: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generate_scene").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 596118388)!
        }
        }
    }()

    public func generateScene(
        state: Godot.GLTFState?,
        bakeFps: Double = 30,
        trimming: Bool = false,
        removeImmutableTracks: Bool = true
    ) -> Godot.Node? {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: state) { __ptr_state in
                withUnsafePointer(to: __ptr_state) { _ptr___ptr_state in
                    withTransferrableUnsafeRawPointer(to: bakeFps) { __ptr_bakeFps in
                        withTransferrableUnsafeRawPointer(to: trimming) { __ptr_trimming in
                            withTransferrableUnsafeRawPointer(to: removeImmutableTracks) { __ptr_removeImmutableTracks in
                                withUnsafeArgumentPackPointer(_ptr___ptr_state, __ptr_bakeFps, __ptr_trimming, __ptr_removeImmutableTracks) { __accessPtr in
                                    self.withUnsafeMutableRawPointer { __ptr_self in
                                        GodotExtension.Interface.objectMethodBindPtrcall(
                                            Self.__method_binding_generate_scene,
                                            __ptr_self,
                                            __accessPtr,
                                            __temporary
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_generate_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "generate_buffer").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 741783455)!
        }
        }
    }()

    public func generateBuffer(
        state: Godot.GLTFState?
    ) -> Godot.PackedByteArray {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: state) { __ptr_state in
                withUnsafePointer(to: __ptr_state) { _ptr___ptr_state in
                    withUnsafeArgumentPackPointer(_ptr___ptr_state) { __accessPtr in
                        self.withUnsafeMutableRawPointer { __ptr_self in
                            GodotExtension.Interface.objectMethodBindPtrcall(
                                Self.__method_binding_generate_buffer,
                                __ptr_self,
                                __accessPtr,
                                __temporary
                            )
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_write_to_filesystem: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "write_to_filesystem").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1784551478)!
        }
        }
    }()

    public func writeToFilesystem(
        state: Godot.GLTFState?,
        path: Godot.GodotString
    ) -> Godot.ErrorType {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            withTransferrableUnsafeRawPointer(to: state) { __ptr_state in
                withUnsafePointer(to: __ptr_state) { _ptr___ptr_state in
                    withTransferrableUnsafeRawPointer(to: path) { __ptr_path in
                        withUnsafeArgumentPackPointer(_ptr___ptr_state, __ptr_path) { __accessPtr in
                            self.withUnsafeMutableRawPointer { __ptr_self in
                                GodotExtension.Interface.objectMethodBindPtrcall(
                                    Self.__method_binding_write_to_filesystem,
                                    __ptr_self,
                                    __accessPtr,
                                    __temporary
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    internal static var __method_binding_set_image_format: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_image_format").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()

    private func __setImageFormat(
        _ imageFormat: Godot.GodotString
    ) {
        withTransferrableUnsafeRawPointer(to: imageFormat) { __ptr_imageFormat in
            withUnsafeArgumentPackPointer(__ptr_imageFormat) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_image_format,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_image_format: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_image_format").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()

    private func __getImageFormat() -> Godot.GodotString {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_image_format,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_lossy_quality: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_lossy_quality").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()

    private func __setLossyQuality(
        _ lossyQuality: Double
    ) {
        withTransferrableUnsafeRawPointer(to: lossyQuality) { __ptr_lossyQuality in
            withUnsafeArgumentPackPointer(__ptr_lossyQuality) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_lossy_quality,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_lossy_quality: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_lossy_quality").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()

    private func __getLossyQuality() -> Double {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_lossy_quality,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_set_root_node_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_root_node_mode").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 463633402)!
        }
        }
    }()

    private func __setRootNodeMode(
        _ rootNodeMode: Godot.GLTFDocument.RootNodeMode
    ) {
        withTransferrableUnsafeRawPointer(to: rootNodeMode) { __ptr_rootNodeMode in
            withUnsafeArgumentPackPointer(__ptr_rootNodeMode) { __accessPtr in
                self.withUnsafeMutableRawPointer { __ptr_self in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_set_root_node_mode,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    internal static var __method_binding_get_root_node_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_root_node_mode").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 948057992)!
        }
        }
    }()

    private func __getRootNodeMode() -> Godot.GLTFDocument.RootNodeMode {
        fromInitializingTransferrableUnsafeRawPointer { __temporary in
            self.withUnsafeMutableRawPointer { __ptr_self in
                GodotExtension.Interface.objectMethodBindPtrcall(
                    Self.__method_binding_get_root_node_mode,
                    __ptr_self,
                    nil,
                    __temporary
                )
            }
        }
    }

    internal static var __method_binding_register_gltf_document_extension: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "register_gltf_document_extension").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3752678331)!
        }
        }
    }()

    static public func registerGltfDocumentExtension(
        _ `extension`: Godot.GLTFDocumentExtension?,
        firstPriority: Bool = false
    ) {
        withTransferrableUnsafeRawPointer(to: `extension`) { __ptr_extension in
            withUnsafePointer(to: __ptr_extension) { _ptr___ptr_extension in
                withTransferrableUnsafeRawPointer(to: firstPriority) { __ptr_firstPriority in
                    withUnsafeArgumentPackPointer(_ptr___ptr_extension, __ptr_firstPriority) { __accessPtr in
                        GodotExtension.Interface.objectMethodBindPtrcall(
                            Self.__method_binding_register_gltf_document_extension,
                            nil,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    internal static var __method_binding_unregister_gltf_document_extension: GDExtensionMethodBindPtr = {
        _$exposedClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "unregister_gltf_document_extension").withUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2684415758)!
        }
        }
    }()

    static public func unregisterGltfDocumentExtension(
        _ `extension`: Godot.GLTFDocumentExtension?
    ) {
        withTransferrableUnsafeRawPointer(to: `extension`) { __ptr_extension in
            withUnsafePointer(to: __ptr_extension) { _ptr___ptr_extension in
                withUnsafeArgumentPackPointer(_ptr___ptr_extension) { __accessPtr in
                    GodotExtension.Interface.objectMethodBindPtrcall(
                        Self.__method_binding_unregister_gltf_document_extension,
                        nil,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    public var imageFormat: Godot.GodotString {
        get {
            __getImageFormat()
        }
        set {
            __setImageFormat(
                newValue
            )
        }
    }

    public var lossyQuality: Double {
        get {
            __getLossyQuality()
        }
        set {
            __setLossyQuality(
                newValue
            )
        }
    }

    public var rootNodeMode: Godot.GLTFDocument.RootNodeMode {
        get {
            __getRootNodeMode()
        }
        set {
            __setRootNodeMode(
                newValue
            )
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