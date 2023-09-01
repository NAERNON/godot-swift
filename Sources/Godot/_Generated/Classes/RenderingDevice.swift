//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class RenderingDevice: Object {
    public enum DeviceType: UInt32 {
        case other = 0
        case integratedGpu = 1
        case discreteGpu = 2
        case virtualGpu = 3
        case cpu = 4
        case max = 5
    }
    public enum DriverResource: UInt32 {
        case device = 0
        case physicalDevice = 1
        case instance = 2
        case queue = 3
        case queueFamilyIndex = 4
        case image = 5
        case imageView = 6
        case imageNativeTextureFormat = 7
        case sampler = 8
        case descriptorSet = 9
        case buffer = 10
        case computePipeline = 11
        case renderPipeline = 12
    }
    public enum DataFormat: UInt32 {
        case r4g4UnormPack8 = 0
        case r4g4b4a4UnormPack16 = 1
        case b4g4r4a4UnormPack16 = 2
        case r5g6b5UnormPack16 = 3
        case b5g6r5UnormPack16 = 4
        case r5g5b5a1UnormPack16 = 5
        case b5g5r5a1UnormPack16 = 6
        case a1r5g5b5UnormPack16 = 7
        case r8Unorm = 8
        case r8Snorm = 9
        case r8Uscaled = 10
        case r8Sscaled = 11
        case r8Uint = 12
        case r8Sint = 13
        case r8Srgb = 14
        case r8g8Unorm = 15
        case r8g8Snorm = 16
        case r8g8Uscaled = 17
        case r8g8Sscaled = 18
        case r8g8Uint = 19
        case r8g8Sint = 20
        case r8g8Srgb = 21
        case r8g8b8Unorm = 22
        case r8g8b8Snorm = 23
        case r8g8b8Uscaled = 24
        case r8g8b8Sscaled = 25
        case r8g8b8Uint = 26
        case r8g8b8Sint = 27
        case r8g8b8Srgb = 28
        case b8g8r8Unorm = 29
        case b8g8r8Snorm = 30
        case b8g8r8Uscaled = 31
        case b8g8r8Sscaled = 32
        case b8g8r8Uint = 33
        case b8g8r8Sint = 34
        case b8g8r8Srgb = 35
        case r8g8b8a8Unorm = 36
        case r8g8b8a8Snorm = 37
        case r8g8b8a8Uscaled = 38
        case r8g8b8a8Sscaled = 39
        case r8g8b8a8Uint = 40
        case r8g8b8a8Sint = 41
        case r8g8b8a8Srgb = 42
        case b8g8r8a8Unorm = 43
        case b8g8r8a8Snorm = 44
        case b8g8r8a8Uscaled = 45
        case b8g8r8a8Sscaled = 46
        case b8g8r8a8Uint = 47
        case b8g8r8a8Sint = 48
        case b8g8r8a8Srgb = 49
        case a8b8g8r8UnormPack32 = 50
        case a8b8g8r8SnormPack32 = 51
        case a8b8g8r8UscaledPack32 = 52
        case a8b8g8r8SscaledPack32 = 53
        case a8b8g8r8UintPack32 = 54
        case a8b8g8r8SintPack32 = 55
        case a8b8g8r8SrgbPack32 = 56
        case a2r10g10b10UnormPack32 = 57
        case a2r10g10b10SnormPack32 = 58
        case a2r10g10b10UscaledPack32 = 59
        case a2r10g10b10SscaledPack32 = 60
        case a2r10g10b10UintPack32 = 61
        case a2r10g10b10SintPack32 = 62
        case a2b10g10r10UnormPack32 = 63
        case a2b10g10r10SnormPack32 = 64
        case a2b10g10r10UscaledPack32 = 65
        case a2b10g10r10SscaledPack32 = 66
        case a2b10g10r10UintPack32 = 67
        case a2b10g10r10SintPack32 = 68
        case r16Unorm = 69
        case r16Snorm = 70
        case r16Uscaled = 71
        case r16Sscaled = 72
        case r16Uint = 73
        case r16Sint = 74
        case r16Sfloat = 75
        case r16g16Unorm = 76
        case r16g16Snorm = 77
        case r16g16Uscaled = 78
        case r16g16Sscaled = 79
        case r16g16Uint = 80
        case r16g16Sint = 81
        case r16g16Sfloat = 82
        case r16g16b16Unorm = 83
        case r16g16b16Snorm = 84
        case r16g16b16Uscaled = 85
        case r16g16b16Sscaled = 86
        case r16g16b16Uint = 87
        case r16g16b16Sint = 88
        case r16g16b16Sfloat = 89
        case r16g16b16a16Unorm = 90
        case r16g16b16a16Snorm = 91
        case r16g16b16a16Uscaled = 92
        case r16g16b16a16Sscaled = 93
        case r16g16b16a16Uint = 94
        case r16g16b16a16Sint = 95
        case r16g16b16a16Sfloat = 96
        case r32Uint = 97
        case r32Sint = 98
        case r32Sfloat = 99
        case r32g32Uint = 100
        case r32g32Sint = 101
        case r32g32Sfloat = 102
        case r32g32b32Uint = 103
        case r32g32b32Sint = 104
        case r32g32b32Sfloat = 105
        case r32g32b32a32Uint = 106
        case r32g32b32a32Sint = 107
        case r32g32b32a32Sfloat = 108
        case r64Uint = 109
        case r64Sint = 110
        case r64Sfloat = 111
        case r64g64Uint = 112
        case r64g64Sint = 113
        case r64g64Sfloat = 114
        case r64g64b64Uint = 115
        case r64g64b64Sint = 116
        case r64g64b64Sfloat = 117
        case r64g64b64a64Uint = 118
        case r64g64b64a64Sint = 119
        case r64g64b64a64Sfloat = 120
        case b10g11r11UfloatPack32 = 121
        case e5b9g9r9UfloatPack32 = 122
        case d16Unorm = 123
        case x8D24UnormPack32 = 124
        case d32Sfloat = 125
        case s8Uint = 126
        case d16UnormS8Uint = 127
        case d24UnormS8Uint = 128
        case d32SfloatS8Uint = 129
        case bc1RgbUnormBlock = 130
        case bc1RgbSrgbBlock = 131
        case bc1RgbaUnormBlock = 132
        case bc1RgbaSrgbBlock = 133
        case bc2UnormBlock = 134
        case bc2SrgbBlock = 135
        case bc3UnormBlock = 136
        case bc3SrgbBlock = 137
        case bc4UnormBlock = 138
        case bc4SnormBlock = 139
        case bc5UnormBlock = 140
        case bc5SnormBlock = 141
        case bc6hUfloatBlock = 142
        case bc6hSfloatBlock = 143
        case bc7UnormBlock = 144
        case bc7SrgbBlock = 145
        case etc2R8g8b8UnormBlock = 146
        case etc2R8g8b8SrgbBlock = 147
        case etc2R8g8b8a1UnormBlock = 148
        case etc2R8g8b8a1SrgbBlock = 149
        case etc2R8g8b8a8UnormBlock = 150
        case etc2R8g8b8a8SrgbBlock = 151
        case eacR11UnormBlock = 152
        case eacR11SnormBlock = 153
        case eacR11g11UnormBlock = 154
        case eacR11g11SnormBlock = 155
        case astc4x4UnormBlock = 156
        case astc4x4SrgbBlock = 157
        case astc5x4UnormBlock = 158
        case astc5x4SrgbBlock = 159
        case astc5x5UnormBlock = 160
        case astc5x5SrgbBlock = 161
        case astc6x5UnormBlock = 162
        case astc6x5SrgbBlock = 163
        case astc6x6UnormBlock = 164
        case astc6x6SrgbBlock = 165
        case astc8x5UnormBlock = 166
        case astc8x5SrgbBlock = 167
        case astc8x6UnormBlock = 168
        case astc8x6SrgbBlock = 169
        case astc8x8UnormBlock = 170
        case astc8x8SrgbBlock = 171
        case astc10x5UnormBlock = 172
        case astc10x5SrgbBlock = 173
        case astc10x6UnormBlock = 174
        case astc10x6SrgbBlock = 175
        case astc10x8UnormBlock = 176
        case astc10x8SrgbBlock = 177
        case astc10x10UnormBlock = 178
        case astc10x10SrgbBlock = 179
        case astc12x10UnormBlock = 180
        case astc12x10SrgbBlock = 181
        case astc12x12UnormBlock = 182
        case astc12x12SrgbBlock = 183
        case g8b8g8r8422Unorm = 184
        case b8g8r8g8422Unorm = 185
        case g8B8R83plane420Unorm = 186
        case g8B8r82plane420Unorm = 187
        case g8B8R83plane422Unorm = 188
        case g8B8r82plane422Unorm = 189
        case g8B8R83plane444Unorm = 190
        case r10x6UnormPack16 = 191
        case r10x6g10x6Unorm2pack16 = 192
        case r10x6g10x6b10x6a10x6Unorm4pack16 = 193
        case g10x6b10x6g10x6r10x6422Unorm4pack16 = 194
        case b10x6g10x6r10x6g10x6422Unorm4pack16 = 195
        case g10x6B10x6R10x63plane420Unorm3pack16 = 196
        case g10x6B10x6r10x62plane420Unorm3pack16 = 197
        case g10x6B10x6R10x63plane422Unorm3pack16 = 198
        case g10x6B10x6r10x62plane422Unorm3pack16 = 199
        case g10x6B10x6R10x63plane444Unorm3pack16 = 200
        case r12x4UnormPack16 = 201
        case r12x4g12x4Unorm2pack16 = 202
        case r12x4g12x4b12x4a12x4Unorm4pack16 = 203
        case g12x4b12x4g12x4r12x4422Unorm4pack16 = 204
        case b12x4g12x4r12x4g12x4422Unorm4pack16 = 205
        case g12x4B12x4R12x43plane420Unorm3pack16 = 206
        case g12x4B12x4r12x42plane420Unorm3pack16 = 207
        case g12x4B12x4R12x43plane422Unorm3pack16 = 208
        case g12x4B12x4r12x42plane422Unorm3pack16 = 209
        case g12x4B12x4R12x43plane444Unorm3pack16 = 210
        case g16b16g16r16422Unorm = 211
        case b16g16r16g16422Unorm = 212
        case g16B16R163plane420Unorm = 213
        case g16B16r162plane420Unorm = 214
        case g16B16R163plane422Unorm = 215
        case g16B16r162plane422Unorm = 216
        case g16B16R163plane444Unorm = 217
        case max = 218
    }
    public struct BarrierMask: OptionSet {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        public static let raster: Self = .init(rawValue: 1)
        public static let compute: Self = .init(rawValue: 2)
        public static let transfer: Self = .init(rawValue: 4)
        public static let allBarriers: Self = .init(rawValue: 7)
        public static let noBarrier: Self = .init(rawValue: 8)
    }
    public enum TextureType: UInt32 {
        case textureType1d = 0
        case textureType2D = 1
        case textureType3D = 2
        case cube = 3
        case textureType1dArray = 4
        case textureType2DArray = 5
        case cubeArray = 6
        case max = 7
    }
    public enum TextureSamples: UInt32 {
        case textureSamples1 = 0
        case textureSamples2 = 1
        case textureSamples4 = 2
        case textureSamples8 = 3
        case textureSamples16 = 4
        case textureSamples32 = 5
        case textureSamples64 = 6
        case max = 7
    }
    public struct TextureUsageBits: OptionSet {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        public static let samplingBit: Self = .init(rawValue: 1)
        public static let colorAttachmentBit: Self = .init(rawValue: 2)
        public static let depthStencilAttachmentBit: Self = .init(rawValue: 4)
        public static let storageBit: Self = .init(rawValue: 8)
        public static let storageAtomicBit: Self = .init(rawValue: 16)
        public static let cpuReadBit: Self = .init(rawValue: 32)
        public static let canUpdateBit: Self = .init(rawValue: 64)
        public static let canCopyFromBit: Self = .init(rawValue: 128)
        public static let canCopyToBit: Self = .init(rawValue: 256)
        public static let inputAttachmentBit: Self = .init(rawValue: 512)
    }
    public enum TextureSwizzle: UInt32 {
        case identity = 0
        case zero = 1
        case one = 2
        case r = 3
        case g = 4
        case b = 5
        case a = 6
        case max = 7
    }
    public enum TextureSliceType: UInt32 {
        case textureSlice2D = 0
        case cubemap = 1
        case textureSlice3D = 2
    }
    public enum SamplerFilter: UInt32 {
        case nearest = 0
        case linear = 1
    }
    public enum SamplerRepeatMode: UInt32 {
        case `repeat` = 0
        case mirroredRepeat = 1
        case clampToEdge = 2
        case clampToBorder = 3
        case mirrorClampToEdge = 4
        case max = 5
    }
    public enum SamplerBorderColor: UInt32 {
        case floatTransparentBlack = 0
        case intTransparentBlack = 1
        case floatOpaqueBlack = 2
        case intOpaqueBlack = 3
        case floatOpaqueWhite = 4
        case intOpaqueWhite = 5
        case max = 6
    }
    public enum VertexFrequency: UInt32 {
        case vertex = 0
        case instance = 1
    }
    public enum IndexBufferFormat: UInt32 {
        case uint16 = 0
        case uint32 = 1
    }
    public struct StorageBufferUsage: OptionSet {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        public static let storageBufferUsageDispatchIndirect: Self = .init(rawValue: 1)
    }
    public enum UniformType: UInt32 {
        case sampler = 0
        case samplerWithTexture = 1
        case texture = 2
        case image = 3
        case textureBuffer = 4
        case samplerWithTextureBuffer = 5
        case imageBuffer = 6
        case uniformBuffer = 7
        case storageBuffer = 8
        case inputAttachment = 9
        case max = 10
    }
    public enum RenderPrimitive: UInt32 {
        case points = 0
        case lines = 1
        case linesWithAdjacency = 2
        case linestrips = 3
        case linestripsWithAdjacency = 4
        case triangles = 5
        case trianglesWithAdjacency = 6
        case triangleStrips = 7
        case triangleStripsWithAjacency = 8
        case triangleStripsWithRestartIndex = 9
        case tesselationPatch = 10
        case max = 11
    }
    public enum PolygonCullMode: UInt32 {
        case disabled = 0
        case front = 1
        case back = 2
    }
    public enum PolygonFrontFace: UInt32 {
        case clockwise = 0
        case counterClockwise = 1
    }
    public enum StencilOperation: UInt32 {
        case keep = 0
        case zero = 1
        case replace = 2
        case incrementAndClamp = 3
        case decrementAndClamp = 4
        case invert = 5
        case incrementAndWrap = 6
        case decrementAndWrap = 7
        case max = 8
    }
    public enum CompareOperator: UInt32 {
        case never = 0
        case less = 1
        case equal = 2
        case lessOrEqual = 3
        case greater = 4
        case notEqual = 5
        case greaterOrEqual = 6
        case always = 7
        case max = 8
    }
    public enum LogicOperation: UInt32 {
        case clear = 0
        case and = 1
        case andReverse = 2
        case copy = 3
        case andInverted = 4
        case noOp = 5
        case xor = 6
        case or = 7
        case nor = 8
        case equivalent = 9
        case invert = 10
        case orReverse = 11
        case copyInverted = 12
        case orInverted = 13
        case nand = 14
        case set = 15
        case max = 16
    }
    public enum BlendFactor: UInt32 {
        case zero = 0
        case one = 1
        case srcColor = 2
        case oneMinusSrcColor = 3
        case dstColor = 4
        case oneMinusDstColor = 5
        case srcAlpha = 6
        case oneMinusSrcAlpha = 7
        case dstAlpha = 8
        case oneMinusDstAlpha = 9
        case constantColor = 10
        case oneMinusConstantColor = 11
        case constantAlpha = 12
        case oneMinusConstantAlpha = 13
        case srcAlphaSaturate = 14
        case src1Color = 15
        case oneMinusSrc1Color = 16
        case src1Alpha = 17
        case oneMinusSrc1Alpha = 18
        case max = 19
    }
    public enum BlendOperation: UInt32 {
        case add = 0
        case subtract = 1
        case reverseSubtract = 2
        case minimum = 3
        case maximum = 4
        case max = 5
    }
    public struct PipelineDynamicStateFlags: OptionSet {
        public let rawValue: UInt32

        public init(rawValue: UInt32) {
            self.rawValue = rawValue
        }

        public static let lineWidth: Self = .init(rawValue: 1)
        public static let depthBias: Self = .init(rawValue: 2)
        public static let blendConstants: Self = .init(rawValue: 4)
        public static let depthBounds: Self = .init(rawValue: 8)
        public static let stencilCompareMask: Self = .init(rawValue: 16)
        public static let stencilWriteMask: Self = .init(rawValue: 32)
        public static let stencilReference: Self = .init(rawValue: 64)
    }
    public enum InitialAction: UInt32 {
        case clear = 0
        case clearRegion = 1
        case clearRegionContinue = 2
        case keep = 3
        case drop = 4
        case `continue` = 5
        case max = 6
    }
    public enum FinalAction: UInt32 {
        case read = 0
        case discard = 1
        case `continue` = 2
        case max = 3
    }
    public enum ShaderStage: UInt32 {
        case vertex = 0
        case fragment = 1
        case tesselationControl = 2
        case tesselationEvaluation = 3
        case compute = 4
        case max = 5
        public static let vertexBit: Self = .fragment
        public static let fragmentBit: Self = .tesselationControl
        public static let tesselationControlBit: Self = .compute
        case tesselationEvaluationBit = 8
        case computeBit = 16
    }
    public enum ShaderLanguage: UInt32 {
        case glsl = 0
        case hlsl = 1
    }
    public enum PipelineSpecializationConstantType: UInt32 {
        case bool = 0
        case int = 1
        case float = 2
    }
    public enum Limit: UInt32 {
        case maxBoundUniformSets = 0
        case maxFramebufferColorAttachments = 1
        case maxTexturesPerUniformSet = 2
        case maxSamplersPerUniformSet = 3
        case maxStorageBuffersPerUniformSet = 4
        case maxStorageImagesPerUniformSet = 5
        case maxUniformBuffersPerUniformSet = 6
        case maxDrawIndexedIndex = 7
        case maxFramebufferHeight = 8
        case maxFramebufferWidth = 9
        case maxTextureArrayLayers = 10
        case maxTextureSize1d = 11
        case maxTextureSize2D = 12
        case maxTextureSize3D = 13
        case maxTextureSizeCube = 14
        case maxTexturesPerShaderStage = 15
        case maxSamplersPerShaderStage = 16
        case maxStorageBuffersPerShaderStage = 17
        case maxStorageImagesPerShaderStage = 18
        case maxUniformBuffersPerShaderStage = 19
        case maxPushConstantSize = 20
        case maxUniformBufferSize = 21
        case maxVertexInputAttributeOffset = 22
        case maxVertexInputAttributes = 23
        case maxVertexInputBindings = 24
        case maxVertexInputBindingStride = 25
        case minUniformBufferOffsetAlignment = 26
        case maxComputeSharedMemorySize = 27
        case maxComputeWorkgroupCountX = 28
        case maxComputeWorkgroupCountY = 29
        case maxComputeWorkgroupCountZ = 30
        case maxComputeWorkgroupInvocations = 31
        case maxComputeWorkgroupSizeX = 32
        case maxComputeWorkgroupSizeY = 33
        case maxComputeWorkgroupSizeZ = 34
        case maxViewportDimensionsX = 35
        case maxViewportDimensionsY = 36
    }
    public enum MemoryType: UInt32 {
        case textures = 0
        case buffers = 1
        case total = 2
    }

    private static var __method_binding_texture_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "texture_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3011278298)!
        }
        }
    }()
    public func textureCreate(format: Godot.RDTextureFormat?, view: Godot.RDTextureView?, data: Godot.GodotTypedArray<Godot.PackedByteArray> = []) -> Godot.RID {
        let __temporary = Godot.RID()
        format.withUnsafeRawPointer { (__ptr_format) in
            withUnsafePointer(to: __ptr_format) { (_ptr___ptr_format) in
                view.withUnsafeRawPointer { (__ptr_view) in
                    withUnsafePointer(to: __ptr_view) { (_ptr___ptr_view) in
                        data.withUnsafeRawPointer { (__ptr_data) in
                            withUnsafeArgumentPackPointer(_ptr___ptr_format, _ptr___ptr_view, __ptr_data) { (__accessPtr) in
                                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_texture_create,
                                            __ptr_self,
                                            __accessPtr,
                                            __ptr___temporary
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_texture_create_shared: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "texture_create_shared").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3178156134)!
        }
        }
    }()
    public func textureCreateShared(view: Godot.RDTextureView?, withTexture texture: Godot.RID) -> Godot.RID {
        let __temporary = Godot.RID()
        view.withUnsafeRawPointer { (__ptr_view) in
            withUnsafePointer(to: __ptr_view) { (_ptr___ptr_view) in
                texture.withUnsafeRawPointer { (__ptr_texture) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_view, __ptr_texture) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_texture_create_shared,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_texture_create_shared_from_slice: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "texture_create_shared_from_slice").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 864132525)!
        }
        }
    }()
    public func textureCreateSharedFromSlice(view: Godot.RDTextureView?, withTexture texture: Godot.RID, layer: UInt32, mipmap: UInt32, mipmaps: UInt32 = 1, sliceType: Godot.RenderingDevice.TextureSliceType = RenderingDevice.TextureSliceType(rawValue: 0)!) -> Godot.RID {
        let __temporary = Godot.RID()
        view.withUnsafeRawPointer { (__ptr_view) in
            withUnsafePointer(to: __ptr_view) { (_ptr___ptr_view) in
                texture.withUnsafeRawPointer { (__ptr_texture) in
                    withUnsafePointer(to: layer) { (__ptr_layer) in
                        withUnsafePointer(to: mipmap) { (__ptr_mipmap) in
                            withUnsafePointer(to: mipmaps) { (__ptr_mipmaps) in
                                withUnsafePointer(to: sliceType) { (__ptr_sliceType) in
                                    withUnsafeArgumentPackPointer(_ptr___ptr_view, __ptr_texture, __ptr_layer, __ptr_mipmap, __ptr_mipmaps, __ptr_sliceType) { (__accessPtr) in
                                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                                gdextension_interface_object_method_bind_ptrcall(
                                                    Self.__method_binding_texture_create_shared_from_slice,
                                                    __ptr_self,
                                                    __accessPtr,
                                                    __ptr___temporary
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
        }
        return __temporary
    }

    private static var __method_binding_texture_update: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "texture_update").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2736912341)!
        }
        }
    }()
    public func textureUpdate(texture: Godot.RID, layer: UInt32, data: Godot.PackedByteArray, postBarrier: Godot.RenderingDevice.BarrierMask = RenderingDevice.BarrierMask(rawValue: 7)) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafePointer(to: layer) { (__ptr_layer) in
                data.withUnsafeRawPointer { (__ptr_data) in
                    withUnsafePointer(to: postBarrier) { (__ptr_postBarrier) in
                        withUnsafeArgumentPackPointer(__ptr_texture, __ptr_layer, __ptr_data, __ptr_postBarrier) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_texture_update,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_texture_get_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "texture_get_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1859412099)!
        }
        }
    }()
    public func textureGetData(texture: Godot.RID, layer: UInt32) -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafePointer(to: layer) { (__ptr_layer) in
                withUnsafeArgumentPackPointer(__ptr_texture, __ptr_layer) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_texture_get_data,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_texture_is_format_supported_for_usage: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "texture_is_format_supported_for_usage").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2592520478)!
        }
        }
    }()
    public func textureIsFormatSupportedForUsage(format: Godot.RenderingDevice.DataFormat, usageFlags: Godot.RenderingDevice.TextureUsageBits) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: format) { (__ptr_format) in
            withUnsafePointer(to: usageFlags) { (__ptr_usageFlags) in
                withUnsafeArgumentPackPointer(__ptr_format, __ptr_usageFlags) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_texture_is_format_supported_for_usage,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_texture_is_shared: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "texture_is_shared").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3521089500)!
        }
        }
    }()
    public func textureIsShared(texture: Godot.RID) -> Bool {
        var __temporary = Bool()
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafeArgumentPackPointer(__ptr_texture) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_texture_is_shared,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_texture_is_valid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "texture_is_valid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3521089500)!
        }
        }
    }()
    public func textureIsValid(texture: Godot.RID) -> Bool {
        var __temporary = Bool()
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafeArgumentPackPointer(__ptr_texture) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_texture_is_valid,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_texture_copy: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "texture_copy").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3741367532)!
        }
        }
    }()
    public func textureCopy(fromTexture: Godot.RID, toTexture: Godot.RID, fromPos: Godot.Vector3, toPos: Godot.Vector3, size: Godot.Vector3, srcMipmap: UInt32, dstMipmap: UInt32, srcLayer: UInt32, dstLayer: UInt32, postBarrier: Godot.RenderingDevice.BarrierMask = RenderingDevice.BarrierMask(rawValue: 7)) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        fromTexture.withUnsafeRawPointer { (__ptr_fromTexture) in
            toTexture.withUnsafeRawPointer { (__ptr_toTexture) in
                withUnsafePointer(to: fromPos) { (__ptr_fromPos) in
                    withUnsafePointer(to: toPos) { (__ptr_toPos) in
                        withUnsafePointer(to: size) { (__ptr_size) in
                            withUnsafePointer(to: srcMipmap) { (__ptr_srcMipmap) in
                                withUnsafePointer(to: dstMipmap) { (__ptr_dstMipmap) in
                                    withUnsafePointer(to: srcLayer) { (__ptr_srcLayer) in
                                        withUnsafePointer(to: dstLayer) { (__ptr_dstLayer) in
                                            withUnsafePointer(to: postBarrier) { (__ptr_postBarrier) in
                                                withUnsafeArgumentPackPointer(__ptr_fromTexture, __ptr_toTexture, __ptr_fromPos, __ptr_toPos, __ptr_size, __ptr_srcMipmap, __ptr_dstMipmap, __ptr_srcLayer, __ptr_dstLayer, __ptr_postBarrier) { (__accessPtr) in
                                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                                            gdextension_interface_object_method_bind_ptrcall(
                                                                Self.__method_binding_texture_copy,
                                                                __ptr_self,
                                                                __accessPtr,
                                                                __ptr___temporary
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
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_texture_clear: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "texture_clear").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3423681478)!
        }
        }
    }()
    public func textureClear(texture: Godot.RID, color: Godot.Color, baseMipmap: UInt32, mipmapCount: UInt32, baseLayer: UInt32, layerCount: UInt32, postBarrier: Godot.RenderingDevice.BarrierMask = RenderingDevice.BarrierMask(rawValue: 7)) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafePointer(to: color) { (__ptr_color) in
                withUnsafePointer(to: baseMipmap) { (__ptr_baseMipmap) in
                    withUnsafePointer(to: mipmapCount) { (__ptr_mipmapCount) in
                        withUnsafePointer(to: baseLayer) { (__ptr_baseLayer) in
                            withUnsafePointer(to: layerCount) { (__ptr_layerCount) in
                                withUnsafePointer(to: postBarrier) { (__ptr_postBarrier) in
                                    withUnsafeArgumentPackPointer(__ptr_texture, __ptr_color, __ptr_baseMipmap, __ptr_mipmapCount, __ptr_baseLayer, __ptr_layerCount, __ptr_postBarrier) { (__accessPtr) in
                                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                                gdextension_interface_object_method_bind_ptrcall(
                                                    Self.__method_binding_texture_clear,
                                                    __ptr_self,
                                                    __accessPtr,
                                                    __ptr___temporary
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
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_texture_resolve_multisample: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "texture_resolve_multisample").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2126834943)!
        }
        }
    }()
    public func textureResolveMultisample(fromTexture: Godot.RID, toTexture: Godot.RID, postBarrier: Godot.RenderingDevice.BarrierMask = RenderingDevice.BarrierMask(rawValue: 7)) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        fromTexture.withUnsafeRawPointer { (__ptr_fromTexture) in
            toTexture.withUnsafeRawPointer { (__ptr_toTexture) in
                withUnsafePointer(to: postBarrier) { (__ptr_postBarrier) in
                    withUnsafeArgumentPackPointer(__ptr_fromTexture, __ptr_toTexture, __ptr_postBarrier) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_texture_resolve_multisample,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_texture_get_native_handle: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "texture_get_native_handle").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3917799429)!
        }
        }
    }()
    public func textureGetNativeHandle(texture: Godot.RID) -> UInt64 {
        var __temporary = UInt64()
        texture.withUnsafeRawPointer { (__ptr_texture) in
            withUnsafeArgumentPackPointer(__ptr_texture) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_texture_get_native_handle,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_framebuffer_format_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "framebuffer_format_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2635475316)!
        }
        }
    }()
    public func framebufferFormatCreate(attachments: Godot.GodotTypedArray<Godot.RDAttachmentFormat?>, viewCount: UInt32 = 1) -> Int64 {
        var __temporary = Int64()
        attachments.withUnsafeRawPointer { (__ptr_attachments) in
            withUnsafePointer(to: viewCount) { (__ptr_viewCount) in
                withUnsafeArgumentPackPointer(__ptr_attachments, __ptr_viewCount) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_framebuffer_format_create,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_framebuffer_format_create_multipass: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "framebuffer_format_create_multipass").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1992489524)!
        }
        }
    }()
    public func framebufferFormatCreateMultipass(attachments: Godot.GodotTypedArray<Godot.RDAttachmentFormat?>, passes: Godot.GodotTypedArray<Godot.RDFramebufferPass?>, viewCount: UInt32 = 1) -> Int64 {
        var __temporary = Int64()
        attachments.withUnsafeRawPointer { (__ptr_attachments) in
            passes.withUnsafeRawPointer { (__ptr_passes) in
                withUnsafePointer(to: viewCount) { (__ptr_viewCount) in
                    withUnsafeArgumentPackPointer(__ptr_attachments, __ptr_passes, __ptr_viewCount) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_framebuffer_format_create_multipass,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_framebuffer_format_create_empty: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "framebuffer_format_create_empty").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 555930169)!
        }
        }
    }()
    public func framebufferFormatCreateEmpty(samples: Godot.RenderingDevice.TextureSamples = RenderingDevice.TextureSamples(rawValue: 0)!) -> Int64 {
        var __temporary = Int64()
        withUnsafePointer(to: samples) { (__ptr_samples) in
            withUnsafeArgumentPackPointer(__ptr_samples) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_framebuffer_format_create_empty,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_framebuffer_format_get_texture_samples: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "framebuffer_format_get_texture_samples").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1036806638)!
        }
        }
    }()
    public func framebufferFormatGetTextureSamples(format: Int64, renderPass: UInt32 = 0) -> Godot.RenderingDevice.TextureSamples {
        var __temporary = Godot.RenderingDevice.TextureSamples.RawValue(0)
        withUnsafePointer(to: format) { (__ptr_format) in
            withUnsafePointer(to: renderPass) { (__ptr_renderPass) in
                withUnsafeArgumentPackPointer(__ptr_format, __ptr_renderPass) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_framebuffer_format_get_texture_samples,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return Godot.RenderingDevice.TextureSamples(rawValue: __temporary)!
    }

    private static var __method_binding_framebuffer_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "framebuffer_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1884747791)!
        }
        }
    }()
    public func framebufferCreate(textures: Godot.GodotTypedArray<Godot.RID>, validateWithFormat: Int64 = -1, viewCount: UInt32 = 1) -> Godot.RID {
        let __temporary = Godot.RID()
        textures.withUnsafeRawPointer { (__ptr_textures) in
            withUnsafePointer(to: validateWithFormat) { (__ptr_validateWithFormat) in
                withUnsafePointer(to: viewCount) { (__ptr_viewCount) in
                    withUnsafeArgumentPackPointer(__ptr_textures, __ptr_validateWithFormat, __ptr_viewCount) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_framebuffer_create,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_framebuffer_create_multipass: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "framebuffer_create_multipass").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 452534725)!
        }
        }
    }()
    public func framebufferCreateMultipass(textures: Godot.GodotTypedArray<Godot.RID>, passes: Godot.GodotTypedArray<Godot.RDFramebufferPass?>, validateWithFormat: Int64 = -1, viewCount: UInt32 = 1) -> Godot.RID {
        let __temporary = Godot.RID()
        textures.withUnsafeRawPointer { (__ptr_textures) in
            passes.withUnsafeRawPointer { (__ptr_passes) in
                withUnsafePointer(to: validateWithFormat) { (__ptr_validateWithFormat) in
                    withUnsafePointer(to: viewCount) { (__ptr_viewCount) in
                        withUnsafeArgumentPackPointer(__ptr_textures, __ptr_passes, __ptr_validateWithFormat, __ptr_viewCount) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_framebuffer_create_multipass,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_framebuffer_create_empty: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "framebuffer_create_empty").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 382373098)!
        }
        }
    }()
    public func framebufferCreateEmpty(size: Godot.Vector2i, samples: Godot.RenderingDevice.TextureSamples = RenderingDevice.TextureSamples(rawValue: 0)!, validateWithFormat: Int64 = -1) -> Godot.RID {
        let __temporary = Godot.RID()
        withUnsafePointer(to: size) { (__ptr_size) in
            withUnsafePointer(to: samples) { (__ptr_samples) in
                withUnsafePointer(to: validateWithFormat) { (__ptr_validateWithFormat) in
                    withUnsafeArgumentPackPointer(__ptr_size, __ptr_samples, __ptr_validateWithFormat) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_framebuffer_create_empty,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_framebuffer_get_format: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "framebuffer_get_format").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3917799429)!
        }
        }
    }()
    public func framebufferGetFormat(framebuffer: Godot.RID) -> Int64 {
        var __temporary = Int64()
        framebuffer.withUnsafeRawPointer { (__ptr_framebuffer) in
            withUnsafeArgumentPackPointer(__ptr_framebuffer) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_framebuffer_get_format,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_framebuffer_is_valid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "framebuffer_is_valid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4155700596)!
        }
        }
    }()
    public func framebufferIsValid(framebuffer: Godot.RID) -> Bool {
        var __temporary = Bool()
        framebuffer.withUnsafeRawPointer { (__ptr_framebuffer) in
            withUnsafeArgumentPackPointer(__ptr_framebuffer) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_framebuffer_is_valid,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_sampler_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "sampler_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2327892535)!
        }
        }
    }()
    public func samplerCreate(state: Godot.RDSamplerState?) -> Godot.RID {
        let __temporary = Godot.RID()
        state.withUnsafeRawPointer { (__ptr_state) in
            withUnsafePointer(to: __ptr_state) { (_ptr___ptr_state) in
                withUnsafeArgumentPackPointer(_ptr___ptr_state) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_sampler_create,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_sampler_is_format_supported_for_filter: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "sampler_is_format_supported_for_filter").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2247922238)!
        }
        }
    }()
    public func samplerIsFormatSupportedForFilter(format: Godot.RenderingDevice.DataFormat, samplerFilter: Godot.RenderingDevice.SamplerFilter) -> Bool {
        var __temporary = Bool()
        withUnsafePointer(to: format) { (__ptr_format) in
            withUnsafePointer(to: samplerFilter) { (__ptr_samplerFilter) in
                withUnsafeArgumentPackPointer(__ptr_format, __ptr_samplerFilter) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_sampler_is_format_supported_for_filter,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_vertex_buffer_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "vertex_buffer_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3491282828)!
        }
        }
    }()
    public func vertexBufferCreate(sizeBytes: UInt32, data: Godot.PackedByteArray = PackedByteArray(), useAsStorage: Bool = false) -> Godot.RID {
        let __temporary = Godot.RID()
        withUnsafePointer(to: sizeBytes) { (__ptr_sizeBytes) in
            data.withUnsafeRawPointer { (__ptr_data) in
                withUnsafePointer(to: useAsStorage) { (__ptr_useAsStorage) in
                    withUnsafeArgumentPackPointer(__ptr_sizeBytes, __ptr_data, __ptr_useAsStorage) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_vertex_buffer_create,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_vertex_format_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "vertex_format_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1242678479)!
        }
        }
    }()
    public func vertexFormatCreate(vertexDescriptions: Godot.GodotTypedArray<Godot.RDVertexAttribute?>) -> Int64 {
        var __temporary = Int64()
        vertexDescriptions.withUnsafeRawPointer { (__ptr_vertexDescriptions) in
            withUnsafeArgumentPackPointer(__ptr_vertexDescriptions) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_vertex_format_create,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_vertex_array_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "vertex_array_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3137892244)!
        }
        }
    }()
    public func vertexArrayCreate(vertexCount: UInt32, vertexFormat: Int64, srcBuffers: Godot.GodotTypedArray<Godot.RID>, offsets: Godot.PackedInt64Array = PackedInt64Array()) -> Godot.RID {
        let __temporary = Godot.RID()
        withUnsafePointer(to: vertexCount) { (__ptr_vertexCount) in
            withUnsafePointer(to: vertexFormat) { (__ptr_vertexFormat) in
                srcBuffers.withUnsafeRawPointer { (__ptr_srcBuffers) in
                    offsets.withUnsafeRawPointer { (__ptr_offsets) in
                        withUnsafeArgumentPackPointer(__ptr_vertexCount, __ptr_vertexFormat, __ptr_srcBuffers, __ptr_offsets) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_vertex_array_create,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_index_buffer_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "index_buffer_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 975915977)!
        }
        }
    }()
    public func indexBufferCreate(sizeIndices: UInt32, format: Godot.RenderingDevice.IndexBufferFormat, data: Godot.PackedByteArray = PackedByteArray(), useRestartIndices: Bool = false) -> Godot.RID {
        let __temporary = Godot.RID()
        withUnsafePointer(to: sizeIndices) { (__ptr_sizeIndices) in
            withUnsafePointer(to: format) { (__ptr_format) in
                data.withUnsafeRawPointer { (__ptr_data) in
                    withUnsafePointer(to: useRestartIndices) { (__ptr_useRestartIndices) in
                        withUnsafeArgumentPackPointer(__ptr_sizeIndices, __ptr_format, __ptr_data, __ptr_useRestartIndices) { (__accessPtr) in
                            __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_index_buffer_create,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_index_array_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "index_array_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2256026069)!
        }
        }
    }()
    public func indexArrayCreate(indexBuffer: Godot.RID, indexOffset: UInt32, indexCount: UInt32) -> Godot.RID {
        let __temporary = Godot.RID()
        indexBuffer.withUnsafeRawPointer { (__ptr_indexBuffer) in
            withUnsafePointer(to: indexOffset) { (__ptr_indexOffset) in
                withUnsafePointer(to: indexCount) { (__ptr_indexCount) in
                    withUnsafeArgumentPackPointer(__ptr_indexBuffer, __ptr_indexOffset, __ptr_indexCount) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_index_array_create,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_shader_compile_spirv_from_source: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "shader_compile_spirv_from_source").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3459523685)!
        }
        }
    }()
    public func shaderCompileSpirvFromSource(shaderSource: Godot.RDShaderSource?, allowCache: Bool = true) -> Godot.RDShaderSPIRV? {
        var __temporary: GDExtensionObjectPtr!
        shaderSource.withUnsafeRawPointer { (__ptr_shaderSource) in
            withUnsafePointer(to: __ptr_shaderSource) { (_ptr___ptr_shaderSource) in
                withUnsafePointer(to: allowCache) { (__ptr_allowCache) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_shaderSource, __ptr_allowCache) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_shader_compile_spirv_from_source,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return Godot.RDShaderSPIRV.retreivedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_shader_compile_binary_from_spirv: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "shader_compile_binary_from_spirv").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1395027180)!
        }
        }
    }()
    public func shaderCompileBinaryFromSpirv(spirvData: Godot.RDShaderSPIRV?, name: Godot.GodotString = "") -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        spirvData.withUnsafeRawPointer { (__ptr_spirvData) in
            withUnsafePointer(to: __ptr_spirvData) { (_ptr___ptr_spirvData) in
                name.withUnsafeRawPointer { (__ptr_name) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_spirvData, __ptr_name) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_shader_compile_binary_from_spirv,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_shader_create_from_spirv: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "shader_create_from_spirv").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3297482566)!
        }
        }
    }()
    public func shaderCreateFromSpirv(spirvData: Godot.RDShaderSPIRV?, name: Godot.GodotString = "") -> Godot.RID {
        let __temporary = Godot.RID()
        spirvData.withUnsafeRawPointer { (__ptr_spirvData) in
            withUnsafePointer(to: __ptr_spirvData) { (_ptr___ptr_spirvData) in
                name.withUnsafeRawPointer { (__ptr_name) in
                    withUnsafeArgumentPackPointer(_ptr___ptr_spirvData, __ptr_name) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_shader_create_from_spirv,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_shader_create_from_bytecode: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "shader_create_from_bytecode").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3049171473)!
        }
        }
    }()
    public func shaderCreateFromBytecode(binaryData: Godot.PackedByteArray) -> Godot.RID {
        let __temporary = Godot.RID()
        binaryData.withUnsafeRawPointer { (__ptr_binaryData) in
            withUnsafeArgumentPackPointer(__ptr_binaryData) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shader_create_from_bytecode,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_shader_get_vertex_input_attribute_mask: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "shader_get_vertex_input_attribute_mask").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3917799429)!
        }
        }
    }()
    public func shaderGetVertexInputAttributeMask(shader: Godot.RID) -> UInt32 {
        var __temporary = UInt32()
        shader.withUnsafeRawPointer { (__ptr_shader) in
            withUnsafeArgumentPackPointer(__ptr_shader) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_shader_get_vertex_input_attribute_mask,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_uniform_buffer_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "uniform_buffer_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1453158401)!
        }
        }
    }()
    public func uniformBufferCreate(sizeBytes: UInt32, data: Godot.PackedByteArray = PackedByteArray()) -> Godot.RID {
        let __temporary = Godot.RID()
        withUnsafePointer(to: sizeBytes) { (__ptr_sizeBytes) in
            data.withUnsafeRawPointer { (__ptr_data) in
                withUnsafeArgumentPackPointer(__ptr_sizeBytes, __ptr_data) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_uniform_buffer_create,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_storage_buffer_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "storage_buffer_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1173156076)!
        }
        }
    }()
    public func storageBufferCreate(sizeBytes: UInt32, data: Godot.PackedByteArray = PackedByteArray(), usage: Godot.RenderingDevice.StorageBufferUsage = RenderingDevice.StorageBufferUsage(rawValue: 0)) -> Godot.RID {
        let __temporary = Godot.RID()
        withUnsafePointer(to: sizeBytes) { (__ptr_sizeBytes) in
            data.withUnsafeRawPointer { (__ptr_data) in
                withUnsafePointer(to: usage) { (__ptr_usage) in
                    withUnsafeArgumentPackPointer(__ptr_sizeBytes, __ptr_data, __ptr_usage) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_storage_buffer_create,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_texture_buffer_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "texture_buffer_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2344087557)!
        }
        }
    }()
    public func textureBufferCreate(sizeBytes: UInt32, format: Godot.RenderingDevice.DataFormat, data: Godot.PackedByteArray = PackedByteArray()) -> Godot.RID {
        let __temporary = Godot.RID()
        withUnsafePointer(to: sizeBytes) { (__ptr_sizeBytes) in
            withUnsafePointer(to: format) { (__ptr_format) in
                data.withUnsafeRawPointer { (__ptr_data) in
                    withUnsafeArgumentPackPointer(__ptr_sizeBytes, __ptr_format, __ptr_data) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_texture_buffer_create,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_uniform_set_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "uniform_set_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2280795797)!
        }
        }
    }()
    public func uniformSetCreate(uniforms: Godot.GodotTypedArray<Godot.RDUniform?>, shader: Godot.RID, shaderSet: UInt32) -> Godot.RID {
        let __temporary = Godot.RID()
        uniforms.withUnsafeRawPointer { (__ptr_uniforms) in
            shader.withUnsafeRawPointer { (__ptr_shader) in
                withUnsafePointer(to: shaderSet) { (__ptr_shaderSet) in
                    withUnsafeArgumentPackPointer(__ptr_uniforms, __ptr_shader, __ptr_shaderSet) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_uniform_set_create,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_uniform_set_is_valid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "uniform_set_is_valid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3521089500)!
        }
        }
    }()
    public func uniformSetIsValid(uniformSet: Godot.RID) -> Bool {
        var __temporary = Bool()
        uniformSet.withUnsafeRawPointer { (__ptr_uniformSet) in
            withUnsafeArgumentPackPointer(__ptr_uniformSet) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_uniform_set_is_valid,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_buffer_update: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "buffer_update").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 652628289)!
        }
        }
    }()
    public func bufferUpdate(buffer: Godot.RID, offset: UInt32, sizeBytes: UInt32, data: Godot.PackedByteArray, postBarrier: Godot.RenderingDevice.BarrierMask = RenderingDevice.BarrierMask(rawValue: 7)) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        buffer.withUnsafeRawPointer { (__ptr_buffer) in
            withUnsafePointer(to: offset) { (__ptr_offset) in
                withUnsafePointer(to: sizeBytes) { (__ptr_sizeBytes) in
                    data.withUnsafeRawPointer { (__ptr_data) in
                        withUnsafePointer(to: postBarrier) { (__ptr_postBarrier) in
                            withUnsafeArgumentPackPointer(__ptr_buffer, __ptr_offset, __ptr_sizeBytes, __ptr_data, __ptr_postBarrier) { (__accessPtr) in
                                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                    `self`.withUnsafeRawPointer { (__ptr_self) in
                                        gdextension_interface_object_method_bind_ptrcall(
                                            Self.__method_binding_buffer_update,
                                            __ptr_self,
                                            __accessPtr,
                                            __ptr___temporary
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_buffer_clear: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "buffer_clear").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1645170096)!
        }
        }
    }()
    public func bufferClear(buffer: Godot.RID, offset: UInt32, sizeBytes: UInt32, postBarrier: Godot.RenderingDevice.BarrierMask = RenderingDevice.BarrierMask(rawValue: 7)) -> Godot.ErrorType {
        var __temporary = Godot.ErrorType.RawValue(0)
        buffer.withUnsafeRawPointer { (__ptr_buffer) in
            withUnsafePointer(to: offset) { (__ptr_offset) in
                withUnsafePointer(to: sizeBytes) { (__ptr_sizeBytes) in
                    withUnsafePointer(to: postBarrier) { (__ptr_postBarrier) in
                        withUnsafeArgumentPackPointer(__ptr_buffer, __ptr_offset, __ptr_sizeBytes, __ptr_postBarrier) { (__accessPtr) in
                            withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                `self`.withUnsafeRawPointer { (__ptr_self) in
                                    gdextension_interface_object_method_bind_ptrcall(
                                        Self.__method_binding_buffer_clear,
                                        __ptr_self,
                                        __accessPtr,
                                        __ptr___temporary
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        return Godot.ErrorType(rawValue: __temporary)!
    }

    private static var __method_binding_buffer_get_data: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "buffer_get_data").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 125363422)!
        }
        }
    }()
    public func bufferGetData(buffer: Godot.RID, offsetBytes: UInt32 = 0, sizeBytes: UInt32 = 0) -> Godot.PackedByteArray {
        let __temporary = Godot.PackedByteArray()
        buffer.withUnsafeRawPointer { (__ptr_buffer) in
            withUnsafePointer(to: offsetBytes) { (__ptr_offsetBytes) in
                withUnsafePointer(to: sizeBytes) { (__ptr_sizeBytes) in
                    withUnsafeArgumentPackPointer(__ptr_buffer, __ptr_offsetBytes, __ptr_sizeBytes) { (__accessPtr) in
                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_buffer_get_data,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_render_pipeline_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "render_pipeline_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2911419500)!
        }
        }
    }()
    public func renderPipelineCreate(shader: Godot.RID, framebufferFormat: Int64, vertexFormat: Int64, primitive: Godot.RenderingDevice.RenderPrimitive, rasterizationState: Godot.RDPipelineRasterizationState?, multisampleState: Godot.RDPipelineMultisampleState?, stencilState: Godot.RDPipelineDepthStencilState?, colorBlendState: Godot.RDPipelineColorBlendState?, dynamicStateFlags: Godot.RenderingDevice.PipelineDynamicStateFlags = RenderingDevice.PipelineDynamicStateFlags(rawValue: 0), forRenderPass renderPass: UInt32 = 0, specializationConstants: Godot.GodotTypedArray<Godot.RDPipelineSpecializationConstant?> = []) -> Godot.RID {
        let __temporary = Godot.RID()
        shader.withUnsafeRawPointer { (__ptr_shader) in
            withUnsafePointer(to: framebufferFormat) { (__ptr_framebufferFormat) in
                withUnsafePointer(to: vertexFormat) { (__ptr_vertexFormat) in
                    withUnsafePointer(to: primitive) { (__ptr_primitive) in
                        rasterizationState.withUnsafeRawPointer { (__ptr_rasterizationState) in
                            withUnsafePointer(to: __ptr_rasterizationState) { (_ptr___ptr_rasterizationState) in
                                multisampleState.withUnsafeRawPointer { (__ptr_multisampleState) in
                                    withUnsafePointer(to: __ptr_multisampleState) { (_ptr___ptr_multisampleState) in
                                        stencilState.withUnsafeRawPointer { (__ptr_stencilState) in
                                            withUnsafePointer(to: __ptr_stencilState) { (_ptr___ptr_stencilState) in
                                                colorBlendState.withUnsafeRawPointer { (__ptr_colorBlendState) in
                                                    withUnsafePointer(to: __ptr_colorBlendState) { (_ptr___ptr_colorBlendState) in
                                                        withUnsafePointer(to: dynamicStateFlags) { (__ptr_dynamicStateFlags) in
                                                            withUnsafePointer(to: renderPass) { (__ptr_renderPass) in
                                                                specializationConstants.withUnsafeRawPointer { (__ptr_specializationConstants) in
                                                                    withUnsafeArgumentPackPointer(__ptr_shader, __ptr_framebufferFormat, __ptr_vertexFormat, __ptr_primitive, _ptr___ptr_rasterizationState, _ptr___ptr_multisampleState, _ptr___ptr_stencilState, _ptr___ptr_colorBlendState, __ptr_dynamicStateFlags, __ptr_renderPass, __ptr_specializationConstants) { (__accessPtr) in
                                                                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                                                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                                                                gdextension_interface_object_method_bind_ptrcall(
                                                                                    Self.__method_binding_render_pipeline_create,
                                                                                    __ptr_self,
                                                                                    __accessPtr,
                                                                                    __ptr___temporary
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
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_render_pipeline_is_valid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "render_pipeline_is_valid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3521089500)!
        }
        }
    }()
    public func renderPipelineIsValid(renderPipeline: Godot.RID) -> Bool {
        var __temporary = Bool()
        renderPipeline.withUnsafeRawPointer { (__ptr_renderPipeline) in
            withUnsafeArgumentPackPointer(__ptr_renderPipeline) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_render_pipeline_is_valid,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_compute_pipeline_create: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "compute_pipeline_create").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 403593840)!
        }
        }
    }()
    public func computePipelineCreate(shader: Godot.RID, specializationConstants: Godot.GodotTypedArray<Godot.RDPipelineSpecializationConstant?> = []) -> Godot.RID {
        let __temporary = Godot.RID()
        shader.withUnsafeRawPointer { (__ptr_shader) in
            specializationConstants.withUnsafeRawPointer { (__ptr_specializationConstants) in
                withUnsafeArgumentPackPointer(__ptr_shader, __ptr_specializationConstants) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_compute_pipeline_create,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_compute_pipeline_is_valid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "compute_pipeline_is_valid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3521089500)!
        }
        }
    }()
    public func computePipelineIsValid(computePipeline: Godot.RID) -> Bool {
        var __temporary = Bool()
        computePipeline.withUnsafeRawPointer { (__ptr_computePipeline) in
            withUnsafeArgumentPackPointer(__ptr_computePipeline) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_compute_pipeline_is_valid,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_screen_get_width: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "screen_get_width").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()
    public func screenGetWidth(screen: Int32 = 0) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: screen) { (__ptr_screen) in
            withUnsafeArgumentPackPointer(__ptr_screen) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_screen_get_width,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_screen_get_height: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "screen_get_height").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1591665591)!
        }
        }
    }()
    public func screenGetHeight(screen: Int32 = 0) -> Int32 {
        var __temporary = Int32()
        withUnsafePointer(to: screen) { (__ptr_screen) in
            withUnsafeArgumentPackPointer(__ptr_screen) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_screen_get_height,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_screen_get_framebuffer_format: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "screen_get_framebuffer_format").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func screenGetFramebufferFormat() -> Int64 {
        var __temporary = Int64()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_screen_get_framebuffer_format,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_draw_list_begin_for_screen: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_begin_for_screen").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3988079995)!
        }
        }
    }()
    public func drawListBeginForScreen(_ screen: Int32 = 0, clearColor: Godot.Color = Color(r: 0, g: 0, b: 0, a: 1)) -> Int64 {
        var __temporary = Int64()
        withUnsafePointer(to: screen) { (__ptr_screen) in
            withUnsafePointer(to: clearColor) { (__ptr_clearColor) in
                withUnsafeArgumentPackPointer(__ptr_screen, __ptr_clearColor) { (__accessPtr) in
                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_draw_list_begin_for_screen,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_draw_list_begin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_begin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4252992020)!
        }
        }
    }()
    public func drawListBegin(framebuffer: Godot.RID, initialColorAction: Godot.RenderingDevice.InitialAction, finalColorAction: Godot.RenderingDevice.FinalAction, initialDepthAction: Godot.RenderingDevice.InitialAction, finalDepthAction: Godot.RenderingDevice.FinalAction, clearColorValues: Godot.PackedColorArray = PackedColorArray(), clearDepth: Double = 1.0, clearStencil: UInt32 = 0, region: Godot.Rect2 = Rect2(x: 0, y: 0, width: 0, height: 0), storageTextures: Godot.GodotTypedArray<Godot.RID> = []) -> Int64 {
        var __temporary = Int64()
        framebuffer.withUnsafeRawPointer { (__ptr_framebuffer) in
            withUnsafePointer(to: initialColorAction) { (__ptr_initialColorAction) in
                withUnsafePointer(to: finalColorAction) { (__ptr_finalColorAction) in
                    withUnsafePointer(to: initialDepthAction) { (__ptr_initialDepthAction) in
                        withUnsafePointer(to: finalDepthAction) { (__ptr_finalDepthAction) in
                            clearColorValues.withUnsafeRawPointer { (__ptr_clearColorValues) in
                                withUnsafePointer(to: clearDepth) { (__ptr_clearDepth) in
                                    withUnsafePointer(to: clearStencil) { (__ptr_clearStencil) in
                                        withUnsafePointer(to: region) { (__ptr_region) in
                                            storageTextures.withUnsafeRawPointer { (__ptr_storageTextures) in
                                                withUnsafeArgumentPackPointer(__ptr_framebuffer, __ptr_initialColorAction, __ptr_finalColorAction, __ptr_initialDepthAction, __ptr_finalDepthAction, __ptr_clearColorValues, __ptr_clearDepth, __ptr_clearStencil, __ptr_region, __ptr_storageTextures) { (__accessPtr) in
                                                    withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                                                        `self`.withUnsafeRawPointer { (__ptr_self) in
                                                            gdextension_interface_object_method_bind_ptrcall(
                                                                Self.__method_binding_draw_list_begin,
                                                                __ptr_self,
                                                                __accessPtr,
                                                                __ptr___temporary
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
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_draw_list_begin_split: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_begin_split").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 832527510)!
        }
        }
    }()
    public func drawListBeginSplit(framebuffer: Godot.RID, splits: UInt32, initialColorAction: Godot.RenderingDevice.InitialAction, finalColorAction: Godot.RenderingDevice.FinalAction, initialDepthAction: Godot.RenderingDevice.InitialAction, finalDepthAction: Godot.RenderingDevice.FinalAction, clearColorValues: Godot.PackedColorArray = PackedColorArray(), clearDepth: Double = 1.0, clearStencil: UInt32 = 0, region: Godot.Rect2 = Rect2(x: 0, y: 0, width: 0, height: 0), storageTextures: Godot.GodotTypedArray<Godot.RID> = []) -> Godot.PackedInt64Array {
        let __temporary = Godot.PackedInt64Array()
        framebuffer.withUnsafeRawPointer { (__ptr_framebuffer) in
            withUnsafePointer(to: splits) { (__ptr_splits) in
                withUnsafePointer(to: initialColorAction) { (__ptr_initialColorAction) in
                    withUnsafePointer(to: finalColorAction) { (__ptr_finalColorAction) in
                        withUnsafePointer(to: initialDepthAction) { (__ptr_initialDepthAction) in
                            withUnsafePointer(to: finalDepthAction) { (__ptr_finalDepthAction) in
                                clearColorValues.withUnsafeRawPointer { (__ptr_clearColorValues) in
                                    withUnsafePointer(to: clearDepth) { (__ptr_clearDepth) in
                                        withUnsafePointer(to: clearStencil) { (__ptr_clearStencil) in
                                            withUnsafePointer(to: region) { (__ptr_region) in
                                                storageTextures.withUnsafeRawPointer { (__ptr_storageTextures) in
                                                    withUnsafeArgumentPackPointer(__ptr_framebuffer, __ptr_splits, __ptr_initialColorAction, __ptr_finalColorAction, __ptr_initialDepthAction, __ptr_finalDepthAction, __ptr_clearColorValues, __ptr_clearDepth, __ptr_clearStencil, __ptr_region, __ptr_storageTextures) { (__accessPtr) in
                                                        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                                                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                                                gdextension_interface_object_method_bind_ptrcall(
                                                                    Self.__method_binding_draw_list_begin_split,
                                                                    __ptr_self,
                                                                    __accessPtr,
                                                                    __ptr___temporary
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
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_draw_list_set_blend_constants: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_set_blend_constants").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2878471219)!
        }
        }
    }()
    public func drawListSetBlendConstants(drawList: Int64, color: Godot.Color) {
        withUnsafePointer(to: drawList) { (__ptr_drawList) in
            withUnsafePointer(to: color) { (__ptr_color) in
                withUnsafeArgumentPackPointer(__ptr_drawList, __ptr_color) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_draw_list_set_blend_constants,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_list_bind_render_pipeline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_bind_render_pipeline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4040184819)!
        }
        }
    }()
    public func drawListBindRenderPipeline(drawList: Int64, renderPipeline: Godot.RID) {
        withUnsafePointer(to: drawList) { (__ptr_drawList) in
            renderPipeline.withUnsafeRawPointer { (__ptr_renderPipeline) in
                withUnsafeArgumentPackPointer(__ptr_drawList, __ptr_renderPipeline) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_draw_list_bind_render_pipeline,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_list_bind_uniform_set: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_bind_uniform_set").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 749655778)!
        }
        }
    }()
    public func drawListBindUniformSet(drawList: Int64, uniformSet: Godot.RID, setIndex: UInt32) {
        withUnsafePointer(to: drawList) { (__ptr_drawList) in
            uniformSet.withUnsafeRawPointer { (__ptr_uniformSet) in
                withUnsafePointer(to: setIndex) { (__ptr_setIndex) in
                    withUnsafeArgumentPackPointer(__ptr_drawList, __ptr_uniformSet, __ptr_setIndex) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_draw_list_bind_uniform_set,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_list_bind_vertex_array: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_bind_vertex_array").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4040184819)!
        }
        }
    }()
    public func drawListBindVertexArray(drawList: Int64, vertexArray: Godot.RID) {
        withUnsafePointer(to: drawList) { (__ptr_drawList) in
            vertexArray.withUnsafeRawPointer { (__ptr_vertexArray) in
                withUnsafeArgumentPackPointer(__ptr_drawList, __ptr_vertexArray) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_draw_list_bind_vertex_array,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_list_bind_index_array: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_bind_index_array").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4040184819)!
        }
        }
    }()
    public func drawListBindIndexArray(drawList: Int64, indexArray: Godot.RID) {
        withUnsafePointer(to: drawList) { (__ptr_drawList) in
            indexArray.withUnsafeRawPointer { (__ptr_indexArray) in
                withUnsafeArgumentPackPointer(__ptr_drawList, __ptr_indexArray) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_draw_list_bind_index_array,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_list_set_push_constant: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_set_push_constant").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2772371345)!
        }
        }
    }()
    public func drawListSetPushConstant(drawList: Int64, buffer: Godot.PackedByteArray, sizeBytes: UInt32) {
        withUnsafePointer(to: drawList) { (__ptr_drawList) in
            buffer.withUnsafeRawPointer { (__ptr_buffer) in
                withUnsafePointer(to: sizeBytes) { (__ptr_sizeBytes) in
                    withUnsafeArgumentPackPointer(__ptr_drawList, __ptr_buffer, __ptr_sizeBytes) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_draw_list_set_push_constant,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_list_draw: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_draw").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3710874499)!
        }
        }
    }()
    public func drawListDraw(drawList: Int64, useIndices: Bool, instances: UInt32, proceduralVertexCount: UInt32 = 0) {
        withUnsafePointer(to: drawList) { (__ptr_drawList) in
            withUnsafePointer(to: useIndices) { (__ptr_useIndices) in
                withUnsafePointer(to: instances) { (__ptr_instances) in
                    withUnsafePointer(to: proceduralVertexCount) { (__ptr_proceduralVertexCount) in
                        withUnsafeArgumentPackPointer(__ptr_drawList, __ptr_useIndices, __ptr_instances, __ptr_proceduralVertexCount) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_draw_list_draw,
                                    __ptr_self,
                                    __accessPtr,
                                    nil
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_list_enable_scissor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_enable_scissor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 338791288)!
        }
        }
    }()
    public func drawListEnableScissor(drawList: Int64, rect: Godot.Rect2 = Rect2(x: 0, y: 0, width: 0, height: 0)) {
        withUnsafePointer(to: drawList) { (__ptr_drawList) in
            withUnsafePointer(to: rect) { (__ptr_rect) in
                withUnsafeArgumentPackPointer(__ptr_drawList, __ptr_rect) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_draw_list_enable_scissor,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_list_disable_scissor: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_disable_scissor").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func drawListDisableScissor(drawList: Int64) {
        withUnsafePointer(to: drawList) { (__ptr_drawList) in
            withUnsafeArgumentPackPointer(__ptr_drawList) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_draw_list_disable_scissor,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_draw_list_switch_to_next_pass: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_switch_to_next_pass").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2455072627)!
        }
        }
    }()
    public func drawListSwitchToNextPass() -> Int64 {
        var __temporary = Int64()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_draw_list_switch_to_next_pass,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_draw_list_switch_to_next_pass_split: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_switch_to_next_pass_split").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2865087369)!
        }
        }
    }()
    public func drawListSwitchToNextPassSplit(splits: UInt32) -> Godot.PackedInt64Array {
        let __temporary = Godot.PackedInt64Array()
        withUnsafePointer(to: splits) { (__ptr_splits) in
            withUnsafeArgumentPackPointer(__ptr_splits) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_draw_list_switch_to_next_pass_split,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_draw_list_end: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_list_end").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 422991495)!
        }
        }
    }()
    public func drawListEnd(postBarrier: Godot.RenderingDevice.BarrierMask = RenderingDevice.BarrierMask(rawValue: 7)) {
        withUnsafePointer(to: postBarrier) { (__ptr_postBarrier) in
            withUnsafeArgumentPackPointer(__ptr_postBarrier) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_draw_list_end,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_compute_list_begin: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "compute_list_begin").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 968564752)!
        }
        }
    }()
    public func computeListBegin(allowDrawOverlap: Bool = false) -> Int64 {
        var __temporary = Int64()
        withUnsafePointer(to: allowDrawOverlap) { (__ptr_allowDrawOverlap) in
            withUnsafeArgumentPackPointer(__ptr_allowDrawOverlap) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_compute_list_begin,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_compute_list_bind_compute_pipeline: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "compute_list_bind_compute_pipeline").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4040184819)!
        }
        }
    }()
    public func computeListBindComputePipeline(computeList: Int64, computePipeline: Godot.RID) {
        withUnsafePointer(to: computeList) { (__ptr_computeList) in
            computePipeline.withUnsafeRawPointer { (__ptr_computePipeline) in
                withUnsafeArgumentPackPointer(__ptr_computeList, __ptr_computePipeline) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_compute_list_bind_compute_pipeline,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_compute_list_set_push_constant: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "compute_list_set_push_constant").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2772371345)!
        }
        }
    }()
    public func computeListSetPushConstant(computeList: Int64, buffer: Godot.PackedByteArray, sizeBytes: UInt32) {
        withUnsafePointer(to: computeList) { (__ptr_computeList) in
            buffer.withUnsafeRawPointer { (__ptr_buffer) in
                withUnsafePointer(to: sizeBytes) { (__ptr_sizeBytes) in
                    withUnsafeArgumentPackPointer(__ptr_computeList, __ptr_buffer, __ptr_sizeBytes) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_compute_list_set_push_constant,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_compute_list_bind_uniform_set: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "compute_list_bind_uniform_set").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 749655778)!
        }
        }
    }()
    public func computeListBindUniformSet(computeList: Int64, uniformSet: Godot.RID, setIndex: UInt32) {
        withUnsafePointer(to: computeList) { (__ptr_computeList) in
            uniformSet.withUnsafeRawPointer { (__ptr_uniformSet) in
                withUnsafePointer(to: setIndex) { (__ptr_setIndex) in
                    withUnsafeArgumentPackPointer(__ptr_computeList, __ptr_uniformSet, __ptr_setIndex) { (__accessPtr) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_compute_list_bind_uniform_set,
                                __ptr_self,
                                __accessPtr,
                                nil
                            )
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_compute_list_dispatch: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "compute_list_dispatch").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4275841770)!
        }
        }
    }()
    public func computeListDispatch(computeList: Int64, xGroups: UInt32, yGroups: UInt32, zGroups: UInt32) {
        withUnsafePointer(to: computeList) { (__ptr_computeList) in
            withUnsafePointer(to: xGroups) { (__ptr_xGroups) in
                withUnsafePointer(to: yGroups) { (__ptr_yGroups) in
                    withUnsafePointer(to: zGroups) { (__ptr_zGroups) in
                        withUnsafeArgumentPackPointer(__ptr_computeList, __ptr_xGroups, __ptr_yGroups, __ptr_zGroups) { (__accessPtr) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_compute_list_dispatch,
                                    __ptr_self,
                                    __accessPtr,
                                    nil
                                )
                            }
                        }
                    }
                }
            }
        }
    }

    private static var __method_binding_compute_list_add_barrier: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "compute_list_add_barrier").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func computeListAddBarrier(computeList: Int64) {
        withUnsafePointer(to: computeList) { (__ptr_computeList) in
            withUnsafeArgumentPackPointer(__ptr_computeList) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_compute_list_add_barrier,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_compute_list_end: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "compute_list_end").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 422991495)!
        }
        }
    }()
    public func computeListEnd(postBarrier: Godot.RenderingDevice.BarrierMask = RenderingDevice.BarrierMask(rawValue: 7)) {
        withUnsafePointer(to: postBarrier) { (__ptr_postBarrier) in
            withUnsafeArgumentPackPointer(__ptr_postBarrier) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_compute_list_end,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_free_rid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "free_rid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func freeRid(_ rid: Godot.RID) {
        rid.withUnsafeRawPointer { (__ptr_rid) in
            withUnsafeArgumentPackPointer(__ptr_rid) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_free_rid,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_capture_timestamp: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "capture_timestamp").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 83702148)!
        }
        }
    }()
    public func captureTimestamp(name: Godot.GodotString) {
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafeArgumentPackPointer(__ptr_name) { (__accessPtr) in
                `self`.withUnsafeRawPointer { (__ptr_self) in
                    gdextension_interface_object_method_bind_ptrcall(
                        Self.__method_binding_capture_timestamp,
                        __ptr_self,
                        __accessPtr,
                        nil
                    )
                }
            }
        }
    }

    private static var __method_binding_get_captured_timestamps_count: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_captured_timestamps_count").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func capturedTimestampsCount() -> UInt32 {
        var __temporary = UInt32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_captured_timestamps_count,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_captured_timestamps_frame: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_captured_timestamps_frame").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func capturedTimestampsFrame() -> UInt64 {
        var __temporary = UInt64()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_captured_timestamps_frame,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_captured_timestamp_gpu_time: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_captured_timestamp_gpu_time").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func capturedTimestampGpuTime(index: UInt32) -> UInt64 {
        var __temporary = UInt64()
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafeArgumentPackPointer(__ptr_index) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_captured_timestamp_gpu_time,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_captured_timestamp_cpu_time: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_captured_timestamp_cpu_time").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()
    public func capturedTimestampCpuTime(index: UInt32) -> UInt64 {
        var __temporary = UInt64()
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafeArgumentPackPointer(__ptr_index) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_captured_timestamp_cpu_time,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_captured_timestamp_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_captured_timestamp_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func capturedTimestampName(index: UInt32) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: index) { (__ptr_index) in
            withUnsafeArgumentPackPointer(__ptr_index) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_captured_timestamp_name,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_limit_get: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "limit_get").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1559202131)!
        }
        }
    }()
    public func limitGet(limit: Godot.RenderingDevice.Limit) -> UInt64 {
        var __temporary = UInt64()
        withUnsafePointer(to: limit) { (__ptr_limit) in
            withUnsafeArgumentPackPointer(__ptr_limit) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_limit_get,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_frame_delay: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_frame_delay").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func frameDelay() -> UInt32 {
        var __temporary = UInt32()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_frame_delay,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_submit: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "submit").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func submit() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_submit,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_sync: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "sync").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func sync() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_sync,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_barrier: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "barrier").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 266666049)!
        }
        }
    }()
    public func barrier(from: Godot.RenderingDevice.BarrierMask = RenderingDevice.BarrierMask(rawValue: 7), to: Godot.RenderingDevice.BarrierMask = RenderingDevice.BarrierMask(rawValue: 7)) {
        withUnsafePointer(to: from) { (__ptr_from) in
            withUnsafePointer(to: to) { (__ptr_to) in
                withUnsafeArgumentPackPointer(__ptr_from, __ptr_to) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_barrier,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_full_barrier: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "full_barrier").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func fullBarrier() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_full_barrier,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_create_local_device: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "create_local_device").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2846302423)!
        }
        }
    }()
    public func createLocalDevice() -> Godot.RenderingDevice? {
        var __temporary: GDExtensionObjectPtr!
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_create_local_device,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return Godot.RenderingDevice.retreivedInstanceManagedByGodot(__temporary)
    }

    private static var __method_binding_set_resource_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "set_resource_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()
    public func setResourceName(id: Godot.RID, name: Godot.GodotString) {
        id.withUnsafeRawPointer { (__ptr_id) in
            name.withUnsafeRawPointer { (__ptr_name) in
                withUnsafeArgumentPackPointer(__ptr_id, __ptr_name) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_set_resource_name,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_command_begin_label: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_command_begin_label").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1636512886)!
        }
        }
    }()
    public func drawCommandBeginLabel(name: Godot.GodotString, color: Godot.Color) {
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafePointer(to: color) { (__ptr_color) in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_color) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_draw_command_begin_label,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_command_insert_label: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_command_insert_label").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1636512886)!
        }
        }
    }()
    public func drawCommandInsertLabel(name: Godot.GodotString, color: Godot.Color) {
        name.withUnsafeRawPointer { (__ptr_name) in
            withUnsafePointer(to: color) { (__ptr_color) in
                withUnsafeArgumentPackPointer(__ptr_name, __ptr_color) { (__accessPtr) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_draw_command_insert_label,
                            __ptr_self,
                            __accessPtr,
                            nil
                        )
                    }
                }
            }
        }
    }

    private static var __method_binding_draw_command_end_label: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "draw_command_end_label").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func drawCommandEndLabel() {
        `self`.withUnsafeRawPointer { (__ptr_self) in
            gdextension_interface_object_method_bind_ptrcall(
                Self.__method_binding_draw_command_end_label,
                __ptr_self,
                nil,
                nil
            )
        }
    }

    private static var __method_binding_get_device_vendor_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_device_vendor_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func deviceVendorName() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_device_vendor_name,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_device_name: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_device_name").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func deviceName() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_device_name,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_device_pipeline_cache_uuid: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_device_pipeline_cache_uuid").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func devicePipelineCacheUuid() -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_device_pipeline_cache_uuid,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_memory_usage: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_memory_usage").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 251690689)!
        }
        }
    }()
    public func memoryUsage(type: Godot.RenderingDevice.MemoryType) -> UInt64 {
        var __temporary = UInt64()
        withUnsafePointer(to: type) { (__ptr_type) in
            withUnsafeArgumentPackPointer(__ptr_type) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_memory_usage,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_driver_resource: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftString: "get_driver_resource").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 501815484)!
        }
        }
    }()
    public func driverResource(_ resource: Godot.RenderingDevice.DriverResource, rid: Godot.RID, index: UInt64) -> UInt64 {
        var __temporary = UInt64()
        withUnsafePointer(to: resource) { (__ptr_resource) in
            rid.withUnsafeRawPointer { (__ptr_rid) in
                withUnsafePointer(to: index) { (__ptr_index) in
                    withUnsafeArgumentPackPointer(__ptr_resource, __ptr_rid, __ptr_index) { (__accessPtr) in
                        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                            `self`.withUnsafeRawPointer { (__ptr_self) in
                                gdextension_interface_object_method_bind_ptrcall(
                                    Self.__method_binding_get_driver_resource,
                                    __ptr_self,
                                    __accessPtr,
                                    __ptr___temporary
                                )
                            }
                        }
                    }
                }
            }
        }
        return __temporary
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