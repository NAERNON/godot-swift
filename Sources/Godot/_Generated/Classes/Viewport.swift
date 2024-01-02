//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class Viewport: Node {
    public enum PositionalShadowAtlasQuadrantSubdiv: UInt32, GodotEnum {
        case disabled = 0
        case shadowAtlasQuadrantSubdiv1 = 1
        case shadowAtlasQuadrantSubdiv4 = 2
        case shadowAtlasQuadrantSubdiv16 = 3
        case shadowAtlasQuadrantSubdiv64 = 4
        case shadowAtlasQuadrantSubdiv256 = 5
        case shadowAtlasQuadrantSubdiv1024 = 6
        case max = 7
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Shadow Atlas Quadrant Subdiv1", 1),
            ("Shadow Atlas Quadrant Subdiv4", 2),
            ("Shadow Atlas Quadrant Subdiv16", 3),
            ("Shadow Atlas Quadrant Subdiv64", 4),
            ("Shadow Atlas Quadrant Subdiv256", 5),
            ("Shadow Atlas Quadrant Subdiv1024", 6),
            ("Max", 7),]
        }
    }
    public enum Scaling3DMode: UInt32, GodotEnum {
        case bilinear = 0
        case fsr = 1
        case fsr2 = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Bilinear", 0),
            ("Fsr", 1),
            ("Fsr2", 2),
            ("Max", 3),]
        }
    }
    public enum MSAA: UInt32, GodotEnum {
        case disabled = 0
        case msaa2x = 1
        case msaa4x = 2
        case msaa8x = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Msaa2x", 1),
            ("Msaa4x", 2),
            ("Msaa8x", 3),
            ("Max", 4),]
        }
    }
    public enum ScreenSpaceAA: UInt32, GodotEnum {
        case disabled = 0
        case fxaa = 1
        case max = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Fxaa", 1),
            ("Max", 2),]
        }
    }
    public enum RenderInfo: UInt32, GodotEnum {
        case objectsInFrame = 0
        case primitivesInFrame = 1
        case drawCallsInFrame = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Objects In Frame", 0),
            ("Primitives In Frame", 1),
            ("Draw Calls In Frame", 2),
            ("Max", 3),]
        }
    }
    public enum RenderInfoType: UInt32, GodotEnum {
        case visible = 0
        case shadow = 1
        case max = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Visible", 0),
            ("Shadow", 1),
            ("Max", 2),]
        }
    }
    public enum DebugDraw: UInt32, GodotEnum {
        case disabled = 0
        case unshaded = 1
        case lighting = 2
        case overdraw = 3
        case wireframe = 4
        case normalBuffer = 5
        case voxelGiAlbedo = 6
        case voxelGiLighting = 7
        case voxelGiEmission = 8
        case shadowAtlas = 9
        case directionalShadowAtlas = 10
        case sceneLuminance = 11
        case ssao = 12
        case ssil = 13
        case pssmSplits = 14
        case decalAtlas = 15
        case sdfgi = 16
        case sdfgiProbes = 17
        case giBuffer = 18
        case disableLod = 19
        case clusterOmniLights = 20
        case clusterSpotLights = 21
        case clusterDecals = 22
        case clusterReflectionProbes = 23
        case occluders = 24
        case motionVectors = 25
        case internalBuffer = 26
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Unshaded", 1),
            ("Lighting", 2),
            ("Overdraw", 3),
            ("Wireframe", 4),
            ("Normal Buffer", 5),
            ("Voxel Gi Albedo", 6),
            ("Voxel Gi Lighting", 7),
            ("Voxel Gi Emission", 8),
            ("Shadow Atlas", 9),
            ("Directional Shadow Atlas", 10),
            ("Scene Luminance", 11),
            ("Ssao", 12),
            ("Ssil", 13),
            ("Pssm Splits", 14),
            ("Decal Atlas", 15),
            ("Sdfgi", 16),
            ("Sdfgi Probes", 17),
            ("Gi Buffer", 18),
            ("Disable Lod", 19),
            ("Cluster Omni Lights", 20),
            ("Cluster Spot Lights", 21),
            ("Cluster Decals", 22),
            ("Cluster Reflection Probes", 23),
            ("Occluders", 24),
            ("Motion Vectors", 25),
            ("Internal Buffer", 26),]
        }
    }
    public enum DefaultCanvasItemTextureFilter: UInt32, GodotEnum {
        case nearest = 0
        case linear = 1
        case linearWithMipmaps = 2
        case nearestWithMipmaps = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Nearest", 0),
            ("Linear", 1),
            ("Linear With Mipmaps", 2),
            ("Nearest With Mipmaps", 3),
            ("Max", 4),]
        }
    }
    public enum DefaultCanvasItemTextureRepeat: UInt32, GodotEnum {
        case disabled = 0
        case enabled = 1
        case mirror = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Enabled", 1),
            ("Mirror", 2),
            ("Max", 3),]
        }
    }
    public enum SDFOversize: UInt32, GodotEnum {
        case sdfOversize100Percent = 0
        case sdfOversize120Percent = 1
        case sdfOversize150Percent = 2
        case sdfOversize200Percent = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Sdf Oversize100 Percent", 0),
            ("Sdf Oversize120 Percent", 1),
            ("Sdf Oversize150 Percent", 2),
            ("Sdf Oversize200 Percent", 3),
            ("Max", 4),]
        }
    }
    public enum SDFScale: UInt32, GodotEnum {
        case sdfScale100Percent = 0
        case sdfScale50Percent = 1
        case sdfScale25Percent = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Sdf Scale100 Percent", 0),
            ("Sdf Scale50 Percent", 1),
            ("Sdf Scale25 Percent", 2),
            ("Max", 3),]
        }
    }
    public enum VRSMode: UInt32, GodotEnum {
        case disabled = 0
        case texture = 1
        case xr = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Texture", 1),
            ("Xr", 2),
            ("Max", 3),]
        }
    }

    public func sizeChanged() {
        _ = sizeChangedSignal.emit()
    }
    public lazy var sizeChangedSignal: Godot.EmptySignalEmitter = {
        .init(object: self, signalName: "size_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call()
        } freeFunc: { callablePtr in
            Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.EmptySignalReceiver>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct GuiFocusChangedSignalInput: Godot.SignalInput {
        public let node: Godot.Control?
        fileprivate init(node: Godot.Control?) {
            self.node = node
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, node)
        }
    }
    public func guiFocusChanged(node: Godot.Control?) {
        _ = guiFocusChangedSignal.emit(.init(node: node))
    }
    public lazy var guiFocusChangedSignal: Godot.SignalEmitter<GuiFocusChangedSignalInput> = {
        .init(object: self, signalName: "gui_focus_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<GuiFocusChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(node: Godot.Control?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<GuiFocusChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<GuiFocusChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    private static var __method_binding_set_world_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_world_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2736080068)!
        }
        }
    }()
    private func __setWorld2D(_ world2D: Godot.World2D?) {
        world2D.withGodotUnsafeRawPointer { __ptr_world2D in
        withUnsafePointer(to: __ptr_world2D) { _ptr___ptr_world2D in
        withUnsafeArgumentPackPointer(_ptr___ptr_world2D) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_world_2d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_world_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_world_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2339128592)!
        }
        }
    }()
    private func __getWorld2D() -> Godot.World2D? {
        Godot.World2D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_world_2d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_find_world_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_world_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2339128592)!
        }
        }
    }()
    public func findWorld2D() -> Godot.World2D? {
        Godot.World2D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_find_world_2d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_canvas_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_canvas_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2761652528)!
        }
        }
    }()
    private func __setCanvasTransform(xform: Godot.Transform2D) {
        xform.withGodotUnsafeRawPointer { __ptr_xform in
        withUnsafeArgumentPackPointer(__ptr_xform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_canvas_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_canvas_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_canvas_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    private func __getCanvasTransform() -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_canvas_transform,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_global_canvas_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_global_canvas_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2761652528)!
        }
        }
    }()
    private func __setGlobalCanvasTransform(xform: Godot.Transform2D) {
        xform.withGodotUnsafeRawPointer { __ptr_xform in
        withUnsafeArgumentPackPointer(__ptr_xform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_global_canvas_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_global_canvas_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_global_canvas_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    private func __getGlobalCanvasTransform() -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_global_canvas_transform,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_final_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_final_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    public func finalTransform() -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_final_transform,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_screen_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_screen_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3814499831)!
        }
        }
    }()
    public func screenTransform() -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_screen_transform,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_visible_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_visible_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1639390495)!
        }
        }
    }()
    public func visibleRect() -> Godot.Rect2 {
        Godot.Rect2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_visible_rect,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_transparent_background: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_transparent_background").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setTransparentBackground(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_transparent_background,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_has_transparent_background: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_transparent_background").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __hasTransparentBackground() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_has_transparent_background,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_use_hdr_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_hdr_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseHdr2D(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_use_hdr_2d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_using_hdr_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_hdr_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isUsingHdr2D() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_using_hdr_2d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_msaa_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_msaa_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3330258708)!
        }
        }
    }()
    private func __setMsaa2D(msaa: Godot.Viewport.MSAA) {
        msaa.withGodotUnsafeRawPointer { __ptr_msaa in
        withUnsafeArgumentPackPointer(__ptr_msaa) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_msaa_2d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_msaa_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_msaa_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2542055527)!
        }
        }
    }()
    private func __getMsaa2D() -> Godot.Viewport.MSAA {
        Godot.Viewport.MSAA.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_msaa_2d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_msaa_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_msaa_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3330258708)!
        }
        }
    }()
    private func __setMsaa3D(msaa: Godot.Viewport.MSAA) {
        msaa.withGodotUnsafeRawPointer { __ptr_msaa in
        withUnsafeArgumentPackPointer(__ptr_msaa) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_msaa_3d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_msaa_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_msaa_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2542055527)!
        }
        }
    }()
    private func __getMsaa3D() -> Godot.Viewport.MSAA {
        Godot.Viewport.MSAA.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_msaa_3d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_screen_space_aa: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_screen_space_aa").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3544169389)!
        }
        }
    }()
    private func __setScreenSpaceAa(_ screenSpaceAa: Godot.Viewport.ScreenSpaceAA) {
        screenSpaceAa.withGodotUnsafeRawPointer { __ptr_screenSpaceAa in
        withUnsafeArgumentPackPointer(__ptr_screenSpaceAa) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_screen_space_aa,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_screen_space_aa: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_screen_space_aa").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1390814124)!
        }
        }
    }()
    private func __getScreenSpaceAa() -> Godot.Viewport.ScreenSpaceAA {
        Godot.Viewport.ScreenSpaceAA.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_screen_space_aa,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_use_taa: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_taa").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseTaa(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_use_taa,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_using_taa: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_taa").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isUsingTaa() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_using_taa,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_use_debanding: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_debanding").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseDebanding(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_use_debanding,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_using_debanding: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_debanding").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isUsingDebanding() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_using_debanding,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_use_occlusion_culling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_occlusion_culling").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseOcclusionCulling(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_use_occlusion_culling,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_using_occlusion_culling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_occlusion_culling").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isUsingOcclusionCulling() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_using_occlusion_culling,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_debug_draw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_debug_draw").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1970246205)!
        }
        }
    }()
    private func __setDebugDraw(_ debugDraw: Godot.Viewport.DebugDraw) {
        debugDraw.withGodotUnsafeRawPointer { __ptr_debugDraw in
        withUnsafeArgumentPackPointer(__ptr_debugDraw) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_debug_draw,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_debug_draw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_debug_draw").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 579191299)!
        }
        }
    }()
    private func __getDebugDraw() -> Godot.Viewport.DebugDraw {
        Godot.Viewport.DebugDraw.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_debug_draw,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_render_info: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_render_info").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 481977019)!
        }
        }
    }()
    public func renderInfo(type: Godot.Viewport.RenderInfoType, info: Godot.Viewport.RenderInfo) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        type.withGodotUnsafeRawPointer { __ptr_type in
        info.withGodotUnsafeRawPointer { __ptr_info in
        withUnsafeArgumentPackPointer(__ptr_type, __ptr_info) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_render_info,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1746695840)!
        }
        }
    }()
    public func texture() -> Godot.ViewportTexture? {
        Godot.ViewportTexture?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_physics_object_picking: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_physics_object_picking").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setPhysicsObjectPicking(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_physics_object_picking,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_physics_object_picking: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physics_object_picking").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __getPhysicsObjectPicking() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_physics_object_picking,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_physics_object_picking_sort: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_physics_object_picking_sort").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setPhysicsObjectPickingSort(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_physics_object_picking_sort,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_physics_object_picking_sort: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_physics_object_picking_sort").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __getPhysicsObjectPickingSort() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_physics_object_picking_sort,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_viewport_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_viewport_rid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2944877500)!
        }
        }
    }()
    public func viewportRid() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_viewport_rid,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_push_text_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "push_text_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func pushTextInput(text: Godot.GodotString) {
        text.withGodotUnsafeRawPointer { __ptr_text in
        withUnsafeArgumentPackPointer(__ptr_text) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_push_text_input,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_push_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "push_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3644664830)!
        }
        }
    }()
    public func pushInput(event: Godot.InputEvent?, inLocalCoords localCoords: Bool = false) {
        event.withGodotUnsafeRawPointer { __ptr_event in
        withUnsafePointer(to: __ptr_event) { _ptr___ptr_event in
        localCoords.withGodotUnsafeRawPointer { __ptr_localCoords in
        withUnsafeArgumentPackPointer(_ptr___ptr_event, __ptr_localCoords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_push_input,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_push_unhandled_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "push_unhandled_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3644664830)!
        }
        }
    }()
    public func pushUnhandledInput(event: Godot.InputEvent?, inLocalCoords localCoords: Bool = false) {
        event.withGodotUnsafeRawPointer { __ptr_event in
        withUnsafePointer(to: __ptr_event) { _ptr___ptr_event in
        localCoords.withGodotUnsafeRawPointer { __ptr_localCoords in
        withUnsafeArgumentPackPointer(_ptr___ptr_event, __ptr_localCoords) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_push_unhandled_input,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_get_camera_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_camera_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3551466917)!
        }
        }
    }()
    public func camera2D() -> Godot.Camera2D? {
        Godot.Camera2D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_camera_2d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_as_audio_listener_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_as_audio_listener_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAsAudioListener2D(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_as_audio_listener_2d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_audio_listener_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_audio_listener_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isAudioListener2D() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_audio_listener_2d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_mouse_position: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mouse_position").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    public func mousePosition() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_mouse_position,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_warp_mouse: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "warp_mouse").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    public func warpMouse(position: Godot.Vector2) {
        position.withGodotUnsafeRawPointer { __ptr_position in
        withUnsafeArgumentPackPointer(__ptr_position) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_warp_mouse,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_update_mouse_cursor_state: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "update_mouse_cursor_state").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func updateMouseCursorState() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_update_mouse_cursor_state,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_gui_get_drag_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "gui_get_drag_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1214101251)!
        }
        }
    }()
    public func guiGetDragData() -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_gui_get_drag_data,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_gui_is_dragging: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "gui_is_dragging").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func guiIsDragging() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_gui_is_dragging,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_gui_is_drag_successful: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "gui_is_drag_successful").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func guiIsDragSuccessful() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_gui_is_drag_successful,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_gui_release_focus: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "gui_release_focus").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func guiReleaseFocus() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_gui_release_focus,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_gui_get_focus_owner: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "gui_get_focus_owner").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2783021301)!
        }
        }
    }()
    public func guiGetFocusOwner() -> Godot.Control? {
        Godot.Control?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_gui_get_focus_owner,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_disable_input: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_disable_input").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDisableInput(disable: Bool) {
        disable.withGodotUnsafeRawPointer { __ptr_disable in
        withUnsafeArgumentPackPointer(__ptr_disable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_disable_input,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_input_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_input_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isInputDisabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_input_disabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_positional_shadow_atlas_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_positional_shadow_atlas_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setPositionalShadowAtlasSize(_ size: Int32) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_positional_shadow_atlas_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_positional_shadow_atlas_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_positional_shadow_atlas_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getPositionalShadowAtlasSize() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_positional_shadow_atlas_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_positional_shadow_atlas_16_bits: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_positional_shadow_atlas_16_bits").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setPositionalShadowAtlas16Bits(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_positional_shadow_atlas_16_bits,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_positional_shadow_atlas_16_bits: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_positional_shadow_atlas_16_bits").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __getPositionalShadowAtlas16Bits() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_positional_shadow_atlas_16_bits,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_snap_controls_to_pixels: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_snap_controls_to_pixels").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setSnapControlsToPixels(enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_snap_controls_to_pixels,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_snap_controls_to_pixels_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_snap_controls_to_pixels_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isSnapControlsToPixelsEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_snap_controls_to_pixels_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_snap_2d_transforms_to_pixel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_snap_2d_transforms_to_pixel").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setSnap2DTransformsToPixel(enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_snap_2d_transforms_to_pixel,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_snap_2d_transforms_to_pixel_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_snap_2d_transforms_to_pixel_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isSnap2DTransformsToPixelEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_snap_2d_transforms_to_pixel_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_snap_2d_vertices_to_pixel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_snap_2d_vertices_to_pixel").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setSnap2DVerticesToPixel(enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_snap_2d_vertices_to_pixel,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_snap_2d_vertices_to_pixel_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_snap_2d_vertices_to_pixel_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isSnap2DVerticesToPixelEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_snap_2d_vertices_to_pixel_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_positional_shadow_atlas_quadrant_subdiv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_positional_shadow_atlas_quadrant_subdiv").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2596956071)!
        }
        }
    }()
    public func setPositionalShadowAtlasQuadrantSubdiv(quadrant: Int32, subdiv: Godot.Viewport.PositionalShadowAtlasQuadrantSubdiv) {
        quadrant.withGodotUnsafeRawPointer { __ptr_quadrant in
        subdiv.withGodotUnsafeRawPointer { __ptr_subdiv in
        withUnsafeArgumentPackPointer(__ptr_quadrant, __ptr_subdiv) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_positional_shadow_atlas_quadrant_subdiv,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_positional_shadow_atlas_quadrant_subdiv: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_positional_shadow_atlas_quadrant_subdiv").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2676778355)!
        }
        }
    }()
    private func __getPositionalShadowAtlasQuadrantSubdiv(quadrant: Int32) -> Godot.Viewport.PositionalShadowAtlasQuadrantSubdiv {
        Godot.Viewport.PositionalShadowAtlasQuadrantSubdiv.fromMutatingGodotUnsafePointer { __temporary in
        quadrant.withGodotUnsafeRawPointer { __ptr_quadrant in
        withUnsafeArgumentPackPointer(__ptr_quadrant) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_positional_shadow_atlas_quadrant_subdiv,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_input_as_handled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_input_as_handled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func setInputAsHandled() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_input_as_handled,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_is_input_handled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_input_handled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func isInputHandled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_input_handled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_handle_input_locally: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_handle_input_locally").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setHandleInputLocally(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_handle_input_locally,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_handling_input_locally: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_handling_input_locally").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isHandlingInputLocally() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_handling_input_locally,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_default_canvas_item_texture_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_default_canvas_item_texture_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2815160100)!
        }
        }
    }()
    private func __setDefaultCanvasItemTextureFilter(mode: Godot.Viewport.DefaultCanvasItemTextureFilter) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_default_canvas_item_texture_filter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_default_canvas_item_texture_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_default_canvas_item_texture_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 896601198)!
        }
        }
    }()
    private func __getDefaultCanvasItemTextureFilter() -> Godot.Viewport.DefaultCanvasItemTextureFilter {
        Godot.Viewport.DefaultCanvasItemTextureFilter.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_default_canvas_item_texture_filter,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_embedding_subwindows: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_embedding_subwindows").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setEmbeddingSubwindows(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_embedding_subwindows,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_embedding_subwindows: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_embedding_subwindows").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isEmbeddingSubwindows() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_embedding_subwindows,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_embedded_subwindows: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_embedded_subwindows").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func embeddedSubwindows() -> Godot.GodotArray<Godot.Window?> {
        Godot.GodotArray<Godot.Window?>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_embedded_subwindows,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_canvas_cull_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_canvas_cull_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setCanvasCullMask(_ mask: UInt32) {
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_canvas_cull_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_canvas_cull_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_canvas_cull_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getCanvasCullMask() -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_canvas_cull_mask,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_canvas_cull_mask_bit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_canvas_cull_mask_bit").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func setCanvasCullMaskBit(layer: UInt32, enable: Bool) {
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_layer, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_canvas_cull_mask_bit,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_canvas_cull_mask_bit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_canvas_cull_mask_bit").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()
    public func canvasCullMaskBit(layer: UInt32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_canvas_cull_mask_bit,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_default_canvas_item_texture_repeat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_default_canvas_item_texture_repeat").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1658513413)!
        }
        }
    }()
    private func __setDefaultCanvasItemTextureRepeat(mode: Godot.Viewport.DefaultCanvasItemTextureRepeat) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_default_canvas_item_texture_repeat,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_default_canvas_item_texture_repeat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_default_canvas_item_texture_repeat").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4049774160)!
        }
        }
    }()
    private func __getDefaultCanvasItemTextureRepeat() -> Godot.Viewport.DefaultCanvasItemTextureRepeat {
        Godot.Viewport.DefaultCanvasItemTextureRepeat.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_default_canvas_item_texture_repeat,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_sdf_oversize: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sdf_oversize").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2574159017)!
        }
        }
    }()
    private func __setSdfOversize(_ oversize: Godot.Viewport.SDFOversize) {
        oversize.withGodotUnsafeRawPointer { __ptr_oversize in
        withUnsafeArgumentPackPointer(__ptr_oversize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_sdf_oversize,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_sdf_oversize: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sdf_oversize").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2631427510)!
        }
        }
    }()
    private func __getSdfOversize() -> Godot.Viewport.SDFOversize {
        Godot.Viewport.SDFOversize.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_sdf_oversize,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_sdf_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_sdf_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1402773951)!
        }
        }
    }()
    private func __setSdfScale(_ scale: Godot.Viewport.SDFScale) {
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_sdf_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_sdf_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_sdf_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3162688184)!
        }
        }
    }()
    private func __getSdfScale() -> Godot.Viewport.SDFScale {
        Godot.Viewport.SDFScale.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_sdf_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_mesh_lod_threshold: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_mesh_lod_threshold").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setMeshLodThreshold(pixels: Double) {
        pixels.withGodotUnsafeRawPointer { __ptr_pixels in
        withUnsafeArgumentPackPointer(__ptr_pixels) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_mesh_lod_threshold,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_mesh_lod_threshold: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_mesh_lod_threshold").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getMeshLodThreshold() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_mesh_lod_threshold,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_world_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_world_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1400875337)!
        }
        }
    }()
    private func __setWorld3D(_ world3D: Godot.World3D?) {
        world3D.withGodotUnsafeRawPointer { __ptr_world3D in
        withUnsafePointer(to: __ptr_world3D) { _ptr___ptr_world3D in
        withUnsafeArgumentPackPointer(_ptr___ptr_world3D) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_world_3d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_world_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_world_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 317588385)!
        }
        }
    }()
    private func __getWorld3D() -> Godot.World3D? {
        Godot.World3D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_world_3d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_find_world_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "find_world_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 317588385)!
        }
        }
    }()
    public func findWorld3D() -> Godot.World3D? {
        Godot.World3D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_find_world_3d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_use_own_world_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_own_world_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseOwnWorld3D(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_use_own_world_3d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_using_own_world_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_own_world_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isUsingOwnWorld3D() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_using_own_world_3d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_camera_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_camera_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2285090890)!
        }
        }
    }()
    public func camera3D() -> Godot.Camera3D? {
        Godot.Camera3D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_camera_3d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_as_audio_listener_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_as_audio_listener_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setAsAudioListener3D(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_as_audio_listener_3d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_audio_listener_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_audio_listener_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isAudioListener3D() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_audio_listener_3d,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_disable_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_disable_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setDisable3D(disable: Bool) {
        disable.withGodotUnsafeRawPointer { __ptr_disable in
        withUnsafeArgumentPackPointer(__ptr_disable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_disable_3d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_3d_disabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_3d_disabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __is3DDisabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_3d_disabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_use_xr: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_use_xr").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setUseXr(use: Bool) {
        use.withGodotUnsafeRawPointer { __ptr_use in
        withUnsafeArgumentPackPointer(__ptr_use) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_use_xr,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_using_xr: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_using_xr").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2240911060)!
        }
        }
    }()
    private func __isUsingXr() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_using_xr,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_scaling_3d_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scaling_3d_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1531597597)!
        }
        }
    }()
    private func __setScaling3DMode(_ scaling3DMode: Godot.Viewport.Scaling3DMode) {
        scaling3DMode.withGodotUnsafeRawPointer { __ptr_scaling3DMode in
        withUnsafeArgumentPackPointer(__ptr_scaling3DMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_scaling_3d_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_scaling_3d_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scaling_3d_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2597660574)!
        }
        }
    }()
    private func __getScaling3DMode() -> Godot.Viewport.Scaling3DMode {
        Godot.Viewport.Scaling3DMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_scaling_3d_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_scaling_3d_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scaling_3d_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setScaling3DScale(_ scale: Double) {
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_scaling_3d_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_scaling_3d_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scaling_3d_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getScaling3DScale() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_scaling_3d_scale,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_fsr_sharpness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_fsr_sharpness").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setFsrSharpness(_ fsrSharpness: Double) {
        fsrSharpness.withGodotUnsafeRawPointer { __ptr_fsrSharpness in
        withUnsafeArgumentPackPointer(__ptr_fsrSharpness) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_fsr_sharpness,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_fsr_sharpness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_fsr_sharpness").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getFsrSharpness() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_fsr_sharpness,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_texture_mipmap_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_texture_mipmap_bias").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setTextureMipmapBias(_ textureMipmapBias: Double) {
        textureMipmapBias.withGodotUnsafeRawPointer { __ptr_textureMipmapBias in
        withUnsafeArgumentPackPointer(__ptr_textureMipmapBias) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_texture_mipmap_bias,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_texture_mipmap_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_texture_mipmap_bias").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getTextureMipmapBias() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_texture_mipmap_bias,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_vrs_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_vrs_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2749867817)!
        }
        }
    }()
    private func __setVrsMode(_ mode: Godot.Viewport.VRSMode) {
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_vrs_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_vrs_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_vrs_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 349660525)!
        }
        }
    }()
    private func __getVrsMode() -> Godot.Viewport.VRSMode {
        Godot.Viewport.VRSMode.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_vrs_mode,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_vrs_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_vrs_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4051416890)!
        }
        }
    }()
    private func __setVrsTexture(_ texture: Godot.Texture2D?) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafePointer(to: __ptr_texture) { _ptr___ptr_texture in
        withUnsafeArgumentPackPointer(_ptr___ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_vrs_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_vrs_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_vrs_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3635182373)!
        }
        }
    }()
    private func __getVrsTexture() -> Godot.Texture2D? {
        Godot.Texture2D?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_vrs_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    public var is3DDisabled: Bool {
        get {
            __is3DDisabled()
        }
        set {
            __setDisable3D(
                disable: newValue
            )
        }
    }

    public var isUsingXr: Bool {
        get {
            __isUsingXr()
        }
        set {
            __setUseXr(
                use: newValue
            )
        }
    }

    public var isUsingOwnWorld3D: Bool {
        get {
            __isUsingOwnWorld3D()
        }
        set {
            __setUseOwnWorld3D(
                enable: newValue
            )
        }
    }

    public var world3D: Godot.World3D? {
        get {
            __getWorld3D()
        }
        set {
            __setWorld3D(
                newValue
            )
        }
    }

    public var world2D: Godot.World2D? {
        get {
            __getWorld2D()
        }
        set {
            __setWorld2D(
                newValue
            )
        }
    }

    public var hasTransparentBackground: Bool {
        get {
            __hasTransparentBackground()
        }
        set {
            __setTransparentBackground(
                enable: newValue
            )
        }
    }

    public var isHandlingInputLocally: Bool {
        get {
            __isHandlingInputLocally()
        }
        set {
            __setHandleInputLocally(
                enable: newValue
            )
        }
    }

    public var isSnap2DTransformsToPixelEnabled: Bool {
        get {
            __isSnap2DTransformsToPixelEnabled()
        }
        set {
            __setSnap2DTransformsToPixel(
                enabled: newValue
            )
        }
    }

    public var isSnap2DVerticesToPixelEnabled: Bool {
        get {
            __isSnap2DVerticesToPixelEnabled()
        }
        set {
            __setSnap2DVerticesToPixel(
                enabled: newValue
            )
        }
    }

    public var msaa2D: Godot.Viewport.MSAA {
        get {
            __getMsaa2D()
        }
        set {
            __setMsaa2D(
                msaa: newValue
            )
        }
    }

    public var msaa3D: Godot.Viewport.MSAA {
        get {
            __getMsaa3D()
        }
        set {
            __setMsaa3D(
                msaa: newValue
            )
        }
    }

    public var screenSpaceAa: Godot.Viewport.ScreenSpaceAA {
        get {
            __getScreenSpaceAa()
        }
        set {
            __setScreenSpaceAa(
                newValue
            )
        }
    }

    public var isUsingTaa: Bool {
        get {
            __isUsingTaa()
        }
        set {
            __setUseTaa(
                enable: newValue
            )
        }
    }

    public var isUsingDebanding: Bool {
        get {
            __isUsingDebanding()
        }
        set {
            __setUseDebanding(
                enable: newValue
            )
        }
    }

    public var isUsingOcclusionCulling: Bool {
        get {
            __isUsingOcclusionCulling()
        }
        set {
            __setUseOcclusionCulling(
                enable: newValue
            )
        }
    }

    public var meshLodThreshold: Double {
        get {
            __getMeshLodThreshold()
        }
        set {
            __setMeshLodThreshold(
                pixels: newValue
            )
        }
    }

    public var debugDraw: Godot.Viewport.DebugDraw {
        get {
            __getDebugDraw()
        }
        set {
            __setDebugDraw(
                newValue
            )
        }
    }

    public var isUsingHdr2D: Bool {
        get {
            __isUsingHdr2D()
        }
        set {
            __setUseHdr2D(
                enable: newValue
            )
        }
    }

    public var scaling3DMode: Godot.Viewport.Scaling3DMode {
        get {
            __getScaling3DMode()
        }
        set {
            __setScaling3DMode(
                newValue
            )
        }
    }

    public var scaling3DScale: Double {
        get {
            __getScaling3DScale()
        }
        set {
            __setScaling3DScale(
                newValue
            )
        }
    }

    public var textureMipmapBias: Double {
        get {
            __getTextureMipmapBias()
        }
        set {
            __setTextureMipmapBias(
                newValue
            )
        }
    }

    public var fsrSharpness: Double {
        get {
            __getFsrSharpness()
        }
        set {
            __setFsrSharpness(
                newValue
            )
        }
    }

    public var vrsMode: Godot.Viewport.VRSMode {
        get {
            __getVrsMode()
        }
        set {
            __setVrsMode(
                newValue
            )
        }
    }

    public var vrsTexture: Godot.Texture2D? {
        get {
            __getVrsTexture()
        }
        set {
            __setVrsTexture(
                newValue
            )
        }
    }

    public var defaultCanvasItemTextureFilter: Godot.Viewport.DefaultCanvasItemTextureFilter {
        get {
            __getDefaultCanvasItemTextureFilter()
        }
        set {
            __setDefaultCanvasItemTextureFilter(
                mode: newValue
            )
        }
    }

    public var defaultCanvasItemTextureRepeat: Godot.Viewport.DefaultCanvasItemTextureRepeat {
        get {
            __getDefaultCanvasItemTextureRepeat()
        }
        set {
            __setDefaultCanvasItemTextureRepeat(
                mode: newValue
            )
        }
    }

    public var isAudioListener2D: Bool {
        get {
            __isAudioListener2D()
        }
        set {
            __setAsAudioListener2D(
                enable: newValue
            )
        }
    }

    public var isAudioListener3D: Bool {
        get {
            __isAudioListener3D()
        }
        set {
            __setAsAudioListener3D(
                enable: newValue
            )
        }
    }

    public var physicsObjectPicking: Bool {
        get {
            __getPhysicsObjectPicking()
        }
        set {
            __setPhysicsObjectPicking(
                enable: newValue
            )
        }
    }

    public var physicsObjectPickingSort: Bool {
        get {
            __getPhysicsObjectPickingSort()
        }
        set {
            __setPhysicsObjectPickingSort(
                enable: newValue
            )
        }
    }

    public var isInputDisabled: Bool {
        get {
            __isInputDisabled()
        }
        set {
            __setDisableInput(
                disable: newValue
            )
        }
    }

    public var isSnapControlsToPixelsEnabled: Bool {
        get {
            __isSnapControlsToPixelsEnabled()
        }
        set {
            __setSnapControlsToPixels(
                enabled: newValue
            )
        }
    }

    public var isEmbeddingSubwindows: Bool {
        get {
            __isEmbeddingSubwindows()
        }
        set {
            __setEmbeddingSubwindows(
                enable: newValue
            )
        }
    }

    public var sdfOversize: Godot.Viewport.SDFOversize {
        get {
            __getSdfOversize()
        }
        set {
            __setSdfOversize(
                newValue
            )
        }
    }

    public var sdfScale: Godot.Viewport.SDFScale {
        get {
            __getSdfScale()
        }
        set {
            __setSdfScale(
                newValue
            )
        }
    }

    public var positionalShadowAtlasSize: Int32 {
        get {
            __getPositionalShadowAtlasSize()
        }
        set {
            __setPositionalShadowAtlasSize(
                newValue
            )
        }
    }

    public var positionalShadowAtlas16Bits: Bool {
        get {
            __getPositionalShadowAtlas16Bits()
        }
        set {
            __setPositionalShadowAtlas16Bits(
                enable: newValue
            )
        }
    }

    public var positionalShadowAtlasQuad0: Godot.Viewport.PositionalShadowAtlasQuadrantSubdiv {
        get {
            __getPositionalShadowAtlasQuadrantSubdiv(
                quadrant: 0
            )
        }
    }

    public var positionalShadowAtlasQuad1: Godot.Viewport.PositionalShadowAtlasQuadrantSubdiv {
        get {
            __getPositionalShadowAtlasQuadrantSubdiv(
                quadrant: 1
            )
        }
    }

    public var positionalShadowAtlasQuad2: Godot.Viewport.PositionalShadowAtlasQuadrantSubdiv {
        get {
            __getPositionalShadowAtlasQuadrantSubdiv(
                quadrant: 2
            )
        }
    }

    public var positionalShadowAtlasQuad3: Godot.Viewport.PositionalShadowAtlasQuadrantSubdiv {
        get {
            __getPositionalShadowAtlasQuadrantSubdiv(
                quadrant: 3
            )
        }
    }

    public var canvasTransform: Godot.Transform2D {
        get {
            __getCanvasTransform()
        }
        set {
            __setCanvasTransform(
                xform: newValue
            )
        }
    }

    public var globalCanvasTransform: Godot.Transform2D {
        get {
            __getGlobalCanvasTransform()
        }
        set {
            __setGlobalCanvasTransform(
                xform: newValue
            )
        }
    }

    public var canvasCullMask: UInt32 {
        get {
            __getCanvasCullMask()
        }
        set {
            __setCanvasCullMask(
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