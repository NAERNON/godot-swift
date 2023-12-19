//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class RenderingServer: Object {
    public enum TextureLayeredType: UInt32, GodotEnum {
        case textureLayered2DArray = 0
        case cubemap = 1
        case cubemapArray = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Texture Layered2 D Array", 0),
            ("Cubemap", 1),
            ("Cubemap Array", 2),]
        }
    }
    public enum CubeMapLayer: UInt32, GodotEnum {
        case left = 0
        case right = 1
        case bottom = 2
        case top = 3
        case front = 4
        case back = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Left", 0),
            ("Right", 1),
            ("Bottom", 2),
            ("Top", 3),
            ("Front", 4),
            ("Back", 5),]
        }
    }
    public enum ShaderMode: UInt32, GodotEnum {
        case spatial = 0
        case canvasItem = 1
        case particles = 2
        case sky = 3
        case fog = 4
        case max = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Spatial", 0),
            ("Canvas Item", 1),
            ("Particles", 2),
            ("Sky", 3),
            ("Fog", 4),
            ("Max", 5),]
        }
    }
    public enum ArrayType: UInt32, GodotEnum {
        case vertex = 0
        case normal = 1
        case tangent = 2
        case color = 3
        case texUv = 4
        case texUv2 = 5
        case custom0 = 6
        case custom1 = 7
        case custom2 = 8
        case custom3 = 9
        case bones = 10
        case weights = 11
        case index = 12
        case max = 13
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Vertex", 0),
            ("Normal", 1),
            ("Tangent", 2),
            ("Color", 3),
            ("Tex Uv", 4),
            ("Tex Uv2", 5),
            ("Custom0", 6),
            ("Custom1", 7),
            ("Custom2", 8),
            ("Custom3", 9),
            ("Bones", 10),
            ("Weights", 11),
            ("Index", 12),
            ("Max", 13),]
        }
    }
    public enum ArrayCustomFormat: UInt32, GodotEnum {
        case rgba8Unorm = 0
        case rgba8Snorm = 1
        case rgHalf = 2
        case rgbaHalf = 3
        case rFloat = 4
        case rgFloat = 5
        case rgbFloat = 6
        case rgbaFloat = 7
        case max = 8
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Rgba8 Unorm", 0),
            ("Rgba8 Snorm", 1),
            ("Rg Half", 2),
            ("Rgba Half", 3),
            ("R Float", 4),
            ("Rg Float", 5),
            ("Rgb Float", 6),
            ("Rgba Float", 7),
            ("Max", 8),]
        }
    }
    public struct ArrayFormat: GodotOptionSet {
        public let rawValue: Int64

        public init(rawValue: Int64) {
            self.rawValue = rawValue
        }

        public static let formatVertex: Self = .init(rawValue: 1)
        public static let formatNormal: Self = .init(rawValue: 2)
        public static let formatTangent: Self = .init(rawValue: 4)
        public static let formatColor: Self = .init(rawValue: 8)
        public static let formatTexUv: Self = .init(rawValue: 16)
        public static let formatTexUv2: Self = .init(rawValue: 32)
        public static let formatCustom0: Self = .init(rawValue: 64)
        public static let formatCustom1: Self = .init(rawValue: 128)
        public static let formatCustom2: Self = .init(rawValue: 256)
        public static let formatCustom3: Self = .init(rawValue: 512)
        public static let formatBones: Self = .init(rawValue: 1024)
        public static let formatWeights: Self = .init(rawValue: 2048)
        public static let formatIndex: Self = .init(rawValue: 4096)
        public static let formatBlendShapeMask: Self = .init(rawValue: 7)
        public static let formatCustomBase: Self = .init(rawValue: 13)
        public static let formatCustomBits: Self = .init(rawValue: 3)
        public static let formatCustom0Shift: Self = .init(rawValue: 13)
        public static let formatCustom1Shift: Self = .init(rawValue: 16)
        public static let formatCustom2Shift: Self = .init(rawValue: 19)
        public static let formatCustom3Shift: Self = .init(rawValue: 22)
        public static let formatCustomMask: Self = .init(rawValue: 7)
        public static let compressFlagsBase: Self = .init(rawValue: 25)
        public static let flagUse2DVertices: Self = .init(rawValue: 33554432)
        public static let flagUseDynamicUpdate: Self = .init(rawValue: 67108864)
        public static let flagUse8BoneWeights: Self = .init(rawValue: 134217728)
        public static let flagUsesEmptyVertexArray: Self = .init(rawValue: 268435456)
        public static let flagCompressAttributes: Self = .init(rawValue: 536870912)
        public static let flagFormatVersionBase: Self = .init(rawValue: 35)
        public static let flagFormatVersionShift: Self = .init(rawValue: 35)
        public static let flagFormatVersion1: Self = .init(rawValue: 0)
        public static let flagFormatVersion2: Self = .init(rawValue: 34359738368)
        public static let flagFormatCurrentVersion: Self = .init(rawValue: 34359738368)
        public static let flagFormatVersionMask: Self = .init(rawValue: 255)
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Flag Format Version1", 0),
            ("Format Vertex", 1),
            ("Format Normal", 2),
            ("Format Custom Bits", 3),
            ("Format Tangent", 4),
            ("Format Blend Shape Mask", 7),
            ("Format Color", 8),
            ("Format Custom Base", 13),
            ("Format Tex Uv", 16),
            ("Format Custom2 Shift", 19),
            ("Format Custom3 Shift", 22),
            ("Compress Flags Base", 25),
            ("Format Tex Uv2", 32),
            ("Flag Format Version Base", 35),
            ("Format Custom0", 64),
            ("Format Custom1", 128),
            ("Flag Format Version Mask", 255),
            ("Format Custom2", 256),
            ("Format Custom3", 512),
            ("Format Bones", 1024),
            ("Format Weights", 2048),
            ("Format Index", 4096),
            ("Flag Use2 D Vertices", 33554432),
            ("Flag Use Dynamic Update", 67108864),
            ("Flag Use8 Bone Weights", 134217728),
            ("Flag Uses Empty Vertex Array", 268435456),
            ("Flag Compress Attributes", 536870912),
            ("Flag Format Version2", 34359738368),]
        }
    }
    public enum PrimitiveType: UInt32, GodotEnum {
        case points = 0
        case lines = 1
        case lineStrip = 2
        case triangles = 3
        case triangleStrip = 4
        case max = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Points", 0),
            ("Lines", 1),
            ("Line Strip", 2),
            ("Triangles", 3),
            ("Triangle Strip", 4),
            ("Max", 5),]
        }
    }
    public enum BlendShapeMode: UInt32, GodotEnum {
        case normalized = 0
        case relative = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Normalized", 0),
            ("Relative", 1),]
        }
    }
    public enum MultimeshTransformFormat: UInt32, GodotEnum {
        case multimeshTransform2D = 0
        case multimeshTransform3D = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Multimesh Transform2 D", 0),
            ("Multimesh Transform3 D", 1),]
        }
    }
    public enum LightProjectorFilter: UInt32, GodotEnum {
        case nearest = 0
        case linear = 1
        case nearestMipmaps = 2
        case linearMipmaps = 3
        case nearestMipmapsAnisotropic = 4
        case linearMipmapsAnisotropic = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Nearest", 0),
            ("Linear", 1),
            ("Nearest Mipmaps", 2),
            ("Linear Mipmaps", 3),
            ("Nearest Mipmaps Anisotropic", 4),
            ("Linear Mipmaps Anisotropic", 5),]
        }
    }
    public enum LightType: UInt32, GodotEnum {
        case directional = 0
        case omni = 1
        case spot = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Directional", 0),
            ("Omni", 1),
            ("Spot", 2),]
        }
    }
    public enum LightParam: UInt32, GodotEnum {
        case energy = 0
        case indirectEnergy = 1
        case volumetricFogEnergy = 2
        case specular = 3
        case range = 4
        case size = 5
        case attenuation = 6
        case spotAngle = 7
        case spotAttenuation = 8
        case shadowMaxDistance = 9
        case shadowSplit1Offset = 10
        case shadowSplit2Offset = 11
        case shadowSplit3Offset = 12
        case shadowFadeStart = 13
        case shadowNormalBias = 14
        case shadowBias = 15
        case shadowPancakeSize = 16
        case shadowOpacity = 17
        case shadowBlur = 18
        case transmittanceBias = 19
        case intensity = 20
        case max = 21
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Energy", 0),
            ("Indirect Energy", 1),
            ("Volumetric Fog Energy", 2),
            ("Specular", 3),
            ("Range", 4),
            ("Size", 5),
            ("Attenuation", 6),
            ("Spot Angle", 7),
            ("Spot Attenuation", 8),
            ("Shadow Max Distance", 9),
            ("Shadow Split1 Offset", 10),
            ("Shadow Split2 Offset", 11),
            ("Shadow Split3 Offset", 12),
            ("Shadow Fade Start", 13),
            ("Shadow Normal Bias", 14),
            ("Shadow Bias", 15),
            ("Shadow Pancake Size", 16),
            ("Shadow Opacity", 17),
            ("Shadow Blur", 18),
            ("Transmittance Bias", 19),
            ("Intensity", 20),
            ("Max", 21),]
        }
    }
    public enum LightBakeMode: UInt32, GodotEnum {
        case disabled = 0
        case `static` = 1
        case dynamic = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Static", 1),
            ("Dynamic", 2),]
        }
    }
    public enum LightOmniShadowMode: UInt32, GodotEnum {
        case dualParaboloid = 0
        case cube = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Dual Paraboloid", 0),
            ("Cube", 1),]
        }
    }
    public enum LightDirectionalShadowMode: UInt32, GodotEnum {
        case orthogonal = 0
        case parallel2Splits = 1
        case parallel4Splits = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Orthogonal", 0),
            ("Parallel2 Splits", 1),
            ("Parallel4 Splits", 2),]
        }
    }
    public enum LightDirectionalSkyMode: UInt32, GodotEnum {
        case lightAndSky = 0
        case lightOnly = 1
        case skyOnly = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Light And Sky", 0),
            ("Light Only", 1),
            ("Sky Only", 2),]
        }
    }
    public enum ShadowQuality: UInt32, GodotEnum {
        case hard = 0
        case softVeryLow = 1
        case softLow = 2
        case softMedium = 3
        case softHigh = 4
        case softUltra = 5
        case max = 6
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Hard", 0),
            ("Soft Very Low", 1),
            ("Soft Low", 2),
            ("Soft Medium", 3),
            ("Soft High", 4),
            ("Soft Ultra", 5),
            ("Max", 6),]
        }
    }
    public enum ReflectionProbeUpdateMode: UInt32, GodotEnum {
        case once = 0
        case always = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Once", 0),
            ("Always", 1),]
        }
    }
    public enum ReflectionProbeAmbientMode: UInt32, GodotEnum {
        case disabled = 0
        case environment = 1
        case color = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Environment", 1),
            ("Color", 2),]
        }
    }
    public enum DecalTexture: UInt32, GodotEnum {
        case albedo = 0
        case normal = 1
        case orm = 2
        case emission = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Albedo", 0),
            ("Normal", 1),
            ("Orm", 2),
            ("Emission", 3),
            ("Max", 4),]
        }
    }
    public enum DecalFilter: UInt32, GodotEnum {
        case nearest = 0
        case linear = 1
        case nearestMipmaps = 2
        case linearMipmaps = 3
        case nearestMipmapsAnisotropic = 4
        case linearMipmapsAnisotropic = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Nearest", 0),
            ("Linear", 1),
            ("Nearest Mipmaps", 2),
            ("Linear Mipmaps", 3),
            ("Nearest Mipmaps Anisotropic", 4),
            ("Linear Mipmaps Anisotropic", 5),]
        }
    }
    public enum VoxelGIQuality: UInt32, GodotEnum {
        case low = 0
        case high = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Low", 0),
            ("High", 1),]
        }
    }
    public enum ParticlesMode: UInt32, GodotEnum {
        case particlesMode2D = 0
        case particlesMode3D = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Particles Mode2 D", 0),
            ("Particles Mode3 D", 1),]
        }
    }
    public enum ParticlesTransformAlign: UInt32, GodotEnum {
        case disabled = 0
        case zBillboard = 1
        case yToVelocity = 2
        case zBillboardYToVelocity = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Z Billboard", 1),
            ("Y To Velocity", 2),
            ("Z Billboard Y To Velocity", 3),]
        }
    }
    public enum ParticlesDrawOrder: UInt32, GodotEnum {
        case index = 0
        case lifetime = 1
        case reverseLifetime = 2
        case viewDepth = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Index", 0),
            ("Lifetime", 1),
            ("Reverse Lifetime", 2),
            ("View Depth", 3),]
        }
    }
    public enum ParticlesCollisionType: UInt32, GodotEnum {
        case sphereAttract = 0
        case boxAttract = 1
        case vectorFieldAttract = 2
        case sphereCollide = 3
        case boxCollide = 4
        case sdfCollide = 5
        case heightfieldCollide = 6
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Sphere Attract", 0),
            ("Box Attract", 1),
            ("Vector Field Attract", 2),
            ("Sphere Collide", 3),
            ("Box Collide", 4),
            ("Sdf Collide", 5),
            ("Heightfield Collide", 6),]
        }
    }
    public enum ParticlesCollisionHeightfieldResolution: UInt32, GodotEnum {
        case particlesCollisionHeightfieldResolution256 = 0
        case particlesCollisionHeightfieldResolution512 = 1
        case particlesCollisionHeightfieldResolution1024 = 2
        case particlesCollisionHeightfieldResolution2048 = 3
        case particlesCollisionHeightfieldResolution4096 = 4
        case particlesCollisionHeightfieldResolution8192 = 5
        case max = 6
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Particles Collision Heightfield Resolution256", 0),
            ("Particles Collision Heightfield Resolution512", 1),
            ("Particles Collision Heightfield Resolution1024", 2),
            ("Particles Collision Heightfield Resolution2048", 3),
            ("Particles Collision Heightfield Resolution4096", 4),
            ("Particles Collision Heightfield Resolution8192", 5),
            ("Max", 6),]
        }
    }
    public enum FogVolumeShape: UInt32, GodotEnum {
        case ellipsoid = 0
        case cone = 1
        case cylinder = 2
        case box = 3
        case world = 4
        case max = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Ellipsoid", 0),
            ("Cone", 1),
            ("Cylinder", 2),
            ("Box", 3),
            ("World", 4),
            ("Max", 5),]
        }
    }
    public enum ViewportScaling3DMode: UInt32, GodotEnum {
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
    public enum ViewportUpdateMode: UInt32, GodotEnum {
        case disabled = 0
        case once = 1
        case whenVisible = 2
        case whenParentVisible = 3
        case always = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Once", 1),
            ("When Visible", 2),
            ("When Parent Visible", 3),
            ("Always", 4),]
        }
    }
    public enum ViewportClearMode: UInt32, GodotEnum {
        case always = 0
        case never = 1
        case onlyNextFrame = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Always", 0),
            ("Never", 1),
            ("Only Next Frame", 2),]
        }
    }
    public enum ViewportEnvironmentMode: UInt32, GodotEnum {
        case disabled = 0
        case enabled = 1
        case inherit = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Enabled", 1),
            ("Inherit", 2),
            ("Max", 3),]
        }
    }
    public enum ViewportSDFOversize: UInt32, GodotEnum {
        case viewportSdfOversize100Percent = 0
        case viewportSdfOversize120Percent = 1
        case viewportSdfOversize150Percent = 2
        case viewportSdfOversize200Percent = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Viewport Sdf Oversize100 Percent", 0),
            ("Viewport Sdf Oversize120 Percent", 1),
            ("Viewport Sdf Oversize150 Percent", 2),
            ("Viewport Sdf Oversize200 Percent", 3),
            ("Max", 4),]
        }
    }
    public enum ViewportSDFScale: UInt32, GodotEnum {
        case viewportSdfScale100Percent = 0
        case viewportSdfScale50Percent = 1
        case viewportSdfScale25Percent = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Viewport Sdf Scale100 Percent", 0),
            ("Viewport Sdf Scale50 Percent", 1),
            ("Viewport Sdf Scale25 Percent", 2),
            ("Max", 3),]
        }
    }
    public enum ViewportMSAA: UInt32, GodotEnum {
        case disabled = 0
        case viewportMsaa2x = 1
        case viewportMsaa4x = 2
        case viewportMsaa8x = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Viewport Msaa2x", 1),
            ("Viewport Msaa4x", 2),
            ("Viewport Msaa8x", 3),
            ("Max", 4),]
        }
    }
    public enum ViewportScreenSpaceAA: UInt32, GodotEnum {
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
    public enum ViewportOcclusionCullingBuildQuality: UInt32, GodotEnum {
        case low = 0
        case medium = 1
        case high = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Low", 0),
            ("Medium", 1),
            ("High", 2),]
        }
    }
    public enum ViewportRenderInfo: UInt32, GodotEnum {
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
    public enum ViewportRenderInfoType: UInt32, GodotEnum {
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
    public enum ViewportDebugDraw: UInt32, GodotEnum {
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
    public enum ViewportVRSMode: UInt32, GodotEnum {
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
    public enum SkyMode: UInt32, GodotEnum {
        case automatic = 0
        case quality = 1
        case incremental = 2
        case realtime = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Automatic", 0),
            ("Quality", 1),
            ("Incremental", 2),
            ("Realtime", 3),]
        }
    }
    public enum EnvironmentBG: UInt32, GodotEnum {
        case clearColor = 0
        case color = 1
        case sky = 2
        case canvas = 3
        case keep = 4
        case cameraFeed = 5
        case max = 6
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Clear Color", 0),
            ("Color", 1),
            ("Sky", 2),
            ("Canvas", 3),
            ("Keep", 4),
            ("Camera Feed", 5),
            ("Max", 6),]
        }
    }
    public enum EnvironmentAmbientSource: UInt32, GodotEnum {
        case bg = 0
        case disabled = 1
        case color = 2
        case sky = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Bg", 0),
            ("Disabled", 1),
            ("Color", 2),
            ("Sky", 3),]
        }
    }
    public enum EnvironmentReflectionSource: UInt32, GodotEnum {
        case bg = 0
        case disabled = 1
        case sky = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Bg", 0),
            ("Disabled", 1),
            ("Sky", 2),]
        }
    }
    public enum EnvironmentGlowBlendMode: UInt32, GodotEnum {
        case additive = 0
        case screen = 1
        case softlight = 2
        case replace = 3
        case mix = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Additive", 0),
            ("Screen", 1),
            ("Softlight", 2),
            ("Replace", 3),
            ("Mix", 4),]
        }
    }
    public enum EnvironmentToneMapper: UInt32, GodotEnum {
        case linear = 0
        case reinhard = 1
        case filmic = 2
        case aces = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Linear", 0),
            ("Reinhard", 1),
            ("Filmic", 2),
            ("Aces", 3),]
        }
    }
    public enum EnvironmentSSRRoughnessQuality: UInt32, GodotEnum {
        case disabled = 0
        case low = 1
        case medium = 2
        case high = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Low", 1),
            ("Medium", 2),
            ("High", 3),]
        }
    }
    public enum EnvironmentSSAOQuality: UInt32, GodotEnum {
        case veryLow = 0
        case low = 1
        case medium = 2
        case high = 3
        case ultra = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Very Low", 0),
            ("Low", 1),
            ("Medium", 2),
            ("High", 3),
            ("Ultra", 4),]
        }
    }
    public enum EnvironmentSSILQuality: UInt32, GodotEnum {
        case veryLow = 0
        case low = 1
        case medium = 2
        case high = 3
        case ultra = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Very Low", 0),
            ("Low", 1),
            ("Medium", 2),
            ("High", 3),
            ("Ultra", 4),]
        }
    }
    public enum EnvironmentSDFGIYScale: UInt32, GodotEnum {
        case envSdfgiYScale50Percent = 0
        case envSdfgiYScale75Percent = 1
        case envSdfgiYScale100Percent = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Env Sdfgi Y Scale50 Percent", 0),
            ("Env Sdfgi Y Scale75 Percent", 1),
            ("Env Sdfgi Y Scale100 Percent", 2),]
        }
    }
    public enum EnvironmentSDFGIRayCount: UInt32, GodotEnum {
        case envSdfgiRayCount4 = 0
        case envSdfgiRayCount8 = 1
        case envSdfgiRayCount16 = 2
        case envSdfgiRayCount32 = 3
        case envSdfgiRayCount64 = 4
        case envSdfgiRayCount96 = 5
        case envSdfgiRayCount128 = 6
        case max = 7
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Env Sdfgi Ray Count4", 0),
            ("Env Sdfgi Ray Count8", 1),
            ("Env Sdfgi Ray Count16", 2),
            ("Env Sdfgi Ray Count32", 3),
            ("Env Sdfgi Ray Count64", 4),
            ("Env Sdfgi Ray Count96", 5),
            ("Env Sdfgi Ray Count128", 6),
            ("Max", 7),]
        }
    }
    public enum EnvironmentSDFGIFramesToConverge: UInt32, GodotEnum {
        case in5Frames = 0
        case in10Frames = 1
        case in15Frames = 2
        case in20Frames = 3
        case in25Frames = 4
        case in30Frames = 5
        case max = 6
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("In5 Frames", 0),
            ("In10 Frames", 1),
            ("In15 Frames", 2),
            ("In20 Frames", 3),
            ("In25 Frames", 4),
            ("In30 Frames", 5),
            ("Max", 6),]
        }
    }
    public enum EnvironmentSDFGIFramesToUpdateLight: UInt32, GodotEnum {
        case in1Frame = 0
        case in2Frames = 1
        case in4Frames = 2
        case in8Frames = 3
        case in16Frames = 4
        case max = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("In1 Frame", 0),
            ("In2 Frames", 1),
            ("In4 Frames", 2),
            ("In8 Frames", 3),
            ("In16 Frames", 4),
            ("Max", 5),]
        }
    }
    public enum SubSurfaceScatteringQuality: UInt32, GodotEnum {
        case disabled = 0
        case low = 1
        case medium = 2
        case high = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Low", 1),
            ("Medium", 2),
            ("High", 3),]
        }
    }
    public enum DOFBokehShape: UInt32, GodotEnum {
        case box = 0
        case hexagon = 1
        case circle = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Box", 0),
            ("Hexagon", 1),
            ("Circle", 2),]
        }
    }
    public enum DOFBlurQuality: UInt32, GodotEnum {
        case veryLow = 0
        case low = 1
        case medium = 2
        case high = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Very Low", 0),
            ("Low", 1),
            ("Medium", 2),
            ("High", 3),]
        }
    }
    public enum InstanceType: UInt32, GodotEnum {
        case none = 0
        case mesh = 1
        case multimesh = 2
        case particles = 3
        case particlesCollision = 4
        case light = 5
        case reflectionProbe = 6
        case decal = 7
        case voxelGi = 8
        case lightmap = 9
        case occluder = 10
        case visiblityNotifier = 11
        case fogVolume = 12
        case max = 13
        case geometryMask = 14
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Mesh", 1),
            ("Multimesh", 2),
            ("Particles", 3),
            ("Particles Collision", 4),
            ("Light", 5),
            ("Reflection Probe", 6),
            ("Decal", 7),
            ("Voxel Gi", 8),
            ("Lightmap", 9),
            ("Occluder", 10),
            ("Visiblity Notifier", 11),
            ("Fog Volume", 12),
            ("Max", 13),
            ("Geometry Mask", 14),]
        }
    }
    public enum InstanceFlags: UInt32, GodotEnum {
        case useBakedLight = 0
        case useDynamicGi = 1
        case drawNextFrameIfVisible = 2
        case ignoreOcclusionCulling = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Use Baked Light", 0),
            ("Use Dynamic Gi", 1),
            ("Draw Next Frame If Visible", 2),
            ("Ignore Occlusion Culling", 3),
            ("Max", 4),]
        }
    }
    public enum ShadowCastingSetting: UInt32, GodotEnum {
        case off = 0
        case on = 1
        case doubleSided = 2
        case shadowsOnly = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Off", 0),
            ("On", 1),
            ("Double Sided", 2),
            ("Shadows Only", 3),]
        }
    }
    public enum VisibilityRangeFadeMode: UInt32, GodotEnum {
        case disabled = 0
        case `self` = 1
        case dependencies = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Self", 1),
            ("Dependencies", 2),]
        }
    }
    public enum BakeChannels: UInt32, GodotEnum {
        case albedoAlpha = 0
        case normal = 1
        case orm = 2
        case emission = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Albedo Alpha", 0),
            ("Normal", 1),
            ("Orm", 2),
            ("Emission", 3),]
        }
    }
    public enum CanvasTextureChannel: UInt32, GodotEnum {
        case diffuse = 0
        case normal = 1
        case specular = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Diffuse", 0),
            ("Normal", 1),
            ("Specular", 2),]
        }
    }
    public enum NinePatchAxisMode: UInt32, GodotEnum {
        case stretch = 0
        case tile = 1
        case tileFit = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Stretch", 0),
            ("Tile", 1),
            ("Tile Fit", 2),]
        }
    }
    public enum CanvasItemTextureFilter: UInt32, GodotEnum {
        case `default` = 0
        case nearest = 1
        case linear = 2
        case nearestWithMipmaps = 3
        case linearWithMipmaps = 4
        case nearestWithMipmapsAnisotropic = 5
        case linearWithMipmapsAnisotropic = 6
        case max = 7
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Default", 0),
            ("Nearest", 1),
            ("Linear", 2),
            ("Nearest With Mipmaps", 3),
            ("Linear With Mipmaps", 4),
            ("Nearest With Mipmaps Anisotropic", 5),
            ("Linear With Mipmaps Anisotropic", 6),
            ("Max", 7),]
        }
    }
    public enum CanvasItemTextureRepeat: UInt32, GodotEnum {
        case `default` = 0
        case disabled = 1
        case enabled = 2
        case mirror = 3
        case max = 4
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Default", 0),
            ("Disabled", 1),
            ("Enabled", 2),
            ("Mirror", 3),
            ("Max", 4),]
        }
    }
    public enum CanvasGroupMode: UInt32, GodotEnum {
        case disabled = 0
        case clipOnly = 1
        case clipAndDraw = 2
        case transparent = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Clip Only", 1),
            ("Clip And Draw", 2),
            ("Transparent", 3),]
        }
    }
    public enum CanvasLightMode: UInt32, GodotEnum {
        case point = 0
        case directional = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Point", 0),
            ("Directional", 1),]
        }
    }
    public enum CanvasLightBlendMode: UInt32, GodotEnum {
        case add = 0
        case sub = 1
        case mix = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Add", 0),
            ("Sub", 1),
            ("Mix", 2),]
        }
    }
    public enum CanvasLightShadowFilter: UInt32, GodotEnum {
        case none = 0
        case pcf5 = 1
        case pcf13 = 2
        case max = 3
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("None", 0),
            ("Pcf5", 1),
            ("Pcf13", 2),
            ("Max", 3),]
        }
    }
    public enum CanvasOccluderPolygonCullMode: UInt32, GodotEnum {
        case disabled = 0
        case clockwise = 1
        case counterClockwise = 2
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Disabled", 0),
            ("Clockwise", 1),
            ("Counter Clockwise", 2),]
        }
    }
    public enum GlobalShaderParameterType: UInt32, GodotEnum {
        case bool = 0
        case bvec2 = 1
        case bvec3 = 2
        case bvec4 = 3
        case int = 4
        case ivec2 = 5
        case ivec3 = 6
        case ivec4 = 7
        case rect2i = 8
        case uint = 9
        case uvec2 = 10
        case uvec3 = 11
        case uvec4 = 12
        case float = 13
        case vec2 = 14
        case vec3 = 15
        case vec4 = 16
        case color = 17
        case rect2 = 18
        case mat2 = 19
        case mat3 = 20
        case mat4 = 21
        case transform2D = 22
        case transform = 23
        case sampler2d = 24
        case sampler2darray = 25
        case sampler3d = 26
        case samplercube = 27
        case max = 28
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Bool", 0),
            ("Bvec2", 1),
            ("Bvec3", 2),
            ("Bvec4", 3),
            ("Int", 4),
            ("Ivec2", 5),
            ("Ivec3", 6),
            ("Ivec4", 7),
            ("Rect2i", 8),
            ("Uint", 9),
            ("Uvec2", 10),
            ("Uvec3", 11),
            ("Uvec4", 12),
            ("Float", 13),
            ("Vec2", 14),
            ("Vec3", 15),
            ("Vec4", 16),
            ("Color", 17),
            ("Rect2", 18),
            ("Mat2", 19),
            ("Mat3", 20),
            ("Mat4", 21),
            ("Transform2 D", 22),
            ("Transform", 23),
            ("Sampler2d", 24),
            ("Sampler2darray", 25),
            ("Sampler3d", 26),
            ("Samplercube", 27),
            ("Max", 28),]
        }
    }
    public enum RenderingInfo: UInt32, GodotEnum {
        case totalObjectsInFrame = 0
        case totalPrimitivesInFrame = 1
        case totalDrawCallsInFrame = 2
        case textureMemUsed = 3
        case bufferMemUsed = 4
        case videoMemUsed = 5
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Total Objects In Frame", 0),
            ("Total Primitives In Frame", 1),
            ("Total Draw Calls In Frame", 2),
            ("Texture Mem Used", 3),
            ("Buffer Mem Used", 4),
            ("Video Mem Used", 5),]
        }
    }
    public enum Features: UInt32, GodotEnum {
        case shaders = 0
        case multithreaded = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Shaders", 0),
            ("Multithreaded", 1),]
        }
    }

    @Emitter(signal: "frame_pre_draw")
    public struct FramePreDraw {
    }

    @Emitter(signal: "frame_post_draw")
    public struct FramePostDraw {
    }

    private static var __method_binding_texture_2d_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_2d_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2010018390)!
        }
        }
    }()
    public func texture2DCreate(image: Godot.Image?) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        image.withGodotUnsafeRawPointer { __ptr_image in
        withUnsafePointer(to: __ptr_image) { _ptr___ptr_image in
        withUnsafeArgumentPackPointer(_ptr___ptr_image) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_2d_create,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_texture_2d_layered_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_2d_layered_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 913689023)!
        }
        }
    }()
    public func texture2DLayeredCreate(layers: Godot.GodotArray<Godot.Image?>, layeredType: Godot.RenderingServer.TextureLayeredType) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        layers.withGodotUnsafeRawPointer { __ptr_layers in
        layeredType.withGodotUnsafeRawPointer { __ptr_layeredType in
        withUnsafeArgumentPackPointer(__ptr_layers, __ptr_layeredType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_2d_layered_create,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_texture_3d_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_3d_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4036838706)!
        }
        }
    }()
    public func texture3DCreate(format: Godot.Image.Format, width: Int32, height: Int32, depth: Int32, mipmaps: Bool, data: Godot.GodotArray<Godot.Image?>) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        format.withGodotUnsafeRawPointer { __ptr_format in
        width.withGodotUnsafeRawPointer { __ptr_width in
        height.withGodotUnsafeRawPointer { __ptr_height in
        depth.withGodotUnsafeRawPointer { __ptr_depth in
        mipmaps.withGodotUnsafeRawPointer { __ptr_mipmaps in
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_format, __ptr_width, __ptr_height, __ptr_depth, __ptr_mipmaps, __ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_3d_create,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}}
    }

    private static var __method_binding_texture_proxy_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_proxy_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 41030802)!
        }
        }
    }()
    public func textureProxyCreate(base: Godot.RID) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        base.withGodotUnsafeRawPointer { __ptr_base in
        withUnsafeArgumentPackPointer(__ptr_base) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_proxy_create,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_texture_2d_update: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_2d_update").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 999539803)!
        }
        }
    }()
    public func texture2DUpdate(texture: Godot.RID, image: Godot.Image?, layer: Int32) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        image.withGodotUnsafeRawPointer { __ptr_image in
        withUnsafePointer(to: __ptr_image) { _ptr___ptr_image in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_texture, _ptr___ptr_image, __ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_2d_update,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_texture_3d_update: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_3d_update").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 684822712)!
        }
        }
    }()
    public func texture3DUpdate(texture: Godot.RID, data: Godot.GodotArray<Godot.Image?>) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_texture, __ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_3d_update,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_texture_proxy_update: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_proxy_update").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func textureProxyUpdate(texture: Godot.RID, proxyTo: Godot.RID) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        proxyTo.withGodotUnsafeRawPointer { __ptr_proxyTo in
        withUnsafeArgumentPackPointer(__ptr_texture, __ptr_proxyTo) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_proxy_update,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_texture_2d_placeholder_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_2d_placeholder_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func texture2DPlaceholderCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_2d_placeholder_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_texture_2d_layered_placeholder_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_2d_layered_placeholder_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1394585590)!
        }
        }
    }()
    public func texture2DLayeredPlaceholderCreate(layeredType: Godot.RenderingServer.TextureLayeredType) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        layeredType.withGodotUnsafeRawPointer { __ptr_layeredType in
        withUnsafeArgumentPackPointer(__ptr_layeredType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_2d_layered_placeholder_create,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_texture_3d_placeholder_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_3d_placeholder_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func texture3DPlaceholderCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_3d_placeholder_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_texture_2d_get: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_2d_get").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4206205781)!
        }
        }
    }()
    public func texture2DGet(texture: Godot.RID) -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_2d_get,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_texture_2d_layer_get: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_2d_layer_get").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2705440895)!
        }
        }
    }()
    public func texture2DLayerGet(texture: Godot.RID, layer: Int32) -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        withUnsafeArgumentPackPointer(__ptr_texture, __ptr_layer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_2d_layer_get,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_texture_3d_get: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_3d_get").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func texture3DGet(texture: Godot.RID) -> Godot.GodotArray<Godot.Image?> {
        Godot.GodotArray<Godot.Image?>.fromMutatingGodotUnsafePointer { __temporary in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_3d_get,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_texture_replace: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_replace").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func textureReplace(texture: Godot.RID, byTexture: Godot.RID) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        byTexture.withGodotUnsafeRawPointer { __ptr_byTexture in
        withUnsafeArgumentPackPointer(__ptr_texture, __ptr_byTexture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_replace,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_texture_set_size_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_set_size_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4288446313)!
        }
        }
    }()
    public func textureSetSizeOverride(texture: Godot.RID, width: Int32, height: Int32) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        width.withGodotUnsafeRawPointer { __ptr_width in
        height.withGodotUnsafeRawPointer { __ptr_height in
        withUnsafeArgumentPackPointer(__ptr_texture, __ptr_width, __ptr_height) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_set_size_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_texture_set_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_set_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()
    public func textureSetPath(texture: Godot.RID, path: Godot.GodotString) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_texture, __ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_set_path,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_texture_get_path: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_get_path").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 642473191)!
        }
        }
    }()
    public func textureGetPath(texture: Godot.RID) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_get_path,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_texture_get_format: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_get_format").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1932918979)!
        }
        }
    }()
    public func textureGetFormat(texture: Godot.RID) -> Godot.Image.Format {
        Godot.Image.Format.fromMutatingGodotUnsafePointer { __temporary in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_get_format,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_texture_set_force_redraw_if_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_set_force_redraw_if_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func textureSetForceRedrawIfVisible(texture: Godot.RID, enable: Bool) {
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_texture, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_set_force_redraw_if_visible,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_texture_rd_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_rd_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1434128712)!
        }
        }
    }()
    public func textureRdCreate(rdTexture: Godot.RID, layerType: Godot.RenderingServer.TextureLayeredType = RenderingServer.TextureLayeredType(rawValue: 0)!) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        rdTexture.withGodotUnsafeRawPointer { __ptr_rdTexture in
        layerType.withGodotUnsafeRawPointer { __ptr_layerType in
        withUnsafeArgumentPackPointer(__ptr_rdTexture, __ptr_layerType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_rd_create,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_texture_get_rd_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_get_rd_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2790148051)!
        }
        }
    }()
    public func textureGetRdTexture(_ texture: Godot.RID, srgb: Bool = false) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        srgb.withGodotUnsafeRawPointer { __ptr_srgb in
        withUnsafeArgumentPackPointer(__ptr_texture, __ptr_srgb) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_get_rd_texture,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_texture_get_native_handle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "texture_get_native_handle").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1834114100)!
        }
        }
    }()
    public func textureGetNativeHandle(texture: Godot.RID, srgb: Bool = false) -> UInt64 {
        UInt64.fromMutatingGodotUnsafePointer { __temporary in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        srgb.withGodotUnsafeRawPointer { __ptr_srgb in
        withUnsafeArgumentPackPointer(__ptr_texture, __ptr_srgb) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_texture_get_native_handle,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_shader_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shader_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func shaderCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_shader_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_shader_set_code: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shader_set_code").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()
    public func shaderSetCode(shader: Godot.RID, code: Godot.GodotString) {
        shader.withGodotUnsafeRawPointer { __ptr_shader in
        code.withGodotUnsafeRawPointer { __ptr_code in
        withUnsafeArgumentPackPointer(__ptr_shader, __ptr_code) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_shader_set_code,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_shader_set_path_hint: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shader_set_path_hint").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2726140452)!
        }
        }
    }()
    public func shaderSetPathHint(shader: Godot.RID, path: Godot.GodotString) {
        shader.withGodotUnsafeRawPointer { __ptr_shader in
        path.withGodotUnsafeRawPointer { __ptr_path in
        withUnsafeArgumentPackPointer(__ptr_shader, __ptr_path) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_shader_set_path_hint,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_shader_get_code: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shader_get_code").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 642473191)!
        }
        }
    }()
    public func shaderGetCode(shader: Godot.RID) -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        shader.withGodotUnsafeRawPointer { __ptr_shader in
        withUnsafeArgumentPackPointer(__ptr_shader) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_shader_get_code,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_shader_parameter_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_shader_parameter_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func shaderParameterList(shader: Godot.RID) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>.fromMutatingGodotUnsafePointer { __temporary in
        shader.withGodotUnsafeRawPointer { __ptr_shader in
        withUnsafeArgumentPackPointer(__ptr_shader) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_shader_parameter_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_shader_get_parameter_default: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shader_get_parameter_default").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2621281810)!
        }
        }
    }()
    public func shaderGetParameterDefault(shader: Godot.RID, name: Godot.GodotStringName) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        shader.withGodotUnsafeRawPointer { __ptr_shader in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_shader, __ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_shader_get_parameter_default,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_shader_set_default_texture_parameter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shader_set_default_texture_parameter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4094001817)!
        }
        }
    }()
    public func shaderSetDefaultTextureParameter(shader: Godot.RID, name: Godot.GodotStringName, texture: Godot.RID, index: Int32 = 0) {
        shader.withGodotUnsafeRawPointer { __ptr_shader in
        name.withGodotUnsafeRawPointer { __ptr_name in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_shader, __ptr_name, __ptr_texture, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_shader_set_default_texture_parameter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_shader_get_default_texture_parameter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "shader_get_default_texture_parameter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1464608890)!
        }
        }
    }()
    public func shaderGetDefaultTextureParameter(shader: Godot.RID, name: Godot.GodotStringName, index: Int32 = 0) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        shader.withGodotUnsafeRawPointer { __ptr_shader in
        name.withGodotUnsafeRawPointer { __ptr_name in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_shader, __ptr_name, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_shader_get_default_texture_parameter,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_material_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "material_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func materialCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_material_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_material_set_shader: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "material_set_shader").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func materialSetShader(shaderMaterial: Godot.RID, shader: Godot.RID) {
        shaderMaterial.withGodotUnsafeRawPointer { __ptr_shaderMaterial in
        shader.withGodotUnsafeRawPointer { __ptr_shader in
        withUnsafeArgumentPackPointer(__ptr_shaderMaterial, __ptr_shader) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_material_set_shader,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_material_set_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "material_set_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3477296213)!
        }
        }
    }()
    public func materialSetParam<Value: VariantStorableIn>(material: Godot.RID, parameter: Godot.GodotStringName, value: Value) {
        material.withGodotUnsafeRawPointer { __ptr_material in
        parameter.withGodotUnsafeRawPointer { __ptr_parameter in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_material, __ptr_parameter, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_material_set_param,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_material_get_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "material_get_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2621281810)!
        }
        }
    }()
    public func materialGetParam(material: Godot.RID, parameter: Godot.GodotStringName) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        material.withGodotUnsafeRawPointer { __ptr_material in
        parameter.withGodotUnsafeRawPointer { __ptr_parameter in
        withUnsafeArgumentPackPointer(__ptr_material, __ptr_parameter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_material_get_param,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_material_set_render_priority: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "material_set_render_priority").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func materialSetRenderPriority(material: Godot.RID, priority: Int32) {
        material.withGodotUnsafeRawPointer { __ptr_material in
        priority.withGodotUnsafeRawPointer { __ptr_priority in
        withUnsafeArgumentPackPointer(__ptr_material, __ptr_priority) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_material_set_render_priority,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_material_set_next_pass: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "material_set_next_pass").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func materialSetNextPass(material: Godot.RID, nextMaterial: Godot.RID) {
        material.withGodotUnsafeRawPointer { __ptr_material in
        nextMaterial.withGodotUnsafeRawPointer { __ptr_nextMaterial in
        withUnsafeArgumentPackPointer(__ptr_material, __ptr_nextMaterial) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_material_set_next_pass,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_mesh_create_from_surfaces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_create_from_surfaces").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4291747531)!
        }
        }
    }()
    public func meshCreateFromSurfaces(_ surfaces: Godot.GodotArray<Godot.AnyGodotDictionary>, blendShapeCount: Int32 = 0) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        surfaces.withGodotUnsafeRawPointer { __ptr_surfaces in
        blendShapeCount.withGodotUnsafeRawPointer { __ptr_blendShapeCount in
        withUnsafeArgumentPackPointer(__ptr_surfaces, __ptr_blendShapeCount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_create_from_surfaces,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_mesh_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func meshCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_mesh_surface_get_format_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_surface_get_format_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2981368685)!
        }
        }
    }()
    public func meshSurfaceGetFormatOffset(format: Godot.RenderingServer.ArrayFormat, vertexCount: Int32, arrayIndex: Int32) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        format.withGodotUnsafeRawPointer { __ptr_format in
        vertexCount.withGodotUnsafeRawPointer { __ptr_vertexCount in
        arrayIndex.withGodotUnsafeRawPointer { __ptr_arrayIndex in
        withUnsafeArgumentPackPointer(__ptr_format, __ptr_vertexCount, __ptr_arrayIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_surface_get_format_offset,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_mesh_surface_get_format_vertex_stride: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_surface_get_format_vertex_stride").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3188363337)!
        }
        }
    }()
    public func meshSurfaceGetFormatVertexStride(format: Godot.RenderingServer.ArrayFormat, vertexCount: Int32) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        format.withGodotUnsafeRawPointer { __ptr_format in
        vertexCount.withGodotUnsafeRawPointer { __ptr_vertexCount in
        withUnsafeArgumentPackPointer(__ptr_format, __ptr_vertexCount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_surface_get_format_vertex_stride,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_mesh_surface_get_format_normal_tangent_stride: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_surface_get_format_normal_tangent_stride").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3188363337)!
        }
        }
    }()
    public func meshSurfaceGetFormatNormalTangentStride(format: Godot.RenderingServer.ArrayFormat, vertexCount: Int32) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        format.withGodotUnsafeRawPointer { __ptr_format in
        vertexCount.withGodotUnsafeRawPointer { __ptr_vertexCount in
        withUnsafeArgumentPackPointer(__ptr_format, __ptr_vertexCount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_surface_get_format_normal_tangent_stride,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_mesh_surface_get_format_attribute_stride: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_surface_get_format_attribute_stride").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3188363337)!
        }
        }
    }()
    public func meshSurfaceGetFormatAttributeStride(format: Godot.RenderingServer.ArrayFormat, vertexCount: Int32) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        format.withGodotUnsafeRawPointer { __ptr_format in
        vertexCount.withGodotUnsafeRawPointer { __ptr_vertexCount in
        withUnsafeArgumentPackPointer(__ptr_format, __ptr_vertexCount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_surface_get_format_attribute_stride,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_mesh_surface_get_format_skin_stride: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_surface_get_format_skin_stride").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3188363337)!
        }
        }
    }()
    public func meshSurfaceGetFormatSkinStride(format: Godot.RenderingServer.ArrayFormat, vertexCount: Int32) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        format.withGodotUnsafeRawPointer { __ptr_format in
        vertexCount.withGodotUnsafeRawPointer { __ptr_vertexCount in
        withUnsafeArgumentPackPointer(__ptr_format, __ptr_vertexCount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_surface_get_format_skin_stride,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_mesh_add_surface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_add_surface").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1217542888)!
        }
        }
    }()
    public func meshAddSurface<Value1: VariantStorable, Value2: VariantStorable>(mesh: Godot.RID, surface: Godot.GodotDictionary<Value1, Value2>) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        surface.withGodotUnsafeRawPointer { __ptr_surface in
        withUnsafeArgumentPackPointer(__ptr_mesh, __ptr_surface) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_add_surface,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_mesh_add_surface_from_arrays: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_add_surface_from_arrays").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2342446560)!
        }
        }
    }()
    public func meshAddSurfaceFromArrays<Value1: VariantStorable, Value2: VariantStorable, Value3: VariantStorable, Value4: VariantStorable>(mesh: Godot.RID, primitive: Godot.RenderingServer.PrimitiveType, arrays: Godot.GodotArray<Value1>, blendShapes: Godot.GodotArray<Value2> = [], lods: Godot.GodotDictionary<Value3, Value4> = [:], compressFormat: Godot.RenderingServer.ArrayFormat = RenderingServer.ArrayFormat(rawValue: 0)) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        primitive.withGodotUnsafeRawPointer { __ptr_primitive in
        arrays.withGodotUnsafeRawPointer { __ptr_arrays in
        blendShapes.withGodotUnsafeRawPointer { __ptr_blendShapes in
        lods.withGodotUnsafeRawPointer { __ptr_lods in
        compressFormat.withGodotUnsafeRawPointer { __ptr_compressFormat in
        withUnsafeArgumentPackPointer(__ptr_mesh, __ptr_primitive, __ptr_arrays, __ptr_blendShapes, __ptr_lods, __ptr_compressFormat) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_add_surface_from_arrays,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_mesh_get_blend_shape_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_get_blend_shape_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func meshGetBlendShapeCount(mesh: Godot.RID) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        withUnsafeArgumentPackPointer(__ptr_mesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_get_blend_shape_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_mesh_set_blend_shape_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_set_blend_shape_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1294662092)!
        }
        }
    }()
    public func meshSetBlendShapeMode(mesh: Godot.RID, mode: Godot.RenderingServer.BlendShapeMode) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_mesh, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_set_blend_shape_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_mesh_get_blend_shape_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_get_blend_shape_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4282291819)!
        }
        }
    }()
    public func meshGetBlendShapeMode(mesh: Godot.RID) -> Godot.RenderingServer.BlendShapeMode {
        Godot.RenderingServer.BlendShapeMode.fromMutatingGodotUnsafePointer { __temporary in
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        withUnsafeArgumentPackPointer(__ptr_mesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_get_blend_shape_mode,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_mesh_surface_set_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_surface_set_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2310537182)!
        }
        }
    }()
    public func meshSurfaceSetMaterial(mesh: Godot.RID, surface: Int32, material: Godot.RID) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        surface.withGodotUnsafeRawPointer { __ptr_surface in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafeArgumentPackPointer(__ptr_mesh, __ptr_surface, __ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_surface_set_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_mesh_surface_get_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_surface_get_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1066463050)!
        }
        }
    }()
    public func meshSurfaceGetMaterial(mesh: Godot.RID, surface: Int32) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        surface.withGodotUnsafeRawPointer { __ptr_surface in
        withUnsafeArgumentPackPointer(__ptr_mesh, __ptr_surface) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_surface_get_material,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_mesh_get_surface: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_get_surface").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 186674697)!
        }
        }
    }()
    public func meshGetSurface(mesh: Godot.RID, surface: Int32) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary.fromMutatingGodotUnsafePointer { __temporary in
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        surface.withGodotUnsafeRawPointer { __ptr_surface in
        withUnsafeArgumentPackPointer(__ptr_mesh, __ptr_surface) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_get_surface,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_mesh_surface_get_arrays: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_surface_get_arrays").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1778388067)!
        }
        }
    }()
    public func meshSurfaceGetArrays(mesh: Godot.RID, surface: Int32) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray.fromMutatingGodotUnsafePointer { __temporary in
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        surface.withGodotUnsafeRawPointer { __ptr_surface in
        withUnsafeArgumentPackPointer(__ptr_mesh, __ptr_surface) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_surface_get_arrays,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_mesh_surface_get_blend_shape_arrays: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_surface_get_blend_shape_arrays").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1778388067)!
        }
        }
    }()
    public func meshSurfaceGetBlendShapeArrays(mesh: Godot.RID, surface: Int32) -> Godot.GodotArray<Godot.AnyGodotArray> {
        Godot.GodotArray<Godot.AnyGodotArray>.fromMutatingGodotUnsafePointer { __temporary in
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        surface.withGodotUnsafeRawPointer { __ptr_surface in
        withUnsafeArgumentPackPointer(__ptr_mesh, __ptr_surface) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_surface_get_blend_shape_arrays,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_mesh_get_surface_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_get_surface_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func meshGetSurfaceCount(mesh: Godot.RID) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        withUnsafeArgumentPackPointer(__ptr_mesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_get_surface_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_mesh_set_custom_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_set_custom_aabb").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3696536120)!
        }
        }
    }()
    public func meshSetCustomAabb(mesh: Godot.RID, aabb: Godot.AABB) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        aabb.withGodotUnsafeRawPointer { __ptr_aabb in
        withUnsafeArgumentPackPointer(__ptr_mesh, __ptr_aabb) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_set_custom_aabb,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_mesh_get_custom_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_get_custom_aabb").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 974181306)!
        }
        }
    }()
    public func meshGetCustomAabb(mesh: Godot.RID) -> Godot.AABB {
        Godot.AABB.fromMutatingGodotUnsafePointer { __temporary in
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        withUnsafeArgumentPackPointer(__ptr_mesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_get_custom_aabb,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_mesh_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func meshClear(mesh: Godot.RID) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        withUnsafeArgumentPackPointer(__ptr_mesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_clear,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_mesh_surface_update_vertex_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_surface_update_vertex_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2900195149)!
        }
        }
    }()
    public func meshSurfaceUpdateVertexRegion(mesh: Godot.RID, surface: Int32, offset: Int32, data: Godot.PackedByteArray) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        surface.withGodotUnsafeRawPointer { __ptr_surface in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_mesh, __ptr_surface, __ptr_offset, __ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_surface_update_vertex_region,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_mesh_surface_update_attribute_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_surface_update_attribute_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2900195149)!
        }
        }
    }()
    public func meshSurfaceUpdateAttributeRegion(mesh: Godot.RID, surface: Int32, offset: Int32, data: Godot.PackedByteArray) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        surface.withGodotUnsafeRawPointer { __ptr_surface in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_mesh, __ptr_surface, __ptr_offset, __ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_surface_update_attribute_region,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_mesh_surface_update_skin_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_surface_update_skin_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2900195149)!
        }
        }
    }()
    public func meshSurfaceUpdateSkinRegion(mesh: Godot.RID, surface: Int32, offset: Int32, data: Godot.PackedByteArray) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        surface.withGodotUnsafeRawPointer { __ptr_surface in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        data.withGodotUnsafeRawPointer { __ptr_data in
        withUnsafeArgumentPackPointer(__ptr_mesh, __ptr_surface, __ptr_offset, __ptr_data) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_surface_update_skin_region,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_mesh_set_shadow_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "mesh_set_shadow_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func meshSetShadowMesh(_ mesh: Godot.RID, shadowMesh: Godot.RID) {
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        shadowMesh.withGodotUnsafeRawPointer { __ptr_shadowMesh in
        withUnsafeArgumentPackPointer(__ptr_mesh, __ptr_shadowMesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_mesh_set_shadow_mesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_multimesh_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func multimeshCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_multimesh_allocate_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_allocate_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 283685892)!
        }
        }
    }()
    public func multimeshAllocateData(multimesh: Godot.RID, instances: Int32, transformFormat: Godot.RenderingServer.MultimeshTransformFormat, colorFormat: Bool = false, customDataFormat: Bool = false) {
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        instances.withGodotUnsafeRawPointer { __ptr_instances in
        transformFormat.withGodotUnsafeRawPointer { __ptr_transformFormat in
        colorFormat.withGodotUnsafeRawPointer { __ptr_colorFormat in
        customDataFormat.withGodotUnsafeRawPointer { __ptr_customDataFormat in
        withUnsafeArgumentPackPointer(__ptr_multimesh, __ptr_instances, __ptr_transformFormat, __ptr_colorFormat, __ptr_customDataFormat) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_allocate_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_multimesh_get_instance_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_get_instance_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func multimeshGetInstanceCount(multimesh: Godot.RID) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        withUnsafeArgumentPackPointer(__ptr_multimesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_get_instance_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_multimesh_set_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_set_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func multimeshSetMesh(multimesh: Godot.RID, mesh: Godot.RID) {
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        withUnsafeArgumentPackPointer(__ptr_multimesh, __ptr_mesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_set_mesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_multimesh_instance_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_instance_set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 675327471)!
        }
        }
    }()
    public func multimeshInstanceSetTransform(multimesh: Godot.RID, index: Int32, transform: Godot.Transform3D) {
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        index.withGodotUnsafeRawPointer { __ptr_index in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_multimesh, __ptr_index, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_instance_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_multimesh_instance_set_transform_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_instance_set_transform_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 736082694)!
        }
        }
    }()
    public func multimeshInstanceSetTransform2D(multimesh: Godot.RID, index: Int32, transform: Godot.Transform2D) {
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        index.withGodotUnsafeRawPointer { __ptr_index in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_multimesh, __ptr_index, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_instance_set_transform_2d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_multimesh_instance_set_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_instance_set_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 176975443)!
        }
        }
    }()
    public func multimeshInstanceSetColor(multimesh: Godot.RID, index: Int32, color: Godot.Color) {
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        index.withGodotUnsafeRawPointer { __ptr_index in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_multimesh, __ptr_index, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_instance_set_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_multimesh_instance_set_custom_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_instance_set_custom_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 176975443)!
        }
        }
    }()
    public func multimeshInstanceSetCustomData(multimesh: Godot.RID, index: Int32, customData: Godot.Color) {
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        index.withGodotUnsafeRawPointer { __ptr_index in
        customData.withGodotUnsafeRawPointer { __ptr_customData in
        withUnsafeArgumentPackPointer(__ptr_multimesh, __ptr_index, __ptr_customData) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_instance_set_custom_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_multimesh_get_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_get_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func multimeshGetMesh(multimesh: Godot.RID) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        withUnsafeArgumentPackPointer(__ptr_multimesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_get_mesh,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_multimesh_get_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_get_aabb").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 974181306)!
        }
        }
    }()
    public func multimeshGetAabb(multimesh: Godot.RID) -> Godot.AABB {
        Godot.AABB.fromMutatingGodotUnsafePointer { __temporary in
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        withUnsafeArgumentPackPointer(__ptr_multimesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_get_aabb,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_multimesh_instance_get_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_instance_get_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1050775521)!
        }
        }
    }()
    public func multimeshInstanceGetTransform(multimesh: Godot.RID, index: Int32) -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_multimesh, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_instance_get_transform,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_multimesh_instance_get_transform_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_instance_get_transform_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1324854622)!
        }
        }
    }()
    public func multimeshInstanceGetTransform2D(multimesh: Godot.RID, index: Int32) -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_multimesh, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_instance_get_transform_2d,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_multimesh_instance_get_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_instance_get_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2946315076)!
        }
        }
    }()
    public func multimeshInstanceGetColor(multimesh: Godot.RID, index: Int32) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_multimesh, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_instance_get_color,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_multimesh_instance_get_custom_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_instance_get_custom_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2946315076)!
        }
        }
    }()
    public func multimeshInstanceGetCustomData(multimesh: Godot.RID, index: Int32) -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_multimesh, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_instance_get_custom_data,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_multimesh_set_visible_instances: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_set_visible_instances").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func multimeshSetVisibleInstances(multimesh: Godot.RID, visible: Int32) {
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        visible.withGodotUnsafeRawPointer { __ptr_visible in
        withUnsafeArgumentPackPointer(__ptr_multimesh, __ptr_visible) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_set_visible_instances,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_multimesh_get_visible_instances: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_get_visible_instances").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func multimeshGetVisibleInstances(multimesh: Godot.RID) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        withUnsafeArgumentPackPointer(__ptr_multimesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_get_visible_instances,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_multimesh_set_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_set_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2960552364)!
        }
        }
    }()
    public func multimeshSetBuffer(multimesh: Godot.RID, buffer: Godot.PackedFloat32Array) {
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        buffer.withGodotUnsafeRawPointer { __ptr_buffer in
        withUnsafeArgumentPackPointer(__ptr_multimesh, __ptr_buffer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_set_buffer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_multimesh_get_buffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "multimesh_get_buffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3964669176)!
        }
        }
    }()
    public func multimeshGetBuffer(multimesh: Godot.RID) -> Godot.PackedFloat32Array {
        Godot.PackedFloat32Array.fromMutatingGodotUnsafePointer { __temporary in
        multimesh.withGodotUnsafeRawPointer { __ptr_multimesh in
        withUnsafeArgumentPackPointer(__ptr_multimesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_multimesh_get_buffer,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_skeleton_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "skeleton_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func skeletonCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_skeleton_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_skeleton_allocate_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "skeleton_allocate_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1904426712)!
        }
        }
    }()
    public func skeletonAllocateData(skeleton: Godot.RID, bones: Int32, is2DSkeleton: Bool = false) {
        skeleton.withGodotUnsafeRawPointer { __ptr_skeleton in
        bones.withGodotUnsafeRawPointer { __ptr_bones in
        is2DSkeleton.withGodotUnsafeRawPointer { __ptr_is2DSkeleton in
        withUnsafeArgumentPackPointer(__ptr_skeleton, __ptr_bones, __ptr_is2DSkeleton) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_skeleton_allocate_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_skeleton_get_bone_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "skeleton_get_bone_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2198884583)!
        }
        }
    }()
    public func skeletonGetBoneCount(skeleton: Godot.RID) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        skeleton.withGodotUnsafeRawPointer { __ptr_skeleton in
        withUnsafeArgumentPackPointer(__ptr_skeleton) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_skeleton_get_bone_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_skeleton_bone_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "skeleton_bone_set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 675327471)!
        }
        }
    }()
    public func skeletonBoneSetTransform(skeleton: Godot.RID, bone: Int32, transform: Godot.Transform3D) {
        skeleton.withGodotUnsafeRawPointer { __ptr_skeleton in
        bone.withGodotUnsafeRawPointer { __ptr_bone in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_skeleton, __ptr_bone, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_skeleton_bone_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_skeleton_bone_get_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "skeleton_bone_get_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1050775521)!
        }
        }
    }()
    public func skeletonBoneGetTransform(skeleton: Godot.RID, bone: Int32) -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        skeleton.withGodotUnsafeRawPointer { __ptr_skeleton in
        bone.withGodotUnsafeRawPointer { __ptr_bone in
        withUnsafeArgumentPackPointer(__ptr_skeleton, __ptr_bone) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_skeleton_bone_get_transform,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_skeleton_bone_set_transform_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "skeleton_bone_set_transform_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 736082694)!
        }
        }
    }()
    public func skeletonBoneSetTransform2D(skeleton: Godot.RID, bone: Int32, transform: Godot.Transform2D) {
        skeleton.withGodotUnsafeRawPointer { __ptr_skeleton in
        bone.withGodotUnsafeRawPointer { __ptr_bone in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_skeleton, __ptr_bone, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_skeleton_bone_set_transform_2d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_skeleton_bone_get_transform_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "skeleton_bone_get_transform_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1324854622)!
        }
        }
    }()
    public func skeletonBoneGetTransform2D(skeleton: Godot.RID, bone: Int32) -> Godot.Transform2D {
        Godot.Transform2D.fromMutatingGodotUnsafePointer { __temporary in
        skeleton.withGodotUnsafeRawPointer { __ptr_skeleton in
        bone.withGodotUnsafeRawPointer { __ptr_bone in
        withUnsafeArgumentPackPointer(__ptr_skeleton, __ptr_bone) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_skeleton_bone_get_transform_2d,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_skeleton_set_base_transform_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "skeleton_set_base_transform_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1246044741)!
        }
        }
    }()
    public func skeletonSetBaseTransform2D(skeleton: Godot.RID, baseTransform: Godot.Transform2D) {
        skeleton.withGodotUnsafeRawPointer { __ptr_skeleton in
        baseTransform.withGodotUnsafeRawPointer { __ptr_baseTransform in
        withUnsafeArgumentPackPointer(__ptr_skeleton, __ptr_baseTransform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_skeleton_set_base_transform_2d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_directional_light_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "directional_light_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func directionalLightCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_directional_light_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_omni_light_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "omni_light_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func omniLightCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_omni_light_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_spot_light_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "spot_light_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func spotLightCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_spot_light_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_light_set_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_set_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2948539648)!
        }
        }
    }()
    public func lightSetColor(light: Godot.RID, color: Godot.Color) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_set_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_light_set_param: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_set_param").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 501936875)!
        }
        }
    }()
    public func lightSetParam(light: Godot.RID, param: Godot.RenderingServer.LightParam, value: Double) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        param.withGodotUnsafeRawPointer { __ptr_param in
        value.withGodotUnsafeRawPointer { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_param, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_set_param,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_light_set_shadow: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_set_shadow").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func lightSetShadow(light: Godot.RID, enabled: Bool) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_set_shadow,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_light_set_projector: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_set_projector").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func lightSetProjector(light: Godot.RID, texture: Godot.RID) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_set_projector,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_light_set_negative: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_set_negative").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func lightSetNegative(light: Godot.RID, enable: Bool) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_set_negative,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_light_set_cull_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_set_cull_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func lightSetCullMask(light: Godot.RID, mask: UInt32) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_set_cull_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_light_set_distance_fade: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_set_distance_fade").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1622292572)!
        }
        }
    }()
    public func lightSetDistanceFade(decal: Godot.RID, enabled: Bool, begin: Double, shadow: Double, length: Double) {
        decal.withGodotUnsafeRawPointer { __ptr_decal in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        begin.withGodotUnsafeRawPointer { __ptr_begin in
        shadow.withGodotUnsafeRawPointer { __ptr_shadow in
        length.withGodotUnsafeRawPointer { __ptr_length in
        withUnsafeArgumentPackPointer(__ptr_decal, __ptr_enabled, __ptr_begin, __ptr_shadow, __ptr_length) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_set_distance_fade,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_light_set_reverse_cull_face_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_set_reverse_cull_face_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func lightSetReverseCullFaceMode(light: Godot.RID, enabled: Bool) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_set_reverse_cull_face_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_light_set_bake_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_set_bake_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1048525260)!
        }
        }
    }()
    public func lightSetBakeMode(light: Godot.RID, bakeMode: Godot.RenderingServer.LightBakeMode) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        bakeMode.withGodotUnsafeRawPointer { __ptr_bakeMode in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_bakeMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_set_bake_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_light_set_max_sdfgi_cascade: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_set_max_sdfgi_cascade").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func lightSetMaxSdfgiCascade(light: Godot.RID, cascade: UInt32) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        cascade.withGodotUnsafeRawPointer { __ptr_cascade in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_cascade) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_set_max_sdfgi_cascade,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_light_omni_set_shadow_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_omni_set_shadow_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2552677200)!
        }
        }
    }()
    public func lightOmniSetShadowMode(light: Godot.RID, mode: Godot.RenderingServer.LightOmniShadowMode) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_omni_set_shadow_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_light_directional_set_shadow_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_directional_set_shadow_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 380462970)!
        }
        }
    }()
    public func lightDirectionalSetShadowMode(light: Godot.RID, mode: Godot.RenderingServer.LightDirectionalShadowMode) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_directional_set_shadow_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_light_directional_set_blend_splits: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_directional_set_blend_splits").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func lightDirectionalSetBlendSplits(light: Godot.RID, enable: Bool) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_directional_set_blend_splits,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_light_directional_set_sky_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_directional_set_sky_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2559740754)!
        }
        }
    }()
    public func lightDirectionalSetSkyMode(light: Godot.RID, mode: Godot.RenderingServer.LightDirectionalSkyMode) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_directional_set_sky_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_light_projectors_set_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "light_projectors_set_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 43944325)!
        }
        }
    }()
    public func lightProjectorsSetFilter(_ filter: Godot.RenderingServer.LightProjectorFilter) {
        filter.withGodotUnsafeRawPointer { __ptr_filter in
        withUnsafeArgumentPackPointer(__ptr_filter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_light_projectors_set_filter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_positional_soft_shadow_filter_set_quality: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "positional_soft_shadow_filter_set_quality").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3613045266)!
        }
        }
    }()
    public func positionalSoftShadowFilterSetQuality(_ quality: Godot.RenderingServer.ShadowQuality) {
        quality.withGodotUnsafeRawPointer { __ptr_quality in
        withUnsafeArgumentPackPointer(__ptr_quality) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_positional_soft_shadow_filter_set_quality,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_directional_soft_shadow_filter_set_quality: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "directional_soft_shadow_filter_set_quality").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3613045266)!
        }
        }
    }()
    public func directionalSoftShadowFilterSetQuality(_ quality: Godot.RenderingServer.ShadowQuality) {
        quality.withGodotUnsafeRawPointer { __ptr_quality in
        withUnsafeArgumentPackPointer(__ptr_quality) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_directional_soft_shadow_filter_set_quality,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_directional_shadow_atlas_set_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "directional_shadow_atlas_set_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 300928843)!
        }
        }
    }()
    public func directionalShadowAtlasSetSize(_ size: Int32, is16bits: Bool) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        is16bits.withGodotUnsafeRawPointer { __ptr_is16bits in
        withUnsafeArgumentPackPointer(__ptr_size, __ptr_is16bits) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_directional_shadow_atlas_set_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reflection_probe_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func reflectionProbeCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_reflection_probe_set_update_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_set_update_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3853670147)!
        }
        }
    }()
    public func reflectionProbeSetUpdateMode(probe: Godot.RID, mode: Godot.RenderingServer.ReflectionProbeUpdateMode) {
        probe.withGodotUnsafeRawPointer { __ptr_probe in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_probe, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_set_update_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reflection_probe_set_intensity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_set_intensity").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func reflectionProbeSetIntensity(probe: Godot.RID, intensity: Double) {
        probe.withGodotUnsafeRawPointer { __ptr_probe in
        intensity.withGodotUnsafeRawPointer { __ptr_intensity in
        withUnsafeArgumentPackPointer(__ptr_probe, __ptr_intensity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_set_intensity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reflection_probe_set_ambient_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_set_ambient_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 184163074)!
        }
        }
    }()
    public func reflectionProbeSetAmbientMode(probe: Godot.RID, mode: Godot.RenderingServer.ReflectionProbeAmbientMode) {
        probe.withGodotUnsafeRawPointer { __ptr_probe in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_probe, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_set_ambient_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reflection_probe_set_ambient_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_set_ambient_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2948539648)!
        }
        }
    }()
    public func reflectionProbeSetAmbientColor(probe: Godot.RID, color: Godot.Color) {
        probe.withGodotUnsafeRawPointer { __ptr_probe in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_probe, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_set_ambient_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reflection_probe_set_ambient_energy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_set_ambient_energy").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func reflectionProbeSetAmbientEnergy(probe: Godot.RID, energy: Double) {
        probe.withGodotUnsafeRawPointer { __ptr_probe in
        energy.withGodotUnsafeRawPointer { __ptr_energy in
        withUnsafeArgumentPackPointer(__ptr_probe, __ptr_energy) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_set_ambient_energy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reflection_probe_set_max_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_set_max_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func reflectionProbeSetMaxDistance(probe: Godot.RID, distance: Double) {
        probe.withGodotUnsafeRawPointer { __ptr_probe in
        distance.withGodotUnsafeRawPointer { __ptr_distance in
        withUnsafeArgumentPackPointer(__ptr_probe, __ptr_distance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_set_max_distance,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reflection_probe_set_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_set_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func reflectionProbeSetSize(probe: Godot.RID, size: Godot.Vector3) {
        probe.withGodotUnsafeRawPointer { __ptr_probe in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_probe, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_set_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reflection_probe_set_origin_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_set_origin_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func reflectionProbeSetOriginOffset(probe: Godot.RID, offset: Godot.Vector3) {
        probe.withGodotUnsafeRawPointer { __ptr_probe in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_probe, __ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_set_origin_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reflection_probe_set_as_interior: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_set_as_interior").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func reflectionProbeSetAsInterior(probe: Godot.RID, enable: Bool) {
        probe.withGodotUnsafeRawPointer { __ptr_probe in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_probe, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_set_as_interior,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reflection_probe_set_enable_box_projection: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_set_enable_box_projection").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func reflectionProbeSetEnableBoxProjection(probe: Godot.RID, enable: Bool) {
        probe.withGodotUnsafeRawPointer { __ptr_probe in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_probe, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_set_enable_box_projection,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reflection_probe_set_enable_shadows: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_set_enable_shadows").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func reflectionProbeSetEnableShadows(probe: Godot.RID, enable: Bool) {
        probe.withGodotUnsafeRawPointer { __ptr_probe in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_probe, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_set_enable_shadows,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reflection_probe_set_cull_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_set_cull_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func reflectionProbeSetCullMask(probe: Godot.RID, layers: UInt32) {
        probe.withGodotUnsafeRawPointer { __ptr_probe in
        layers.withGodotUnsafeRawPointer { __ptr_layers in
        withUnsafeArgumentPackPointer(__ptr_probe, __ptr_layers) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_set_cull_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reflection_probe_set_resolution: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_set_resolution").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func reflectionProbeSetResolution(probe: Godot.RID, resolution: Int32) {
        probe.withGodotUnsafeRawPointer { __ptr_probe in
        resolution.withGodotUnsafeRawPointer { __ptr_resolution in
        withUnsafeArgumentPackPointer(__ptr_probe, __ptr_resolution) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_set_resolution,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_reflection_probe_set_mesh_lod_threshold: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "reflection_probe_set_mesh_lod_threshold").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func reflectionProbeSetMeshLodThreshold(probe: Godot.RID, pixels: Double) {
        probe.withGodotUnsafeRawPointer { __ptr_probe in
        pixels.withGodotUnsafeRawPointer { __ptr_pixels in
        withUnsafeArgumentPackPointer(__ptr_probe, __ptr_pixels) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_reflection_probe_set_mesh_lod_threshold,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_decal_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "decal_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func decalCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_decal_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_decal_set_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "decal_set_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func decalSetSize(decal: Godot.RID, size: Godot.Vector3) {
        decal.withGodotUnsafeRawPointer { __ptr_decal in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_decal, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_decal_set_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_decal_set_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "decal_set_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3953344054)!
        }
        }
    }()
    public func decalSetTexture(decal: Godot.RID, type: Godot.RenderingServer.DecalTexture, texture: Godot.RID) {
        decal.withGodotUnsafeRawPointer { __ptr_decal in
        type.withGodotUnsafeRawPointer { __ptr_type in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_decal, __ptr_type, __ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_decal_set_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_decal_set_emission_energy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "decal_set_emission_energy").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func decalSetEmissionEnergy(decal: Godot.RID, energy: Double) {
        decal.withGodotUnsafeRawPointer { __ptr_decal in
        energy.withGodotUnsafeRawPointer { __ptr_energy in
        withUnsafeArgumentPackPointer(__ptr_decal, __ptr_energy) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_decal_set_emission_energy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_decal_set_albedo_mix: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "decal_set_albedo_mix").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func decalSetAlbedoMix(decal: Godot.RID, albedoMix: Double) {
        decal.withGodotUnsafeRawPointer { __ptr_decal in
        albedoMix.withGodotUnsafeRawPointer { __ptr_albedoMix in
        withUnsafeArgumentPackPointer(__ptr_decal, __ptr_albedoMix) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_decal_set_albedo_mix,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_decal_set_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "decal_set_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2948539648)!
        }
        }
    }()
    public func decalSetModulate(decal: Godot.RID, color: Godot.Color) {
        decal.withGodotUnsafeRawPointer { __ptr_decal in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_decal, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_decal_set_modulate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_decal_set_cull_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "decal_set_cull_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func decalSetCullMask(decal: Godot.RID, mask: UInt32) {
        decal.withGodotUnsafeRawPointer { __ptr_decal in
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_decal, __ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_decal_set_cull_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_decal_set_distance_fade: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "decal_set_distance_fade").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2972769666)!
        }
        }
    }()
    public func decalSetDistanceFade(decal: Godot.RID, enabled: Bool, begin: Double, length: Double) {
        decal.withGodotUnsafeRawPointer { __ptr_decal in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        begin.withGodotUnsafeRawPointer { __ptr_begin in
        length.withGodotUnsafeRawPointer { __ptr_length in
        withUnsafeArgumentPackPointer(__ptr_decal, __ptr_enabled, __ptr_begin, __ptr_length) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_decal_set_distance_fade,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_decal_set_fade: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "decal_set_fade").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2513314492)!
        }
        }
    }()
    public func decalSetFade(decal: Godot.RID, above: Double, below: Double) {
        decal.withGodotUnsafeRawPointer { __ptr_decal in
        above.withGodotUnsafeRawPointer { __ptr_above in
        below.withGodotUnsafeRawPointer { __ptr_below in
        withUnsafeArgumentPackPointer(__ptr_decal, __ptr_above, __ptr_below) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_decal_set_fade,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_decal_set_normal_fade: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "decal_set_normal_fade").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func decalSetNormalFade(decal: Godot.RID, fade: Double) {
        decal.withGodotUnsafeRawPointer { __ptr_decal in
        fade.withGodotUnsafeRawPointer { __ptr_fade in
        withUnsafeArgumentPackPointer(__ptr_decal, __ptr_fade) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_decal_set_normal_fade,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_decals_set_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "decals_set_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3519875702)!
        }
        }
    }()
    public func decalsSetFilter(_ filter: Godot.RenderingServer.DecalFilter) {
        filter.withGodotUnsafeRawPointer { __ptr_filter in
        withUnsafeArgumentPackPointer(__ptr_filter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_decals_set_filter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_gi_set_use_half_resolution: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "gi_set_use_half_resolution").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func giSetUseHalfResolution(_ halfResolution: Bool) {
        halfResolution.withGodotUnsafeRawPointer { __ptr_halfResolution in
        withUnsafeArgumentPackPointer(__ptr_halfResolution) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_gi_set_use_half_resolution,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_voxel_gi_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func voxelGiCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_voxel_gi_allocate_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_allocate_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4108223027)!
        }
        }
    }()
    public func voxelGiAllocateData(voxelGi: Godot.RID, toCellXform cellXform: Godot.Transform3D, aabb: Godot.AABB, octreeSize: Godot.Vector3i, octreeCells: Godot.PackedByteArray, dataCells: Godot.PackedByteArray, distanceField: Godot.PackedByteArray, levelCounts: Godot.PackedInt32Array) {
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        cellXform.withGodotUnsafeRawPointer { __ptr_cellXform in
        aabb.withGodotUnsafeRawPointer { __ptr_aabb in
        octreeSize.withGodotUnsafeRawPointer { __ptr_octreeSize in
        octreeCells.withGodotUnsafeRawPointer { __ptr_octreeCells in
        dataCells.withGodotUnsafeRawPointer { __ptr_dataCells in
        distanceField.withGodotUnsafeRawPointer { __ptr_distanceField in
        levelCounts.withGodotUnsafeRawPointer { __ptr_levelCounts in
        withUnsafeArgumentPackPointer(__ptr_voxelGi, __ptr_cellXform, __ptr_aabb, __ptr_octreeSize, __ptr_octreeCells, __ptr_dataCells, __ptr_distanceField, __ptr_levelCounts) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_allocate_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}
    }

    private static var __method_binding_voxel_gi_get_octree_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_get_octree_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2607699645)!
        }
        }
    }()
    public func voxelGiGetOctreeSize(voxelGi: Godot.RID) -> Godot.Vector3i {
        Godot.Vector3i.fromMutatingGodotUnsafePointer { __temporary in
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        withUnsafeArgumentPackPointer(__ptr_voxelGi) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_get_octree_size,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_voxel_gi_get_octree_cells: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_get_octree_cells").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3348040486)!
        }
        }
    }()
    public func voxelGiGetOctreeCells(voxelGi: Godot.RID) -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        withUnsafeArgumentPackPointer(__ptr_voxelGi) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_get_octree_cells,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_voxel_gi_get_data_cells: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_get_data_cells").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3348040486)!
        }
        }
    }()
    public func voxelGiGetDataCells(voxelGi: Godot.RID) -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        withUnsafeArgumentPackPointer(__ptr_voxelGi) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_get_data_cells,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_voxel_gi_get_distance_field: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_get_distance_field").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3348040486)!
        }
        }
    }()
    public func voxelGiGetDistanceField(voxelGi: Godot.RID) -> Godot.PackedByteArray {
        Godot.PackedByteArray.fromMutatingGodotUnsafePointer { __temporary in
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        withUnsafeArgumentPackPointer(__ptr_voxelGi) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_get_distance_field,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_voxel_gi_get_level_counts: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_get_level_counts").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 788230395)!
        }
        }
    }()
    public func voxelGiGetLevelCounts(voxelGi: Godot.RID) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        withUnsafeArgumentPackPointer(__ptr_voxelGi) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_get_level_counts,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_voxel_gi_get_to_cell_xform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_get_to_cell_xform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1128465797)!
        }
        }
    }()
    public func voxelGiGetToCellXform(voxelGi: Godot.RID) -> Godot.Transform3D {
        Godot.Transform3D.fromMutatingGodotUnsafePointer { __temporary in
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        withUnsafeArgumentPackPointer(__ptr_voxelGi) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_get_to_cell_xform,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_voxel_gi_set_dynamic_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_set_dynamic_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func voxelGiSetDynamicRange(voxelGi: Godot.RID, range: Double) {
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        range.withGodotUnsafeRawPointer { __ptr_range in
        withUnsafeArgumentPackPointer(__ptr_voxelGi, __ptr_range) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_set_dynamic_range,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_voxel_gi_set_propagation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_set_propagation").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func voxelGiSetPropagation(voxelGi: Godot.RID, amount: Double) {
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        withUnsafeArgumentPackPointer(__ptr_voxelGi, __ptr_amount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_set_propagation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_voxel_gi_set_energy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_set_energy").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func voxelGiSetEnergy(voxelGi: Godot.RID, energy: Double) {
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        energy.withGodotUnsafeRawPointer { __ptr_energy in
        withUnsafeArgumentPackPointer(__ptr_voxelGi, __ptr_energy) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_set_energy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_voxel_gi_set_baked_exposure_normalization: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_set_baked_exposure_normalization").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func voxelGiSetBakedExposureNormalization(voxelGi: Godot.RID, bakedExposure: Double) {
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        bakedExposure.withGodotUnsafeRawPointer { __ptr_bakedExposure in
        withUnsafeArgumentPackPointer(__ptr_voxelGi, __ptr_bakedExposure) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_set_baked_exposure_normalization,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_voxel_gi_set_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_set_bias").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func voxelGiSetBias(voxelGi: Godot.RID, bias: Double) {
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        bias.withGodotUnsafeRawPointer { __ptr_bias in
        withUnsafeArgumentPackPointer(__ptr_voxelGi, __ptr_bias) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_set_bias,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_voxel_gi_set_normal_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_set_normal_bias").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func voxelGiSetNormalBias(voxelGi: Godot.RID, bias: Double) {
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        bias.withGodotUnsafeRawPointer { __ptr_bias in
        withUnsafeArgumentPackPointer(__ptr_voxelGi, __ptr_bias) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_set_normal_bias,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_voxel_gi_set_interior: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_set_interior").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func voxelGiSetInterior(voxelGi: Godot.RID, enable: Bool) {
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_voxelGi, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_set_interior,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_voxel_gi_set_use_two_bounces: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_set_use_two_bounces").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func voxelGiSetUseTwoBounces(voxelGi: Godot.RID, enable: Bool) {
        voxelGi.withGodotUnsafeRawPointer { __ptr_voxelGi in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_voxelGi, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_set_use_two_bounces,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_voxel_gi_set_quality: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "voxel_gi_set_quality").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1538689978)!
        }
        }
    }()
    public func voxelGiSetQuality(_ quality: Godot.RenderingServer.VoxelGIQuality) {
        quality.withGodotUnsafeRawPointer { __ptr_quality in
        withUnsafeArgumentPackPointer(__ptr_quality) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_voxel_gi_set_quality,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_lightmap_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "lightmap_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func lightmapCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_lightmap_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_lightmap_set_textures: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "lightmap_set_textures").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2646464759)!
        }
        }
    }()
    public func lightmapSetTextures(lightmap: Godot.RID, light: Godot.RID, usesSh: Bool) {
        lightmap.withGodotUnsafeRawPointer { __ptr_lightmap in
        light.withGodotUnsafeRawPointer { __ptr_light in
        usesSh.withGodotUnsafeRawPointer { __ptr_usesSh in
        withUnsafeArgumentPackPointer(__ptr_lightmap, __ptr_light, __ptr_usesSh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_lightmap_set_textures,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_lightmap_set_probe_bounds: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "lightmap_set_probe_bounds").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3696536120)!
        }
        }
    }()
    public func lightmapSetProbeBounds(lightmap: Godot.RID, bounds: Godot.AABB) {
        lightmap.withGodotUnsafeRawPointer { __ptr_lightmap in
        bounds.withGodotUnsafeRawPointer { __ptr_bounds in
        withUnsafeArgumentPackPointer(__ptr_lightmap, __ptr_bounds) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_lightmap_set_probe_bounds,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_lightmap_set_probe_interior: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "lightmap_set_probe_interior").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func lightmapSetProbeInterior(lightmap: Godot.RID, interior: Bool) {
        lightmap.withGodotUnsafeRawPointer { __ptr_lightmap in
        interior.withGodotUnsafeRawPointer { __ptr_interior in
        withUnsafeArgumentPackPointer(__ptr_lightmap, __ptr_interior) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_lightmap_set_probe_interior,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_lightmap_set_probe_capture_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "lightmap_set_probe_capture_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3217845880)!
        }
        }
    }()
    public func lightmapSetProbeCaptureData(lightmap: Godot.RID, points: Godot.PackedVector3Array, pointSh: Godot.PackedColorArray, tetrahedra: Godot.PackedInt32Array, bspTree: Godot.PackedInt32Array) {
        lightmap.withGodotUnsafeRawPointer { __ptr_lightmap in
        points.withGodotUnsafeRawPointer { __ptr_points in
        pointSh.withGodotUnsafeRawPointer { __ptr_pointSh in
        tetrahedra.withGodotUnsafeRawPointer { __ptr_tetrahedra in
        bspTree.withGodotUnsafeRawPointer { __ptr_bspTree in
        withUnsafeArgumentPackPointer(__ptr_lightmap, __ptr_points, __ptr_pointSh, __ptr_tetrahedra, __ptr_bspTree) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_lightmap_set_probe_capture_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_lightmap_get_probe_capture_points: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "lightmap_get_probe_capture_points").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 808965560)!
        }
        }
    }()
    public func lightmapGetProbeCapturePoints(lightmap: Godot.RID) -> Godot.PackedVector3Array {
        Godot.PackedVector3Array.fromMutatingGodotUnsafePointer { __temporary in
        lightmap.withGodotUnsafeRawPointer { __ptr_lightmap in
        withUnsafeArgumentPackPointer(__ptr_lightmap) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_lightmap_get_probe_capture_points,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_lightmap_get_probe_capture_sh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "lightmap_get_probe_capture_sh").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1569415609)!
        }
        }
    }()
    public func lightmapGetProbeCaptureSh(lightmap: Godot.RID) -> Godot.PackedColorArray {
        Godot.PackedColorArray.fromMutatingGodotUnsafePointer { __temporary in
        lightmap.withGodotUnsafeRawPointer { __ptr_lightmap in
        withUnsafeArgumentPackPointer(__ptr_lightmap) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_lightmap_get_probe_capture_sh,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_lightmap_get_probe_capture_tetrahedra: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "lightmap_get_probe_capture_tetrahedra").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 788230395)!
        }
        }
    }()
    public func lightmapGetProbeCaptureTetrahedra(lightmap: Godot.RID) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        lightmap.withGodotUnsafeRawPointer { __ptr_lightmap in
        withUnsafeArgumentPackPointer(__ptr_lightmap) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_lightmap_get_probe_capture_tetrahedra,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_lightmap_get_probe_capture_bsp_tree: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "lightmap_get_probe_capture_bsp_tree").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 788230395)!
        }
        }
    }()
    public func lightmapGetProbeCaptureBspTree(lightmap: Godot.RID) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array.fromMutatingGodotUnsafePointer { __temporary in
        lightmap.withGodotUnsafeRawPointer { __ptr_lightmap in
        withUnsafeArgumentPackPointer(__ptr_lightmap) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_lightmap_get_probe_capture_bsp_tree,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_lightmap_set_baked_exposure_normalization: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "lightmap_set_baked_exposure_normalization").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func lightmapSetBakedExposureNormalization(lightmap: Godot.RID, bakedExposure: Double) {
        lightmap.withGodotUnsafeRawPointer { __ptr_lightmap in
        bakedExposure.withGodotUnsafeRawPointer { __ptr_bakedExposure in
        withUnsafeArgumentPackPointer(__ptr_lightmap, __ptr_bakedExposure) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_lightmap_set_baked_exposure_normalization,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_lightmap_set_probe_capture_update_speed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "lightmap_set_probe_capture_update_speed").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    public func lightmapSetProbeCaptureUpdateSpeed(_ speed: Double) {
        speed.withGodotUnsafeRawPointer { __ptr_speed in
        withUnsafeArgumentPackPointer(__ptr_speed) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_lightmap_set_probe_capture_update_speed,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_particles_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func particlesCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_particles_set_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3492270028)!
        }
        }
    }()
    public func particlesSetMode(particles: Godot.RID, mode: Godot.RenderingServer.ParticlesMode) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_emitting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_emitting").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func particlesSetEmitting(particles: Godot.RID, emitting: Bool) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        emitting.withGodotUnsafeRawPointer { __ptr_emitting in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_emitting) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_emitting,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_get_emitting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_get_emitting").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3521089500)!
        }
        }
    }()
    public func particlesGetEmitting(particles: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        withUnsafeArgumentPackPointer(__ptr_particles) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_get_emitting,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_particles_set_amount: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_amount").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func particlesSetAmount(particles: Godot.RID, amount: Int32) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_amount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_amount,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_amount_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_amount_ratio").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func particlesSetAmountRatio(particles: Godot.RID, ratio: Double) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        ratio.withGodotUnsafeRawPointer { __ptr_ratio in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_ratio) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_amount_ratio,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_lifetime: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_lifetime").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func particlesSetLifetime(particles: Godot.RID, lifetime: Double) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        lifetime.withGodotUnsafeRawPointer { __ptr_lifetime in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_lifetime) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_lifetime,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_one_shot: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_one_shot").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func particlesSetOneShot(particles: Godot.RID, oneShot: Bool) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        oneShot.withGodotUnsafeRawPointer { __ptr_oneShot in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_oneShot) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_one_shot,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_pre_process_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_pre_process_time").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func particlesSetPreProcessTime(particles: Godot.RID, time: Double) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        time.withGodotUnsafeRawPointer { __ptr_time in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_time) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_pre_process_time,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_explosiveness_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_explosiveness_ratio").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func particlesSetExplosivenessRatio(particles: Godot.RID, ratio: Double) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        ratio.withGodotUnsafeRawPointer { __ptr_ratio in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_ratio) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_explosiveness_ratio,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_randomness_ratio: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_randomness_ratio").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func particlesSetRandomnessRatio(particles: Godot.RID, ratio: Double) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        ratio.withGodotUnsafeRawPointer { __ptr_ratio in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_ratio) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_randomness_ratio,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_interp_to_end: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_interp_to_end").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func particlesSetInterpToEnd(particles: Godot.RID, factor: Double) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        factor.withGodotUnsafeRawPointer { __ptr_factor in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_factor) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_interp_to_end,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_emitter_velocity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_emitter_velocity").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func particlesSetEmitterVelocity(particles: Godot.RID, velocity: Godot.Vector3) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        velocity.withGodotUnsafeRawPointer { __ptr_velocity in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_velocity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_emitter_velocity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_custom_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_custom_aabb").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3696536120)!
        }
        }
    }()
    public func particlesSetCustomAabb(particles: Godot.RID, aabb: Godot.AABB) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        aabb.withGodotUnsafeRawPointer { __ptr_aabb in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_aabb) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_custom_aabb,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_speed_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_speed_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func particlesSetSpeedScale(particles: Godot.RID, scale: Double) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_speed_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_use_local_coordinates: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_use_local_coordinates").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func particlesSetUseLocalCoordinates(particles: Godot.RID, enable: Bool) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_use_local_coordinates,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_process_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_process_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func particlesSetProcessMaterial(particles: Godot.RID, material: Godot.RID) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_process_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_fixed_fps: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_fixed_fps").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func particlesSetFixedFps(particles: Godot.RID, fps: Int32) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        fps.withGodotUnsafeRawPointer { __ptr_fps in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_fps) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_fixed_fps,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_interpolate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_interpolate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func particlesSetInterpolate(particles: Godot.RID, enable: Bool) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_interpolate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_fractional_delta: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_fractional_delta").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func particlesSetFractionalDelta(particles: Godot.RID, enable: Bool) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_fractional_delta,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_collision_base_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_collision_base_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func particlesSetCollisionBaseSize(particles: Godot.RID, size: Double) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_collision_base_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_transform_align: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_transform_align").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3264971368)!
        }
        }
    }()
    public func particlesSetTransformAlign(particles: Godot.RID, align: Godot.RenderingServer.ParticlesTransformAlign) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        align.withGodotUnsafeRawPointer { __ptr_align in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_align) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_transform_align,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_trails: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_trails").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2010054925)!
        }
        }
    }()
    public func particlesSetTrails(particles: Godot.RID, enable: Bool, lengthSec: Double) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        lengthSec.withGodotUnsafeRawPointer { __ptr_lengthSec in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_enable, __ptr_lengthSec) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_trails,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_particles_set_trail_bind_poses: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_trail_bind_poses").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 684822712)!
        }
        }
    }()
    public func particlesSetTrailBindPoses(particles: Godot.RID, bindPoses: Godot.GodotArray<Godot.Transform3D>) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        bindPoses.withGodotUnsafeRawPointer { __ptr_bindPoses in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_bindPoses) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_trail_bind_poses,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_is_inactive: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_is_inactive").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3521089500)!
        }
        }
    }()
    public func particlesIsInactive(particles: Godot.RID) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        withUnsafeArgumentPackPointer(__ptr_particles) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_is_inactive,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_particles_request_process: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_request_process").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func particlesRequestProcess(particles: Godot.RID) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        withUnsafeArgumentPackPointer(__ptr_particles) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_request_process,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_particles_restart: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_restart").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func particlesRestart(particles: Godot.RID) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        withUnsafeArgumentPackPointer(__ptr_particles) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_restart,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_particles_set_subemitter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_subemitter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func particlesSetSubemitter(particles: Godot.RID, subemitterParticles: Godot.RID) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        subemitterParticles.withGodotUnsafeRawPointer { __ptr_subemitterParticles in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_subemitterParticles) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_subemitter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_emit: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_emit").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4043136117)!
        }
        }
    }()
    public func particlesEmit(particles: Godot.RID, transform: Godot.Transform3D, velocity: Godot.Vector3, color: Godot.Color, custom: Godot.Color, emitFlags: UInt32) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        velocity.withGodotUnsafeRawPointer { __ptr_velocity in
        color.withGodotUnsafeRawPointer { __ptr_color in
        custom.withGodotUnsafeRawPointer { __ptr_custom in
        emitFlags.withGodotUnsafeRawPointer { __ptr_emitFlags in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_transform, __ptr_velocity, __ptr_color, __ptr_custom, __ptr_emitFlags) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_emit,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_particles_set_draw_order: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_draw_order").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 935028487)!
        }
        }
    }()
    public func particlesSetDrawOrder(particles: Godot.RID, order: Godot.RenderingServer.ParticlesDrawOrder) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        order.withGodotUnsafeRawPointer { __ptr_order in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_order) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_draw_order,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_draw_passes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_draw_passes").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func particlesSetDrawPasses(particles: Godot.RID, count: Int32) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        count.withGodotUnsafeRawPointer { __ptr_count in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_count) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_draw_passes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_set_draw_pass_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_draw_pass_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2310537182)!
        }
        }
    }()
    public func particlesSetDrawPassMesh(particles: Godot.RID, pass: Int32, mesh: Godot.RID) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        pass.withGodotUnsafeRawPointer { __ptr_pass in
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_pass, __ptr_mesh) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_draw_pass_mesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_particles_get_current_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_get_current_aabb").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3952830260)!
        }
        }
    }()
    public func particlesGetCurrentAabb(particles: Godot.RID) -> Godot.AABB {
        Godot.AABB.fromMutatingGodotUnsafePointer { __temporary in
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        withUnsafeArgumentPackPointer(__ptr_particles) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_get_current_aabb,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_particles_set_emission_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_set_emission_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3935195649)!
        }
        }
    }()
    public func particlesSetEmissionTransform(particles: Godot.RID, transform: Godot.Transform3D) {
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_particles, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_set_emission_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_collision_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_collision_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func particlesCollisionCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_collision_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_particles_collision_set_collision_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_collision_set_collision_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1497044930)!
        }
        }
    }()
    public func particlesCollisionSetCollisionType(particlesCollision: Godot.RID, type: Godot.RenderingServer.ParticlesCollisionType) {
        particlesCollision.withGodotUnsafeRawPointer { __ptr_particlesCollision in
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_particlesCollision, __ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_collision_set_collision_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_collision_set_cull_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_collision_set_cull_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func particlesCollisionSetCullMask(particlesCollision: Godot.RID, mask: UInt32) {
        particlesCollision.withGodotUnsafeRawPointer { __ptr_particlesCollision in
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_particlesCollision, __ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_collision_set_cull_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_collision_set_sphere_radius: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_collision_set_sphere_radius").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func particlesCollisionSetSphereRadius(particlesCollision: Godot.RID, radius: Double) {
        particlesCollision.withGodotUnsafeRawPointer { __ptr_particlesCollision in
        radius.withGodotUnsafeRawPointer { __ptr_radius in
        withUnsafeArgumentPackPointer(__ptr_particlesCollision, __ptr_radius) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_collision_set_sphere_radius,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_collision_set_box_extents: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_collision_set_box_extents").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func particlesCollisionSetBoxExtents(particlesCollision: Godot.RID, extents: Godot.Vector3) {
        particlesCollision.withGodotUnsafeRawPointer { __ptr_particlesCollision in
        extents.withGodotUnsafeRawPointer { __ptr_extents in
        withUnsafeArgumentPackPointer(__ptr_particlesCollision, __ptr_extents) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_collision_set_box_extents,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_collision_set_attractor_strength: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_collision_set_attractor_strength").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func particlesCollisionSetAttractorStrength(particlesCollision: Godot.RID, strength: Double) {
        particlesCollision.withGodotUnsafeRawPointer { __ptr_particlesCollision in
        strength.withGodotUnsafeRawPointer { __ptr_strength in
        withUnsafeArgumentPackPointer(__ptr_particlesCollision, __ptr_strength) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_collision_set_attractor_strength,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_collision_set_attractor_directionality: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_collision_set_attractor_directionality").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func particlesCollisionSetAttractorDirectionality(particlesCollision: Godot.RID, amount: Double) {
        particlesCollision.withGodotUnsafeRawPointer { __ptr_particlesCollision in
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        withUnsafeArgumentPackPointer(__ptr_particlesCollision, __ptr_amount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_collision_set_attractor_directionality,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_collision_set_attractor_attenuation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_collision_set_attractor_attenuation").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func particlesCollisionSetAttractorAttenuation(particlesCollision: Godot.RID, curve: Double) {
        particlesCollision.withGodotUnsafeRawPointer { __ptr_particlesCollision in
        curve.withGodotUnsafeRawPointer { __ptr_curve in
        withUnsafeArgumentPackPointer(__ptr_particlesCollision, __ptr_curve) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_collision_set_attractor_attenuation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_collision_set_field_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_collision_set_field_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func particlesCollisionSetFieldTexture(particlesCollision: Godot.RID, texture: Godot.RID) {
        particlesCollision.withGodotUnsafeRawPointer { __ptr_particlesCollision in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_particlesCollision, __ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_collision_set_field_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_particles_collision_height_field_update: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_collision_height_field_update").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func particlesCollisionHeightFieldUpdate(particlesCollision: Godot.RID) {
        particlesCollision.withGodotUnsafeRawPointer { __ptr_particlesCollision in
        withUnsafeArgumentPackPointer(__ptr_particlesCollision) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_collision_height_field_update,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_particles_collision_set_height_field_resolution: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "particles_collision_set_height_field_resolution").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 962977297)!
        }
        }
    }()
    public func particlesCollisionSetHeightFieldResolution(particlesCollision: Godot.RID, resolution: Godot.RenderingServer.ParticlesCollisionHeightfieldResolution) {
        particlesCollision.withGodotUnsafeRawPointer { __ptr_particlesCollision in
        resolution.withGodotUnsafeRawPointer { __ptr_resolution in
        withUnsafeArgumentPackPointer(__ptr_particlesCollision, __ptr_resolution) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_particles_collision_set_height_field_resolution,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_fog_volume_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fog_volume_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func fogVolumeCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_fog_volume_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_fog_volume_set_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fog_volume_set_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3818703106)!
        }
        }
    }()
    public func fogVolumeSetShape(fogVolume: Godot.RID, shape: Godot.RenderingServer.FogVolumeShape) {
        fogVolume.withGodotUnsafeRawPointer { __ptr_fogVolume in
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        withUnsafeArgumentPackPointer(__ptr_fogVolume, __ptr_shape) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_fog_volume_set_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_fog_volume_set_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fog_volume_set_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3227306858)!
        }
        }
    }()
    public func fogVolumeSetSize(fogVolume: Godot.RID, size: Godot.Vector3) {
        fogVolume.withGodotUnsafeRawPointer { __ptr_fogVolume in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_fogVolume, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_fog_volume_set_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_fog_volume_set_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "fog_volume_set_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func fogVolumeSetMaterial(fogVolume: Godot.RID, material: Godot.RID) {
        fogVolume.withGodotUnsafeRawPointer { __ptr_fogVolume in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafeArgumentPackPointer(__ptr_fogVolume, __ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_fog_volume_set_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_visibility_notifier_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "visibility_notifier_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func visibilityNotifierCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_visibility_notifier_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_visibility_notifier_set_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "visibility_notifier_set_aabb").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3696536120)!
        }
        }
    }()
    public func visibilityNotifierSetAabb(notifier: Godot.RID, aabb: Godot.AABB) {
        notifier.withGodotUnsafeRawPointer { __ptr_notifier in
        aabb.withGodotUnsafeRawPointer { __ptr_aabb in
        withUnsafeArgumentPackPointer(__ptr_notifier, __ptr_aabb) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_visibility_notifier_set_aabb,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_visibility_notifier_set_callbacks: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "visibility_notifier_set_callbacks").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2689735388)!
        }
        }
    }()
    public func visibilityNotifierSetCallbacks(notifier: Godot.RID, enterCallable: Godot.Callable, exitCallable: Godot.Callable) {
        notifier.withGodotUnsafeRawPointer { __ptr_notifier in
        enterCallable.withGodotUnsafeRawPointer { __ptr_enterCallable in
        exitCallable.withGodotUnsafeRawPointer { __ptr_exitCallable in
        withUnsafeArgumentPackPointer(__ptr_notifier, __ptr_enterCallable, __ptr_exitCallable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_visibility_notifier_set_callbacks,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_occluder_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "occluder_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func occluderCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_occluder_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_occluder_set_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "occluder_set_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3854404263)!
        }
        }
    }()
    public func occluderSetMesh(occluder: Godot.RID, vertices: Godot.PackedVector3Array, indices: Godot.PackedInt32Array) {
        occluder.withGodotUnsafeRawPointer { __ptr_occluder in
        vertices.withGodotUnsafeRawPointer { __ptr_vertices in
        indices.withGodotUnsafeRawPointer { __ptr_indices in
        withUnsafeArgumentPackPointer(__ptr_occluder, __ptr_vertices, __ptr_indices) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_occluder_set_mesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_camera_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func cameraCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_camera_set_perspective: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_set_perspective").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 157498339)!
        }
        }
    }()
    public func cameraSetPerspective(camera: Godot.RID, fovyDegrees: Double, zNear: Double, zFar: Double) {
        camera.withGodotUnsafeRawPointer { __ptr_camera in
        fovyDegrees.withGodotUnsafeRawPointer { __ptr_fovyDegrees in
        zNear.withGodotUnsafeRawPointer { __ptr_zNear in
        zFar.withGodotUnsafeRawPointer { __ptr_zFar in
        withUnsafeArgumentPackPointer(__ptr_camera, __ptr_fovyDegrees, __ptr_zNear, __ptr_zFar) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_set_perspective,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_camera_set_orthogonal: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_set_orthogonal").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 157498339)!
        }
        }
    }()
    public func cameraSetOrthogonal(camera: Godot.RID, size: Double, zNear: Double, zFar: Double) {
        camera.withGodotUnsafeRawPointer { __ptr_camera in
        size.withGodotUnsafeRawPointer { __ptr_size in
        zNear.withGodotUnsafeRawPointer { __ptr_zNear in
        zFar.withGodotUnsafeRawPointer { __ptr_zFar in
        withUnsafeArgumentPackPointer(__ptr_camera, __ptr_size, __ptr_zNear, __ptr_zFar) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_set_orthogonal,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_camera_set_frustum: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_set_frustum").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1889878953)!
        }
        }
    }()
    public func cameraSetFrustum(camera: Godot.RID, size: Double, offset: Godot.Vector2, zNear: Double, zFar: Double) {
        camera.withGodotUnsafeRawPointer { __ptr_camera in
        size.withGodotUnsafeRawPointer { __ptr_size in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        zNear.withGodotUnsafeRawPointer { __ptr_zNear in
        zFar.withGodotUnsafeRawPointer { __ptr_zFar in
        withUnsafeArgumentPackPointer(__ptr_camera, __ptr_size, __ptr_offset, __ptr_zNear, __ptr_zFar) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_set_frustum,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_camera_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3935195649)!
        }
        }
    }()
    public func cameraSetTransform(camera: Godot.RID, transform: Godot.Transform3D) {
        camera.withGodotUnsafeRawPointer { __ptr_camera in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_camera, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_camera_set_cull_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_set_cull_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func cameraSetCullMask(camera: Godot.RID, layers: UInt32) {
        camera.withGodotUnsafeRawPointer { __ptr_camera in
        layers.withGodotUnsafeRawPointer { __ptr_layers in
        withUnsafeArgumentPackPointer(__ptr_camera, __ptr_layers) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_set_cull_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_camera_set_environment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_set_environment").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func cameraSetEnvironment(camera: Godot.RID, env: Godot.RID) {
        camera.withGodotUnsafeRawPointer { __ptr_camera in
        env.withGodotUnsafeRawPointer { __ptr_env in
        withUnsafeArgumentPackPointer(__ptr_camera, __ptr_env) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_set_environment,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_camera_set_camera_attributes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_set_camera_attributes").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func cameraSetCameraAttributes(camera: Godot.RID, effects: Godot.RID) {
        camera.withGodotUnsafeRawPointer { __ptr_camera in
        effects.withGodotUnsafeRawPointer { __ptr_effects in
        withUnsafeArgumentPackPointer(__ptr_camera, __ptr_effects) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_set_camera_attributes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_camera_set_use_vertical_aspect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_set_use_vertical_aspect").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func cameraSetUseVerticalAspect(camera: Godot.RID, enable: Bool) {
        camera.withGodotUnsafeRawPointer { __ptr_camera in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_camera, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_set_use_vertical_aspect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func viewportCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_viewport_set_use_xr: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_use_xr").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func viewportSetUseXr(viewport: Godot.RID, useXr: Bool) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        useXr.withGodotUnsafeRawPointer { __ptr_useXr in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_useXr) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_use_xr,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4288446313)!
        }
        }
    }()
    public func viewportSetSize(viewport: Godot.RID, width: Int32, height: Int32) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        width.withGodotUnsafeRawPointer { __ptr_width in
        height.withGodotUnsafeRawPointer { __ptr_height in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_width, __ptr_height) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_viewport_set_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func viewportSetActive(viewport: Godot.RID, active: Bool) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        active.withGodotUnsafeRawPointer { __ptr_active in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_active) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_active,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_parent_viewport: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_parent_viewport").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func viewportSetParentViewport(_ viewport: Godot.RID, parentViewport: Godot.RID) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        parentViewport.withGodotUnsafeRawPointer { __ptr_parentViewport in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_parentViewport) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_parent_viewport,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_attach_to_screen: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_attach_to_screen").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1062245816)!
        }
        }
    }()
    public func viewportAttachToScreen(viewport: Godot.RID, rect: Godot.Rect2 = Rect2(x: 0, y: 0, width: 0, height: 0), screen: Int32 = 0) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        screen.withGodotUnsafeRawPointer { __ptr_screen in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_rect, __ptr_screen) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_attach_to_screen,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_viewport_set_render_direct_to_screen: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_render_direct_to_screen").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func viewportSetRenderDirectToScreen(viewport: Godot.RID, enabled: Bool) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_render_direct_to_screen,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_canvas_cull_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_canvas_cull_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func viewportSetCanvasCullMask(viewport: Godot.RID, canvasCullMask: UInt32) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        canvasCullMask.withGodotUnsafeRawPointer { __ptr_canvasCullMask in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_canvasCullMask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_canvas_cull_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_scaling_3d_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_scaling_3d_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2386524376)!
        }
        }
    }()
    public func viewportSetScaling3DMode(viewport: Godot.RID, scaling3DMode: Godot.RenderingServer.ViewportScaling3DMode) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        scaling3DMode.withGodotUnsafeRawPointer { __ptr_scaling3DMode in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_scaling3DMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_scaling_3d_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_scaling_3d_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_scaling_3d_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func viewportSetScaling3DScale(viewport: Godot.RID, scale: Double) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_scaling_3d_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_fsr_sharpness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_fsr_sharpness").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func viewportSetFsrSharpness(viewport: Godot.RID, sharpness: Double) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        sharpness.withGodotUnsafeRawPointer { __ptr_sharpness in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_sharpness) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_fsr_sharpness,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_texture_mipmap_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_texture_mipmap_bias").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func viewportSetTextureMipmapBias(viewport: Godot.RID, mipmapBias: Double) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        mipmapBias.withGodotUnsafeRawPointer { __ptr_mipmapBias in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_mipmapBias) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_texture_mipmap_bias,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_update_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_update_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3161116010)!
        }
        }
    }()
    public func viewportSetUpdateMode(viewport: Godot.RID, updateMode: Godot.RenderingServer.ViewportUpdateMode) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        updateMode.withGodotUnsafeRawPointer { __ptr_updateMode in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_updateMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_update_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_clear_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_clear_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3628367896)!
        }
        }
    }()
    public func viewportSetClearMode(viewport: Godot.RID, clearMode: Godot.RenderingServer.ViewportClearMode) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        clearMode.withGodotUnsafeRawPointer { __ptr_clearMode in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_clearMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_clear_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_get_render_target: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_get_render_target").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func viewportGetRenderTarget(viewport: Godot.RID) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        withUnsafeArgumentPackPointer(__ptr_viewport) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_get_render_target,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_viewport_get_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_get_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3814569979)!
        }
        }
    }()
    public func viewportGetTexture(viewport: Godot.RID) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        withUnsafeArgumentPackPointer(__ptr_viewport) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_get_texture,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_viewport_set_disable_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_disable_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func viewportSetDisable3D(viewport: Godot.RID, disable: Bool) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        disable.withGodotUnsafeRawPointer { __ptr_disable in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_disable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_disable_3d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_disable_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_disable_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func viewportSetDisable2D(viewport: Godot.RID, disable: Bool) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        disable.withGodotUnsafeRawPointer { __ptr_disable in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_disable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_disable_2d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_environment_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_environment_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2196892182)!
        }
        }
    }()
    public func viewportSetEnvironmentMode(viewport: Godot.RID, mode: Godot.RenderingServer.ViewportEnvironmentMode) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_environment_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_attach_camera: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_attach_camera").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func viewportAttachCamera(viewport: Godot.RID, camera: Godot.RID) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        camera.withGodotUnsafeRawPointer { __ptr_camera in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_camera) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_attach_camera,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_scenario: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_scenario").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func viewportSetScenario(viewport: Godot.RID, scenario: Godot.RID) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        scenario.withGodotUnsafeRawPointer { __ptr_scenario in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_scenario) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_scenario,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_attach_canvas: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_attach_canvas").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func viewportAttachCanvas(viewport: Godot.RID, canvas: Godot.RID) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        canvas.withGodotUnsafeRawPointer { __ptr_canvas in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_canvas) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_attach_canvas,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_remove_canvas: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_remove_canvas").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func viewportRemoveCanvas(viewport: Godot.RID, canvas: Godot.RID) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        canvas.withGodotUnsafeRawPointer { __ptr_canvas in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_canvas) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_remove_canvas,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_snap_2d_transforms_to_pixel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_snap_2d_transforms_to_pixel").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func viewportSetSnap2DTransformsToPixel(viewport: Godot.RID, enabled: Bool) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_snap_2d_transforms_to_pixel,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_snap_2d_vertices_to_pixel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_snap_2d_vertices_to_pixel").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func viewportSetSnap2DVerticesToPixel(viewport: Godot.RID, enabled: Bool) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_snap_2d_vertices_to_pixel,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_default_canvas_item_texture_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_default_canvas_item_texture_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1155129294)!
        }
        }
    }()
    public func viewportSetDefaultCanvasItemTextureFilter(viewport: Godot.RID, filter: Godot.RenderingServer.CanvasItemTextureFilter) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        filter.withGodotUnsafeRawPointer { __ptr_filter in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_filter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_default_canvas_item_texture_filter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_default_canvas_item_texture_repeat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_default_canvas_item_texture_repeat").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1652956681)!
        }
        }
    }()
    public func viewportSetDefaultCanvasItemTextureRepeat(viewport: Godot.RID, `repeat`: Godot.RenderingServer.CanvasItemTextureRepeat) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        `repeat`.withGodotUnsafeRawPointer { __ptr_repeat in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_repeat) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_default_canvas_item_texture_repeat,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_canvas_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_canvas_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3608606053)!
        }
        }
    }()
    public func viewportSetCanvasTransform(viewport: Godot.RID, canvas: Godot.RID, offset: Godot.Transform2D) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        canvas.withGodotUnsafeRawPointer { __ptr_canvas in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_canvas, __ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_canvas_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_viewport_set_canvas_stacking: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_canvas_stacking").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3713930247)!
        }
        }
    }()
    public func viewportSetCanvasStacking(viewport: Godot.RID, canvas: Godot.RID, layer: Int32, sublayer: Int32) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        canvas.withGodotUnsafeRawPointer { __ptr_canvas in
        layer.withGodotUnsafeRawPointer { __ptr_layer in
        sublayer.withGodotUnsafeRawPointer { __ptr_sublayer in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_canvas, __ptr_layer, __ptr_sublayer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_canvas_stacking,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_viewport_set_transparent_background: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_transparent_background").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func viewportSetTransparentBackground(viewport: Godot.RID, enabled: Bool) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_transparent_background,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_global_canvas_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_global_canvas_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1246044741)!
        }
        }
    }()
    public func viewportSetGlobalCanvasTransform(viewport: Godot.RID, transform: Godot.Transform2D) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_global_canvas_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_sdf_oversize_and_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_sdf_oversize_and_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1329198632)!
        }
        }
    }()
    public func viewportSetSdfOversizeAndScale(viewport: Godot.RID, oversize: Godot.RenderingServer.ViewportSDFOversize, scale: Godot.RenderingServer.ViewportSDFScale) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        oversize.withGodotUnsafeRawPointer { __ptr_oversize in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_oversize, __ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_sdf_oversize_and_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_viewport_set_positional_shadow_atlas_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_positional_shadow_atlas_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1904426712)!
        }
        }
    }()
    public func viewportSetPositionalShadowAtlasSize(viewport: Godot.RID, size: Int32, use16Bits: Bool = false) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        size.withGodotUnsafeRawPointer { __ptr_size in
        use16Bits.withGodotUnsafeRawPointer { __ptr_use16Bits in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_size, __ptr_use16Bits) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_positional_shadow_atlas_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_viewport_set_positional_shadow_atlas_quadrant_subdivision: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_positional_shadow_atlas_quadrant_subdivision").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4288446313)!
        }
        }
    }()
    public func viewportSetPositionalShadowAtlasQuadrantSubdivision(viewport: Godot.RID, quadrant: Int32, subdivision: Int32) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        quadrant.withGodotUnsafeRawPointer { __ptr_quadrant in
        subdivision.withGodotUnsafeRawPointer { __ptr_subdivision in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_quadrant, __ptr_subdivision) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_positional_shadow_atlas_quadrant_subdivision,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_viewport_set_msaa_3d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_msaa_3d").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3764433340)!
        }
        }
    }()
    public func viewportSetMsaa3D(viewport: Godot.RID, msaa: Godot.RenderingServer.ViewportMSAA) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        msaa.withGodotUnsafeRawPointer { __ptr_msaa in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_msaa) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_msaa_3d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_msaa_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_msaa_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3764433340)!
        }
        }
    }()
    public func viewportSetMsaa2D(viewport: Godot.RID, msaa: Godot.RenderingServer.ViewportMSAA) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        msaa.withGodotUnsafeRawPointer { __ptr_msaa in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_msaa) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_msaa_2d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_use_hdr_2d: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_use_hdr_2d").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func viewportSetUseHdr2D(viewport: Godot.RID, enabled: Bool) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_use_hdr_2d,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_screen_space_aa: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_screen_space_aa").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1447279591)!
        }
        }
    }()
    public func viewportSetScreenSpaceAa(viewport: Godot.RID, mode: Godot.RenderingServer.ViewportScreenSpaceAA) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_screen_space_aa,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_use_taa: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_use_taa").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func viewportSetUseTaa(viewport: Godot.RID, enable: Bool) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_use_taa,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_use_debanding: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_use_debanding").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func viewportSetUseDebanding(viewport: Godot.RID, enable: Bool) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_use_debanding,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_use_occlusion_culling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_use_occlusion_culling").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func viewportSetUseOcclusionCulling(viewport: Godot.RID, enable: Bool) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_use_occlusion_culling,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_occlusion_rays_per_thread: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_occlusion_rays_per_thread").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func viewportSetOcclusionRaysPerThread(_ raysPerThread: Int32) {
        raysPerThread.withGodotUnsafeRawPointer { __ptr_raysPerThread in
        withUnsafeArgumentPackPointer(__ptr_raysPerThread) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_occlusion_rays_per_thread,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_viewport_set_occlusion_culling_build_quality: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_occlusion_culling_build_quality").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2069725696)!
        }
        }
    }()
    public func viewportSetOcclusionCullingBuildQuality(_ quality: Godot.RenderingServer.ViewportOcclusionCullingBuildQuality) {
        quality.withGodotUnsafeRawPointer { __ptr_quality in
        withUnsafeArgumentPackPointer(__ptr_quality) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_occlusion_culling_build_quality,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_viewport_get_render_info: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_get_render_info").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2041262392)!
        }
        }
    }()
    public func viewportGetRenderInfo(viewport: Godot.RID, type: Godot.RenderingServer.ViewportRenderInfoType, info: Godot.RenderingServer.ViewportRenderInfo) -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        type.withGodotUnsafeRawPointer { __ptr_type in
        info.withGodotUnsafeRawPointer { __ptr_info in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_type, __ptr_info) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_get_render_info,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_viewport_set_debug_draw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_debug_draw").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2089420930)!
        }
        }
    }()
    public func viewportSetDebugDraw(viewport: Godot.RID, draw: Godot.RenderingServer.ViewportDebugDraw) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        draw.withGodotUnsafeRawPointer { __ptr_draw in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_draw) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_debug_draw,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_measure_render_time: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_measure_render_time").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func viewportSetMeasureRenderTime(viewport: Godot.RID, enable: Bool) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_measure_render_time,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_get_measured_render_time_cpu: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_get_measured_render_time_cpu").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func viewportGetMeasuredRenderTimeCpu(viewport: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        withUnsafeArgumentPackPointer(__ptr_viewport) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_get_measured_render_time_cpu,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_viewport_get_measured_render_time_gpu: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_get_measured_render_time_gpu").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 866169185)!
        }
        }
    }()
    public func viewportGetMeasuredRenderTimeGpu(viewport: Godot.RID) -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        withUnsafeArgumentPackPointer(__ptr_viewport) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_get_measured_render_time_gpu,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_viewport_set_vrs_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_vrs_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 398809874)!
        }
        }
    }()
    public func viewportSetVrsMode(viewport: Godot.RID, mode: Godot.RenderingServer.ViewportVRSMode) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_vrs_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_viewport_set_vrs_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "viewport_set_vrs_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func viewportSetVrsTexture(viewport: Godot.RID, texture: Godot.RID) {
        viewport.withGodotUnsafeRawPointer { __ptr_viewport in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_viewport, __ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_viewport_set_vrs_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_sky_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "sky_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func skyCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_sky_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_sky_set_radiance_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "sky_set_radiance_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func skySetRadianceSize(sky: Godot.RID, radianceSize: Int32) {
        sky.withGodotUnsafeRawPointer { __ptr_sky in
        radianceSize.withGodotUnsafeRawPointer { __ptr_radianceSize in
        withUnsafeArgumentPackPointer(__ptr_sky, __ptr_radianceSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_sky_set_radiance_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_sky_set_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "sky_set_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3279019937)!
        }
        }
    }()
    public func skySetMode(sky: Godot.RID, mode: Godot.RenderingServer.SkyMode) {
        sky.withGodotUnsafeRawPointer { __ptr_sky in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_sky, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_sky_set_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_sky_set_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "sky_set_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func skySetMaterial(sky: Godot.RID, material: Godot.RID) {
        sky.withGodotUnsafeRawPointer { __ptr_sky in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafeArgumentPackPointer(__ptr_sky, __ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_sky_set_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_sky_bake_panorama: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "sky_bake_panorama").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3875285818)!
        }
        }
    }()
    public func skyBakePanorama(sky: Godot.RID, energy: Double, bakeIrradiance: Bool, size: Godot.Vector2i) -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        sky.withGodotUnsafeRawPointer { __ptr_sky in
        energy.withGodotUnsafeRawPointer { __ptr_energy in
        bakeIrradiance.withGodotUnsafeRawPointer { __ptr_bakeIrradiance in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_sky, __ptr_energy, __ptr_bakeIrradiance, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_sky_bake_panorama,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_environment_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func environmentCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_environment_set_background: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_background").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937328877)!
        }
        }
    }()
    public func environmentSetBackground(env: Godot.RID, bg: Godot.RenderingServer.EnvironmentBG) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        bg.withGodotUnsafeRawPointer { __ptr_bg in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_bg) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_background,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_environment_set_sky: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_sky").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func environmentSetSky(env: Godot.RID, sky: Godot.RID) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        sky.withGodotUnsafeRawPointer { __ptr_sky in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_sky) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_sky,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_environment_set_sky_custom_fov: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_sky_custom_fov").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func environmentSetSkyCustomFov(env: Godot.RID, scale: Double) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_sky_custom_fov,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_environment_set_sky_orientation: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_sky_orientation").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1735850857)!
        }
        }
    }()
    public func environmentSetSkyOrientation(env: Godot.RID, orientation: Godot.Basis) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        orientation.withGodotUnsafeRawPointer { __ptr_orientation in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_orientation) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_sky_orientation,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_environment_set_bg_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_bg_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2948539648)!
        }
        }
    }()
    public func environmentSetBgColor(env: Godot.RID, color: Godot.Color) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_bg_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_environment_set_bg_energy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_bg_energy").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2513314492)!
        }
        }
    }()
    public func environmentSetBgEnergy(env: Godot.RID, multiplier: Double, exposureValue: Double) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        multiplier.withGodotUnsafeRawPointer { __ptr_multiplier in
        exposureValue.withGodotUnsafeRawPointer { __ptr_exposureValue in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_multiplier, __ptr_exposureValue) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_bg_energy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_environment_set_canvas_max_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_canvas_max_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func environmentSetCanvasMaxLayer(env: Godot.RID, maxLayer: Int32) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        maxLayer.withGodotUnsafeRawPointer { __ptr_maxLayer in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_maxLayer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_canvas_max_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_environment_set_ambient_light: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_ambient_light").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1214961493)!
        }
        }
    }()
    public func environmentSetAmbientLight(env: Godot.RID, color: Godot.Color, ambient: Godot.RenderingServer.EnvironmentAmbientSource = RenderingServer.EnvironmentAmbientSource(rawValue: 0)!, energy: Double = 1.0, skyContibution: Double = 0.0, reflectionSource: Godot.RenderingServer.EnvironmentReflectionSource = RenderingServer.EnvironmentReflectionSource(rawValue: 0)!) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        color.withGodotUnsafeRawPointer { __ptr_color in
        ambient.withGodotUnsafeRawPointer { __ptr_ambient in
        energy.withGodotUnsafeRawPointer { __ptr_energy in
        skyContibution.withGodotUnsafeRawPointer { __ptr_skyContibution in
        reflectionSource.withGodotUnsafeRawPointer { __ptr_reflectionSource in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_color, __ptr_ambient, __ptr_energy, __ptr_skyContibution, __ptr_reflectionSource) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_ambient_light,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_environment_set_glow: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_glow").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2421724940)!
        }
        }
    }()
    public func environmentSetGlow(env: Godot.RID, enable: Bool, levels: Godot.PackedFloat32Array, intensity: Double, strength: Double, mix: Double, bloomThreshold: Double, blendMode: Godot.RenderingServer.EnvironmentGlowBlendMode, hdrBleedThreshold: Double, hdrBleedScale: Double, hdrLuminanceCap: Double, glowMapStrength: Double, glowMap: Godot.RID) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        levels.withGodotUnsafeRawPointer { __ptr_levels in
        intensity.withGodotUnsafeRawPointer { __ptr_intensity in
        strength.withGodotUnsafeRawPointer { __ptr_strength in
        mix.withGodotUnsafeRawPointer { __ptr_mix in
        bloomThreshold.withGodotUnsafeRawPointer { __ptr_bloomThreshold in
        blendMode.withGodotUnsafeRawPointer { __ptr_blendMode in
        hdrBleedThreshold.withGodotUnsafeRawPointer { __ptr_hdrBleedThreshold in
        hdrBleedScale.withGodotUnsafeRawPointer { __ptr_hdrBleedScale in
        hdrLuminanceCap.withGodotUnsafeRawPointer { __ptr_hdrLuminanceCap in
        glowMapStrength.withGodotUnsafeRawPointer { __ptr_glowMapStrength in
        glowMap.withGodotUnsafeRawPointer { __ptr_glowMap in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_enable, __ptr_levels, __ptr_intensity, __ptr_strength, __ptr_mix, __ptr_bloomThreshold, __ptr_blendMode, __ptr_hdrBleedThreshold, __ptr_hdrBleedScale, __ptr_hdrLuminanceCap, __ptr_glowMapStrength, __ptr_glowMap) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_glow,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}}}}}}
    }

    private static var __method_binding_environment_set_tonemap: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_tonemap").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2914312638)!
        }
        }
    }()
    public func environmentSetTonemap(env: Godot.RID, toneMapper: Godot.RenderingServer.EnvironmentToneMapper, exposure: Double, white: Double) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        toneMapper.withGodotUnsafeRawPointer { __ptr_toneMapper in
        exposure.withGodotUnsafeRawPointer { __ptr_exposure in
        white.withGodotUnsafeRawPointer { __ptr_white in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_toneMapper, __ptr_exposure, __ptr_white) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_tonemap,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_environment_set_adjustment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_adjustment").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 876799838)!
        }
        }
    }()
    public func environmentSetAdjustment(env: Godot.RID, enable: Bool, brightness: Double, contrast: Double, saturation: Double, use1dColorCorrection: Bool, colorCorrection: Godot.RID) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        brightness.withGodotUnsafeRawPointer { __ptr_brightness in
        contrast.withGodotUnsafeRawPointer { __ptr_contrast in
        saturation.withGodotUnsafeRawPointer { __ptr_saturation in
        use1dColorCorrection.withGodotUnsafeRawPointer { __ptr_use1dColorCorrection in
        colorCorrection.withGodotUnsafeRawPointer { __ptr_colorCorrection in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_enable, __ptr_brightness, __ptr_contrast, __ptr_saturation, __ptr_use1dColorCorrection, __ptr_colorCorrection) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_adjustment,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}
    }

    private static var __method_binding_environment_set_ssr: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_ssr").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3607294374)!
        }
        }
    }()
    public func environmentSetSsr(env: Godot.RID, enable: Bool, maxSteps: Int32, fadeIn: Double, fadeOut: Double, depthTolerance: Double) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        maxSteps.withGodotUnsafeRawPointer { __ptr_maxSteps in
        fadeIn.withGodotUnsafeRawPointer { __ptr_fadeIn in
        fadeOut.withGodotUnsafeRawPointer { __ptr_fadeOut in
        depthTolerance.withGodotUnsafeRawPointer { __ptr_depthTolerance in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_enable, __ptr_maxSteps, __ptr_fadeIn, __ptr_fadeOut, __ptr_depthTolerance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_ssr,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_environment_set_ssao: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_ssao").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3994732740)!
        }
        }
    }()
    public func environmentSetSsao(env: Godot.RID, enable: Bool, radius: Double, intensity: Double, power: Double, detail: Double, horizon: Double, sharpness: Double, lightAffect: Double, aoChannelAffect: Double) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        radius.withGodotUnsafeRawPointer { __ptr_radius in
        intensity.withGodotUnsafeRawPointer { __ptr_intensity in
        power.withGodotUnsafeRawPointer { __ptr_power in
        detail.withGodotUnsafeRawPointer { __ptr_detail in
        horizon.withGodotUnsafeRawPointer { __ptr_horizon in
        sharpness.withGodotUnsafeRawPointer { __ptr_sharpness in
        lightAffect.withGodotUnsafeRawPointer { __ptr_lightAffect in
        aoChannelAffect.withGodotUnsafeRawPointer { __ptr_aoChannelAffect in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_enable, __ptr_radius, __ptr_intensity, __ptr_power, __ptr_detail, __ptr_horizon, __ptr_sharpness, __ptr_lightAffect, __ptr_aoChannelAffect) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_ssao,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}}}
    }

    private static var __method_binding_environment_set_fog: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_fog").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2793577733)!
        }
        }
    }()
    public func environmentSetFog(env: Godot.RID, enable: Bool, lightColor: Godot.Color, lightEnergy: Double, sunScatter: Double, density: Double, height: Double, heightDensity: Double, aerialPerspective: Double, skyAffect: Double) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        lightColor.withGodotUnsafeRawPointer { __ptr_lightColor in
        lightEnergy.withGodotUnsafeRawPointer { __ptr_lightEnergy in
        sunScatter.withGodotUnsafeRawPointer { __ptr_sunScatter in
        density.withGodotUnsafeRawPointer { __ptr_density in
        height.withGodotUnsafeRawPointer { __ptr_height in
        heightDensity.withGodotUnsafeRawPointer { __ptr_heightDensity in
        aerialPerspective.withGodotUnsafeRawPointer { __ptr_aerialPerspective in
        skyAffect.withGodotUnsafeRawPointer { __ptr_skyAffect in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_enable, __ptr_lightColor, __ptr_lightEnergy, __ptr_sunScatter, __ptr_density, __ptr_height, __ptr_heightDensity, __ptr_aerialPerspective, __ptr_skyAffect) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_fog,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}}}
    }

    private static var __method_binding_environment_set_sdfgi: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_sdfgi").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3519144388)!
        }
        }
    }()
    public func environmentSetSdfgi(env: Godot.RID, enable: Bool, cascades: Int32, minCellSize: Double, yScale: Godot.RenderingServer.EnvironmentSDFGIYScale, useOcclusion: Bool, bounceFeedback: Double, readSky: Bool, energy: Double, normalBias: Double, probeBias: Double) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        cascades.withGodotUnsafeRawPointer { __ptr_cascades in
        minCellSize.withGodotUnsafeRawPointer { __ptr_minCellSize in
        yScale.withGodotUnsafeRawPointer { __ptr_yScale in
        useOcclusion.withGodotUnsafeRawPointer { __ptr_useOcclusion in
        bounceFeedback.withGodotUnsafeRawPointer { __ptr_bounceFeedback in
        readSky.withGodotUnsafeRawPointer { __ptr_readSky in
        energy.withGodotUnsafeRawPointer { __ptr_energy in
        normalBias.withGodotUnsafeRawPointer { __ptr_normalBias in
        probeBias.withGodotUnsafeRawPointer { __ptr_probeBias in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_enable, __ptr_cascades, __ptr_minCellSize, __ptr_yScale, __ptr_useOcclusion, __ptr_bounceFeedback, __ptr_readSky, __ptr_energy, __ptr_normalBias, __ptr_probeBias) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_sdfgi,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}}}}
    }

    private static var __method_binding_environment_set_volumetric_fog: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_volumetric_fog").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1553633833)!
        }
        }
    }()
    public func environmentSetVolumetricFog(env: Godot.RID, enable: Bool, density: Double, albedo: Godot.Color, emission: Godot.Color, emissionEnergy: Double, anisotropy: Double, length: Double, pDetailSpread: Double, giInject: Double, temporalReprojection: Bool, temporalReprojectionAmount: Double, ambientInject: Double, skyAffect: Double) {
        env.withGodotUnsafeRawPointer { __ptr_env in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        density.withGodotUnsafeRawPointer { __ptr_density in
        albedo.withGodotUnsafeRawPointer { __ptr_albedo in
        emission.withGodotUnsafeRawPointer { __ptr_emission in
        emissionEnergy.withGodotUnsafeRawPointer { __ptr_emissionEnergy in
        anisotropy.withGodotUnsafeRawPointer { __ptr_anisotropy in
        length.withGodotUnsafeRawPointer { __ptr_length in
        pDetailSpread.withGodotUnsafeRawPointer { __ptr_pDetailSpread in
        giInject.withGodotUnsafeRawPointer { __ptr_giInject in
        temporalReprojection.withGodotUnsafeRawPointer { __ptr_temporalReprojection in
        temporalReprojectionAmount.withGodotUnsafeRawPointer { __ptr_temporalReprojectionAmount in
        ambientInject.withGodotUnsafeRawPointer { __ptr_ambientInject in
        skyAffect.withGodotUnsafeRawPointer { __ptr_skyAffect in
        withUnsafeArgumentPackPointer(__ptr_env, __ptr_enable, __ptr_density, __ptr_albedo, __ptr_emission, __ptr_emissionEnergy, __ptr_anisotropy, __ptr_length, __ptr_pDetailSpread, __ptr_giInject, __ptr_temporalReprojection, __ptr_temporalReprojectionAmount, __ptr_ambientInject, __ptr_skyAffect) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_volumetric_fog,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}}}}}}}
    }

    private static var __method_binding_environment_glow_set_use_bicubic_upscale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_glow_set_use_bicubic_upscale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func environmentGlowSetUseBicubicUpscale(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_glow_set_use_bicubic_upscale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_environment_set_ssr_roughness_quality: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_ssr_roughness_quality").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1190026788)!
        }
        }
    }()
    public func environmentSetSsrRoughnessQuality(_ quality: Godot.RenderingServer.EnvironmentSSRRoughnessQuality) {
        quality.withGodotUnsafeRawPointer { __ptr_quality in
        withUnsafeArgumentPackPointer(__ptr_quality) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_ssr_roughness_quality,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_environment_set_ssao_quality: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_ssao_quality").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 189753569)!
        }
        }
    }()
    public func environmentSetSsaoQuality(_ quality: Godot.RenderingServer.EnvironmentSSAOQuality, halfSize: Bool, adaptiveTarget: Double, blurPasses: Int32, fadeoutFrom: Double, fadeoutTo: Double) {
        quality.withGodotUnsafeRawPointer { __ptr_quality in
        halfSize.withGodotUnsafeRawPointer { __ptr_halfSize in
        adaptiveTarget.withGodotUnsafeRawPointer { __ptr_adaptiveTarget in
        blurPasses.withGodotUnsafeRawPointer { __ptr_blurPasses in
        fadeoutFrom.withGodotUnsafeRawPointer { __ptr_fadeoutFrom in
        fadeoutTo.withGodotUnsafeRawPointer { __ptr_fadeoutTo in
        withUnsafeArgumentPackPointer(__ptr_quality, __ptr_halfSize, __ptr_adaptiveTarget, __ptr_blurPasses, __ptr_fadeoutFrom, __ptr_fadeoutTo) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_ssao_quality,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_environment_set_ssil_quality: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_ssil_quality").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1713836683)!
        }
        }
    }()
    public func environmentSetSsilQuality(_ quality: Godot.RenderingServer.EnvironmentSSILQuality, halfSize: Bool, adaptiveTarget: Double, blurPasses: Int32, fadeoutFrom: Double, fadeoutTo: Double) {
        quality.withGodotUnsafeRawPointer { __ptr_quality in
        halfSize.withGodotUnsafeRawPointer { __ptr_halfSize in
        adaptiveTarget.withGodotUnsafeRawPointer { __ptr_adaptiveTarget in
        blurPasses.withGodotUnsafeRawPointer { __ptr_blurPasses in
        fadeoutFrom.withGodotUnsafeRawPointer { __ptr_fadeoutFrom in
        fadeoutTo.withGodotUnsafeRawPointer { __ptr_fadeoutTo in
        withUnsafeArgumentPackPointer(__ptr_quality, __ptr_halfSize, __ptr_adaptiveTarget, __ptr_blurPasses, __ptr_fadeoutFrom, __ptr_fadeoutTo) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_ssil_quality,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_environment_set_sdfgi_ray_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_sdfgi_ray_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 340137951)!
        }
        }
    }()
    public func environmentSetSdfgiRayCount(_ rayCount: Godot.RenderingServer.EnvironmentSDFGIRayCount) {
        rayCount.withGodotUnsafeRawPointer { __ptr_rayCount in
        withUnsafeArgumentPackPointer(__ptr_rayCount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_sdfgi_ray_count,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_environment_set_sdfgi_frames_to_converge: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_sdfgi_frames_to_converge").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2182444374)!
        }
        }
    }()
    public func environmentSetSdfgiFramesToConverge(frames: Godot.RenderingServer.EnvironmentSDFGIFramesToConverge) {
        frames.withGodotUnsafeRawPointer { __ptr_frames in
        withUnsafeArgumentPackPointer(__ptr_frames) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_sdfgi_frames_to_converge,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_environment_set_sdfgi_frames_to_update_light: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_sdfgi_frames_to_update_light").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1251144068)!
        }
        }
    }()
    public func environmentSetSdfgiFramesToUpdateLight(frames: Godot.RenderingServer.EnvironmentSDFGIFramesToUpdateLight) {
        frames.withGodotUnsafeRawPointer { __ptr_frames in
        withUnsafeArgumentPackPointer(__ptr_frames) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_sdfgi_frames_to_update_light,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_environment_set_volumetric_fog_volume_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_volumetric_fog_volume_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func environmentSetVolumetricFogVolumeSize(_ size: Int32, depth: Int32) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        depth.withGodotUnsafeRawPointer { __ptr_depth in
        withUnsafeArgumentPackPointer(__ptr_size, __ptr_depth) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_volumetric_fog_volume_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_environment_set_volumetric_fog_filter_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_set_volumetric_fog_filter_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func environmentSetVolumetricFogFilterActive(_ active: Bool) {
        active.withGodotUnsafeRawPointer { __ptr_active in
        withUnsafeArgumentPackPointer(__ptr_active) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_set_volumetric_fog_filter_active,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_environment_bake_panorama: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "environment_bake_panorama").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2452908646)!
        }
        }
    }()
    public func environmentBakePanorama(environment: Godot.RID, bakeIrradiance: Bool, size: Godot.Vector2i) -> Godot.Image? {
        Godot.Image?.fromMutatingGodotUnsafePointer { __temporary in
        environment.withGodotUnsafeRawPointer { __ptr_environment in
        bakeIrradiance.withGodotUnsafeRawPointer { __ptr_bakeIrradiance in
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_environment, __ptr_bakeIrradiance, __ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_environment_bake_panorama,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_screen_space_roughness_limiter_set_active: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "screen_space_roughness_limiter_set_active").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 916716790)!
        }
        }
    }()
    public func screenSpaceRoughnessLimiterSetActive(enable: Bool, amount: Double, limit: Double) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        limit.withGodotUnsafeRawPointer { __ptr_limit in
        withUnsafeArgumentPackPointer(__ptr_enable, __ptr_amount, __ptr_limit) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_screen_space_roughness_limiter_set_active,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_sub_surface_scattering_set_quality: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "sub_surface_scattering_set_quality").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 64571803)!
        }
        }
    }()
    public func subSurfaceScatteringSetQuality(_ quality: Godot.RenderingServer.SubSurfaceScatteringQuality) {
        quality.withGodotUnsafeRawPointer { __ptr_quality in
        withUnsafeArgumentPackPointer(__ptr_quality) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_sub_surface_scattering_set_quality,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_sub_surface_scattering_set_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "sub_surface_scattering_set_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1017552074)!
        }
        }
    }()
    public func subSurfaceScatteringSetScale(_ scale: Double, depthScale: Double) {
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        depthScale.withGodotUnsafeRawPointer { __ptr_depthScale in
        withUnsafeArgumentPackPointer(__ptr_scale, __ptr_depthScale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_sub_surface_scattering_set_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_camera_attributes_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_attributes_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func cameraAttributesCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_attributes_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_camera_attributes_set_dof_blur_quality: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_attributes_set_dof_blur_quality").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2220136795)!
        }
        }
    }()
    public func cameraAttributesSetDofBlurQuality(_ quality: Godot.RenderingServer.DOFBlurQuality, useJitter: Bool) {
        quality.withGodotUnsafeRawPointer { __ptr_quality in
        useJitter.withGodotUnsafeRawPointer { __ptr_useJitter in
        withUnsafeArgumentPackPointer(__ptr_quality, __ptr_useJitter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_attributes_set_dof_blur_quality,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_camera_attributes_set_dof_blur_bokeh_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_attributes_set_dof_blur_bokeh_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1205058394)!
        }
        }
    }()
    public func cameraAttributesSetDofBlurBokehShape(_ shape: Godot.RenderingServer.DOFBokehShape) {
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        withUnsafeArgumentPackPointer(__ptr_shape) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_attributes_set_dof_blur_bokeh_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_camera_attributes_set_dof_blur: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_attributes_set_dof_blur").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 316272616)!
        }
        }
    }()
    public func cameraAttributesSetDofBlur(cameraAttributes: Godot.RID, farEnable: Bool, farDistance: Double, farTransition: Double, nearEnable: Bool, nearDistance: Double, nearTransition: Double, amount: Double) {
        cameraAttributes.withGodotUnsafeRawPointer { __ptr_cameraAttributes in
        farEnable.withGodotUnsafeRawPointer { __ptr_farEnable in
        farDistance.withGodotUnsafeRawPointer { __ptr_farDistance in
        farTransition.withGodotUnsafeRawPointer { __ptr_farTransition in
        nearEnable.withGodotUnsafeRawPointer { __ptr_nearEnable in
        nearDistance.withGodotUnsafeRawPointer { __ptr_nearDistance in
        nearTransition.withGodotUnsafeRawPointer { __ptr_nearTransition in
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        withUnsafeArgumentPackPointer(__ptr_cameraAttributes, __ptr_farEnable, __ptr_farDistance, __ptr_farTransition, __ptr_nearEnable, __ptr_nearDistance, __ptr_nearTransition, __ptr_amount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_attributes_set_dof_blur,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}
    }

    private static var __method_binding_camera_attributes_set_exposure: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_attributes_set_exposure").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2513314492)!
        }
        }
    }()
    public func cameraAttributesSetExposure(cameraAttributes: Godot.RID, multiplier: Double, normalization: Double) {
        cameraAttributes.withGodotUnsafeRawPointer { __ptr_cameraAttributes in
        multiplier.withGodotUnsafeRawPointer { __ptr_multiplier in
        normalization.withGodotUnsafeRawPointer { __ptr_normalization in
        withUnsafeArgumentPackPointer(__ptr_cameraAttributes, __ptr_multiplier, __ptr_normalization) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_attributes_set_exposure,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_camera_attributes_set_auto_exposure: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "camera_attributes_set_auto_exposure").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4266986332)!
        }
        }
    }()
    public func cameraAttributesSetAutoExposure(cameraAttributes: Godot.RID, enable: Bool, minSensitivity: Double, maxSensitivity: Double, speed: Double, scale: Double) {
        cameraAttributes.withGodotUnsafeRawPointer { __ptr_cameraAttributes in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        minSensitivity.withGodotUnsafeRawPointer { __ptr_minSensitivity in
        maxSensitivity.withGodotUnsafeRawPointer { __ptr_maxSensitivity in
        speed.withGodotUnsafeRawPointer { __ptr_speed in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_cameraAttributes, __ptr_enable, __ptr_minSensitivity, __ptr_maxSensitivity, __ptr_speed, __ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_camera_attributes_set_auto_exposure,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_scenario_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "scenario_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func scenarioCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_scenario_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_scenario_set_environment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "scenario_set_environment").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func scenarioSetEnvironment(scenario: Godot.RID, environment: Godot.RID) {
        scenario.withGodotUnsafeRawPointer { __ptr_scenario in
        environment.withGodotUnsafeRawPointer { __ptr_environment in
        withUnsafeArgumentPackPointer(__ptr_scenario, __ptr_environment) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_scenario_set_environment,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_scenario_set_fallback_environment: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "scenario_set_fallback_environment").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func scenarioSetFallbackEnvironment(scenario: Godot.RID, environment: Godot.RID) {
        scenario.withGodotUnsafeRawPointer { __ptr_scenario in
        environment.withGodotUnsafeRawPointer { __ptr_environment in
        withUnsafeArgumentPackPointer(__ptr_scenario, __ptr_environment) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_scenario_set_fallback_environment,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_scenario_set_camera_attributes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "scenario_set_camera_attributes").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func scenarioSetCameraAttributes(scenario: Godot.RID, effects: Godot.RID) {
        scenario.withGodotUnsafeRawPointer { __ptr_scenario in
        effects.withGodotUnsafeRawPointer { __ptr_effects in
        withUnsafeArgumentPackPointer(__ptr_scenario, __ptr_effects) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_scenario_set_camera_attributes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_create2: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_create2").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 746547085)!
        }
        }
    }()
    public func instanceCreate2(base: Godot.RID, scenario: Godot.RID) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        base.withGodotUnsafeRawPointer { __ptr_base in
        scenario.withGodotUnsafeRawPointer { __ptr_scenario in
        withUnsafeArgumentPackPointer(__ptr_base, __ptr_scenario) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_create2,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_instance_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func instanceCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_instance_set_base: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_set_base").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func instanceSetBase(instance: Godot.RID, base: Godot.RID) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        base.withGodotUnsafeRawPointer { __ptr_base in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_base) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_set_base,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_set_scenario: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_set_scenario").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func instanceSetScenario(instance: Godot.RID, scenario: Godot.RID) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        scenario.withGodotUnsafeRawPointer { __ptr_scenario in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_scenario) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_set_scenario,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_set_layer_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_set_layer_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func instanceSetLayerMask(instance: Godot.RID, mask: UInt32) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_set_layer_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_set_pivot_data: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_set_pivot_data").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1280615259)!
        }
        }
    }()
    public func instanceSetPivotData(instance: Godot.RID, sortingOffset: Double, useAabbCenter: Bool) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        sortingOffset.withGodotUnsafeRawPointer { __ptr_sortingOffset in
        useAabbCenter.withGodotUnsafeRawPointer { __ptr_useAabbCenter in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_sortingOffset, __ptr_useAabbCenter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_set_pivot_data,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_instance_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3935195649)!
        }
        }
    }()
    public func instanceSetTransform(instance: Godot.RID, transform: Godot.Transform3D) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_attach_object_instance_id: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_attach_object_instance_id").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func instanceAttachObjectInstanceId(instance: Godot.RID, id: UInt64) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        id.withGodotUnsafeRawPointer { __ptr_id in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_id) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_attach_object_instance_id,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_set_blend_shape_weight: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_set_blend_shape_weight").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1892459533)!
        }
        }
    }()
    public func instanceSetBlendShapeWeight(instance: Godot.RID, shape: Int32, weight: Double) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        weight.withGodotUnsafeRawPointer { __ptr_weight in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_shape, __ptr_weight) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_set_blend_shape_weight,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_instance_set_surface_override_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_set_surface_override_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2310537182)!
        }
        }
    }()
    public func instanceSetSurfaceOverrideMaterial(instance: Godot.RID, surface: Int32, material: Godot.RID) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        surface.withGodotUnsafeRawPointer { __ptr_surface in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_surface, __ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_set_surface_override_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_instance_set_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_set_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func instanceSetVisible(instance: Godot.RID, visible: Bool) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        visible.withGodotUnsafeRawPointer { __ptr_visible in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_visible) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_set_visible,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_geometry_set_transparency: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_geometry_set_transparency").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func instanceGeometrySetTransparency(instance: Godot.RID, transparency: Double) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        transparency.withGodotUnsafeRawPointer { __ptr_transparency in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_transparency) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_geometry_set_transparency,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_set_custom_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_set_custom_aabb").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3696536120)!
        }
        }
    }()
    public func instanceSetCustomAabb(instance: Godot.RID, aabb: Godot.AABB) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        aabb.withGodotUnsafeRawPointer { __ptr_aabb in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_aabb) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_set_custom_aabb,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_attach_skeleton: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_attach_skeleton").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func instanceAttachSkeleton(instance: Godot.RID, skeleton: Godot.RID) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        skeleton.withGodotUnsafeRawPointer { __ptr_skeleton in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_skeleton) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_attach_skeleton,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_set_extra_visibility_margin: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_set_extra_visibility_margin").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func instanceSetExtraVisibilityMargin(instance: Godot.RID, margin: Double) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        margin.withGodotUnsafeRawPointer { __ptr_margin in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_margin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_set_extra_visibility_margin,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_set_visibility_parent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_set_visibility_parent").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func instanceSetVisibilityParent(instance: Godot.RID, parent: Godot.RID) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        parent.withGodotUnsafeRawPointer { __ptr_parent in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_parent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_set_visibility_parent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_set_ignore_culling: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_set_ignore_culling").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func instanceSetIgnoreCulling(instance: Godot.RID, enabled: Bool) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_set_ignore_culling,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_geometry_set_flag: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_geometry_set_flag").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1014989537)!
        }
        }
    }()
    public func instanceGeometrySetFlag(instance: Godot.RID, flag: Godot.RenderingServer.InstanceFlags, enabled: Bool) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        flag.withGodotUnsafeRawPointer { __ptr_flag in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_flag, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_geometry_set_flag,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_instance_geometry_set_cast_shadows_setting: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_geometry_set_cast_shadows_setting").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3768836020)!
        }
        }
    }()
    public func instanceGeometrySetCastShadowsSetting(instance: Godot.RID, shadowCastingSetting: Godot.RenderingServer.ShadowCastingSetting) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        shadowCastingSetting.withGodotUnsafeRawPointer { __ptr_shadowCastingSetting in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_shadowCastingSetting) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_geometry_set_cast_shadows_setting,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_geometry_set_material_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_geometry_set_material_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func instanceGeometrySetMaterialOverride(instance: Godot.RID, material: Godot.RID) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_geometry_set_material_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_geometry_set_material_overlay: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_geometry_set_material_overlay").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func instanceGeometrySetMaterialOverlay(instance: Godot.RID, material: Godot.RID) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_geometry_set_material_overlay,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_geometry_set_visibility_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_geometry_set_visibility_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4263925858)!
        }
        }
    }()
    public func instanceGeometrySetVisibilityRange(instance: Godot.RID, min: Double, max: Double, minMargin: Double, maxMargin: Double, fadeMode: Godot.RenderingServer.VisibilityRangeFadeMode) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        min.withGodotUnsafeRawPointer { __ptr_min in
        max.withGodotUnsafeRawPointer { __ptr_max in
        minMargin.withGodotUnsafeRawPointer { __ptr_minMargin in
        maxMargin.withGodotUnsafeRawPointer { __ptr_maxMargin in
        fadeMode.withGodotUnsafeRawPointer { __ptr_fadeMode in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_min, __ptr_max, __ptr_minMargin, __ptr_maxMargin, __ptr_fadeMode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_geometry_set_visibility_range,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_instance_geometry_set_lightmap: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_geometry_set_lightmap").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 536974962)!
        }
        }
    }()
    public func instanceGeometrySetLightmap(instance: Godot.RID, lightmap: Godot.RID, lightmapUvScale: Godot.Rect2, lightmapSlice: Int32) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        lightmap.withGodotUnsafeRawPointer { __ptr_lightmap in
        lightmapUvScale.withGodotUnsafeRawPointer { __ptr_lightmapUvScale in
        lightmapSlice.withGodotUnsafeRawPointer { __ptr_lightmapSlice in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_lightmap, __ptr_lightmapUvScale, __ptr_lightmapSlice) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_geometry_set_lightmap,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_instance_geometry_set_lod_bias: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_geometry_set_lod_bias").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func instanceGeometrySetLodBias(instance: Godot.RID, lodBias: Double) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        lodBias.withGodotUnsafeRawPointer { __ptr_lodBias in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_lodBias) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_geometry_set_lod_bias,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_instance_geometry_set_shader_parameter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_geometry_set_shader_parameter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3477296213)!
        }
        }
    }()
    public func instanceGeometrySetShaderParameter<Value: VariantStorableIn>(instance: Godot.RID, parameter: Godot.GodotStringName, value: Value) {
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        parameter.withGodotUnsafeRawPointer { __ptr_parameter in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_parameter, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_geometry_set_shader_parameter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_instance_geometry_get_shader_parameter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_geometry_get_shader_parameter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2621281810)!
        }
        }
    }()
    public func instanceGeometryGetShaderParameter(instance: Godot.RID, parameter: Godot.GodotStringName) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        parameter.withGodotUnsafeRawPointer { __ptr_parameter in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_parameter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_geometry_get_shader_parameter,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_instance_geometry_get_shader_parameter_default_value: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_geometry_get_shader_parameter_default_value").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2621281810)!
        }
        }
    }()
    public func instanceGeometryGetShaderParameterDefaultValue(instance: Godot.RID, parameter: Godot.GodotStringName) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        parameter.withGodotUnsafeRawPointer { __ptr_parameter in
        withUnsafeArgumentPackPointer(__ptr_instance, __ptr_parameter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_geometry_get_shader_parameter_default_value,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_instance_geometry_get_shader_parameter_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instance_geometry_get_shader_parameter_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2684255073)!
        }
        }
    }()
    public func instanceGeometryGetShaderParameterList(instance: Godot.RID) -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>.fromMutatingGodotUnsafePointer { __temporary in
        instance.withGodotUnsafeRawPointer { __ptr_instance in
        withUnsafeArgumentPackPointer(__ptr_instance) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instance_geometry_get_shader_parameter_list,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_instances_cull_aabb: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instances_cull_aabb").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2570105777)!
        }
        }
    }()
    public func instancesCullAabb(_ aabb: Godot.AABB, scenario: Godot.RID = RID()) -> Godot.PackedInt64Array {
        Godot.PackedInt64Array.fromMutatingGodotUnsafePointer { __temporary in
        aabb.withGodotUnsafeRawPointer { __ptr_aabb in
        scenario.withGodotUnsafeRawPointer { __ptr_scenario in
        withUnsafeArgumentPackPointer(__ptr_aabb, __ptr_scenario) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instances_cull_aabb,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_instances_cull_ray: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instances_cull_ray").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2208759584)!
        }
        }
    }()
    public func instancesCullRay(from: Godot.Vector3, to: Godot.Vector3, scenario: Godot.RID = RID()) -> Godot.PackedInt64Array {
        Godot.PackedInt64Array.fromMutatingGodotUnsafePointer { __temporary in
        from.withGodotUnsafeRawPointer { __ptr_from in
        to.withGodotUnsafeRawPointer { __ptr_to in
        scenario.withGodotUnsafeRawPointer { __ptr_scenario in
        withUnsafeArgumentPackPointer(__ptr_from, __ptr_to, __ptr_scenario) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instances_cull_ray,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_instances_cull_convex: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "instances_cull_convex").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2488539944)!
        }
        }
    }()
    public func instancesCullConvex(_ convex: Godot.GodotArray<Godot.Plane>, scenario: Godot.RID = RID()) -> Godot.PackedInt64Array {
        Godot.PackedInt64Array.fromMutatingGodotUnsafePointer { __temporary in
        convex.withGodotUnsafeRawPointer { __ptr_convex in
        scenario.withGodotUnsafeRawPointer { __ptr_scenario in
        withUnsafeArgumentPackPointer(__ptr_convex, __ptr_scenario) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_instances_cull_convex,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_bake_render_uv2: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "bake_render_uv2").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1904608558)!
        }
        }
    }()
    public func bakeRenderUv2(base: Godot.RID, materialOverrides: Godot.GodotArray<Godot.RID>, imageSize: Godot.Vector2i) -> Godot.GodotArray<Godot.Image?> {
        Godot.GodotArray<Godot.Image?>.fromMutatingGodotUnsafePointer { __temporary in
        base.withGodotUnsafeRawPointer { __ptr_base in
        materialOverrides.withGodotUnsafeRawPointer { __ptr_materialOverrides in
        imageSize.withGodotUnsafeRawPointer { __ptr_imageSize in
        withUnsafeArgumentPackPointer(__ptr_base, __ptr_materialOverrides, __ptr_imageSize) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_bake_render_uv2,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_canvas_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func canvasCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_canvas_set_item_mirroring: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_set_item_mirroring").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2343975398)!
        }
        }
    }()
    public func canvasSetItemMirroring(canvas: Godot.RID, item: Godot.RID, mirroring: Godot.Vector2) {
        canvas.withGodotUnsafeRawPointer { __ptr_canvas in
        item.withGodotUnsafeRawPointer { __ptr_item in
        mirroring.withGodotUnsafeRawPointer { __ptr_mirroring in
        withUnsafeArgumentPackPointer(__ptr_canvas, __ptr_item, __ptr_mirroring) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_set_item_mirroring,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_canvas_set_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_set_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2948539648)!
        }
        }
    }()
    public func canvasSetModulate(canvas: Godot.RID, color: Godot.Color) {
        canvas.withGodotUnsafeRawPointer { __ptr_canvas in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_canvas, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_set_modulate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_set_disable_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_set_disable_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func canvasSetDisableScale(disable: Bool) {
        disable.withGodotUnsafeRawPointer { __ptr_disable in
        withUnsafeArgumentPackPointer(__ptr_disable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_set_disable_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_canvas_texture_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_texture_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func canvasTextureCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_texture_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_canvas_texture_set_channel: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_texture_set_channel").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3822119138)!
        }
        }
    }()
    public func canvasTextureSetChannel(canvasTexture: Godot.RID, channel: Godot.RenderingServer.CanvasTextureChannel, texture: Godot.RID) {
        canvasTexture.withGodotUnsafeRawPointer { __ptr_canvasTexture in
        channel.withGodotUnsafeRawPointer { __ptr_channel in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_canvasTexture, __ptr_channel, __ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_texture_set_channel,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_canvas_texture_set_shading_parameters: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_texture_set_shading_parameters").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2124967469)!
        }
        }
    }()
    public func canvasTextureSetShadingParameters(canvasTexture: Godot.RID, baseColor: Godot.Color, shininess: Double) {
        canvasTexture.withGodotUnsafeRawPointer { __ptr_canvasTexture in
        baseColor.withGodotUnsafeRawPointer { __ptr_baseColor in
        shininess.withGodotUnsafeRawPointer { __ptr_shininess in
        withUnsafeArgumentPackPointer(__ptr_canvasTexture, __ptr_baseColor, __ptr_shininess) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_texture_set_shading_parameters,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_canvas_texture_set_texture_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_texture_set_texture_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1155129294)!
        }
        }
    }()
    public func canvasTextureSetTextureFilter(canvasTexture: Godot.RID, filter: Godot.RenderingServer.CanvasItemTextureFilter) {
        canvasTexture.withGodotUnsafeRawPointer { __ptr_canvasTexture in
        filter.withGodotUnsafeRawPointer { __ptr_filter in
        withUnsafeArgumentPackPointer(__ptr_canvasTexture, __ptr_filter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_texture_set_texture_filter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_texture_set_texture_repeat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_texture_set_texture_repeat").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1652956681)!
        }
        }
    }()
    public func canvasTextureSetTextureRepeat(canvasTexture: Godot.RID, `repeat`: Godot.RenderingServer.CanvasItemTextureRepeat) {
        canvasTexture.withGodotUnsafeRawPointer { __ptr_canvasTexture in
        `repeat`.withGodotUnsafeRawPointer { __ptr_repeat in
        withUnsafeArgumentPackPointer(__ptr_canvasTexture, __ptr_repeat) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_texture_set_texture_repeat,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func canvasItemCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_canvas_item_set_parent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_parent").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func canvasItemSetParent(item: Godot.RID, parent: Godot.RID) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        parent.withGodotUnsafeRawPointer { __ptr_parent in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_parent) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_parent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_default_texture_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_default_texture_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1155129294)!
        }
        }
    }()
    public func canvasItemSetDefaultTextureFilter(item: Godot.RID, filter: Godot.RenderingServer.CanvasItemTextureFilter) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        filter.withGodotUnsafeRawPointer { __ptr_filter in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_filter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_default_texture_filter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_default_texture_repeat: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_default_texture_repeat").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1652956681)!
        }
        }
    }()
    public func canvasItemSetDefaultTextureRepeat(item: Godot.RID, `repeat`: Godot.RenderingServer.CanvasItemTextureRepeat) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        `repeat`.withGodotUnsafeRawPointer { __ptr_repeat in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_repeat) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_default_texture_repeat,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_visible: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_visible").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func canvasItemSetVisible(item: Godot.RID, visible: Bool) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        visible.withGodotUnsafeRawPointer { __ptr_visible in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_visible) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_visible,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_light_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_light_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func canvasItemSetLightMask(item: Godot.RID, mask: Int32) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_light_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_visibility_layer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_visibility_layer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func canvasItemSetVisibilityLayer(item: Godot.RID, visibilityLayer: UInt32) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        visibilityLayer.withGodotUnsafeRawPointer { __ptr_visibilityLayer in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_visibilityLayer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_visibility_layer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1246044741)!
        }
        }
    }()
    public func canvasItemSetTransform(item: Godot.RID, transform: Godot.Transform2D) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_clip: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_clip").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func canvasItemSetClip(item: Godot.RID, clip: Bool) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        clip.withGodotUnsafeRawPointer { __ptr_clip in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_clip) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_clip,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_distance_field_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_distance_field_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func canvasItemSetDistanceFieldMode(item: Godot.RID, enabled: Bool) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_distance_field_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_custom_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_custom_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1333997032)!
        }
        }
    }()
    public func canvasItemSetCustomRect(item: Godot.RID, useCustomRect: Bool, rect: Godot.Rect2 = Rect2(x: 0, y: 0, width: 0, height: 0)) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        useCustomRect.withGodotUnsafeRawPointer { __ptr_useCustomRect in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_useCustomRect, __ptr_rect) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_custom_rect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_canvas_item_set_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2948539648)!
        }
        }
    }()
    public func canvasItemSetModulate(item: Godot.RID, color: Godot.Color) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_modulate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_self_modulate: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_self_modulate").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2948539648)!
        }
        }
    }()
    public func canvasItemSetSelfModulate(item: Godot.RID, color: Godot.Color) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_self_modulate,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_draw_behind_parent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_draw_behind_parent").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func canvasItemSetDrawBehindParent(item: Godot.RID, enabled: Bool) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_draw_behind_parent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_add_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1819681853)!
        }
        }
    }()
    public func canvasItemAddLine(item: Godot.RID, from: Godot.Vector2, to: Godot.Vector2, color: Godot.Color, width: Double = -1.0, antialiased: Bool = false) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        from.withGodotUnsafeRawPointer { __ptr_from in
        to.withGodotUnsafeRawPointer { __ptr_to in
        color.withGodotUnsafeRawPointer { __ptr_color in
        width.withGodotUnsafeRawPointer { __ptr_width in
        antialiased.withGodotUnsafeRawPointer { __ptr_antialiased in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_from, __ptr_to, __ptr_color, __ptr_width, __ptr_antialiased) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_line,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_canvas_item_add_polyline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_polyline").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3098767073)!
        }
        }
    }()
    public func canvasItemAddPolyline(item: Godot.RID, points: Godot.PackedVector2Array, colors: Godot.PackedColorArray, width: Double = -1.0, antialiased: Bool = false) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        points.withGodotUnsafeRawPointer { __ptr_points in
        colors.withGodotUnsafeRawPointer { __ptr_colors in
        width.withGodotUnsafeRawPointer { __ptr_width in
        antialiased.withGodotUnsafeRawPointer { __ptr_antialiased in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_points, __ptr_colors, __ptr_width, __ptr_antialiased) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_polyline,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_canvas_item_add_multiline: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_multiline").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2088642721)!
        }
        }
    }()
    public func canvasItemAddMultiline(item: Godot.RID, points: Godot.PackedVector2Array, colors: Godot.PackedColorArray, width: Double = -1.0) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        points.withGodotUnsafeRawPointer { __ptr_points in
        colors.withGodotUnsafeRawPointer { __ptr_colors in
        width.withGodotUnsafeRawPointer { __ptr_width in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_points, __ptr_colors, __ptr_width) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_multiline,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_canvas_item_add_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 934531857)!
        }
        }
    }()
    public func canvasItemAddRect(item: Godot.RID, rect: Godot.Rect2, color: Godot.Color) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_rect, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_rect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_canvas_item_add_circle: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_circle").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2439351960)!
        }
        }
    }()
    public func canvasItemAddCircle(item: Godot.RID, pos: Godot.Vector2, radius: Double, color: Godot.Color) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        pos.withGodotUnsafeRawPointer { __ptr_pos in
        radius.withGodotUnsafeRawPointer { __ptr_radius in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_pos, __ptr_radius, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_circle,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_canvas_item_add_texture_rect: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_texture_rect").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 324864032)!
        }
        }
    }()
    public func canvasItemAddTextureRect(item: Godot.RID, rect: Godot.Rect2, texture: Godot.RID, tile: Bool = false, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), transpose: Bool = false) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        tile.withGodotUnsafeRawPointer { __ptr_tile in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        transpose.withGodotUnsafeRawPointer { __ptr_transpose in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_rect, __ptr_texture, __ptr_tile, __ptr_modulate, __ptr_transpose) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_texture_rect,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_canvas_item_add_msdf_texture_rect_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_msdf_texture_rect_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 97408773)!
        }
        }
    }()
    public func canvasItemAddMsdfTextureRectRegion(item: Godot.RID, rect: Godot.Rect2, texture: Godot.RID, srcRect: Godot.Rect2, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), outlineSize: Int32 = 0, pxRange: Double = 1.0, scale: Double = 1.0) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        srcRect.withGodotUnsafeRawPointer { __ptr_srcRect in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        outlineSize.withGodotUnsafeRawPointer { __ptr_outlineSize in
        pxRange.withGodotUnsafeRawPointer { __ptr_pxRange in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_rect, __ptr_texture, __ptr_srcRect, __ptr_modulate, __ptr_outlineSize, __ptr_pxRange, __ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_msdf_texture_rect_region,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}
    }

    private static var __method_binding_canvas_item_add_lcd_texture_rect_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_lcd_texture_rect_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 359793297)!
        }
        }
    }()
    public func canvasItemAddLcdTextureRectRegion(item: Godot.RID, rect: Godot.Rect2, texture: Godot.RID, srcRect: Godot.Rect2, modulate: Godot.Color) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        srcRect.withGodotUnsafeRawPointer { __ptr_srcRect in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_rect, __ptr_texture, __ptr_srcRect, __ptr_modulate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_lcd_texture_rect_region,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_canvas_item_add_texture_rect_region: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_texture_rect_region").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 485157892)!
        }
        }
    }()
    public func canvasItemAddTextureRectRegion(item: Godot.RID, rect: Godot.Rect2, texture: Godot.RID, srcRect: Godot.Rect2, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), transpose: Bool = false, clipUv: Bool = true) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        srcRect.withGodotUnsafeRawPointer { __ptr_srcRect in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        transpose.withGodotUnsafeRawPointer { __ptr_transpose in
        clipUv.withGodotUnsafeRawPointer { __ptr_clipUv in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_rect, __ptr_texture, __ptr_srcRect, __ptr_modulate, __ptr_transpose, __ptr_clipUv) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_texture_rect_region,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}
    }

    private static var __method_binding_canvas_item_add_nine_patch: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_nine_patch").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 389957886)!
        }
        }
    }()
    public func canvasItemAddNinePatch(item: Godot.RID, rect: Godot.Rect2, source: Godot.Rect2, texture: Godot.RID, topleft: Godot.Vector2, bottomright: Godot.Vector2, xAxisMode: Godot.RenderingServer.NinePatchAxisMode = RenderingServer.NinePatchAxisMode(rawValue: 0)!, yAxisMode: Godot.RenderingServer.NinePatchAxisMode = RenderingServer.NinePatchAxisMode(rawValue: 0)!, drawCenter: Bool = true, modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1)) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        source.withGodotUnsafeRawPointer { __ptr_source in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        topleft.withGodotUnsafeRawPointer { __ptr_topleft in
        bottomright.withGodotUnsafeRawPointer { __ptr_bottomright in
        xAxisMode.withGodotUnsafeRawPointer { __ptr_xAxisMode in
        yAxisMode.withGodotUnsafeRawPointer { __ptr_yAxisMode in
        drawCenter.withGodotUnsafeRawPointer { __ptr_drawCenter in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_rect, __ptr_source, __ptr_texture, __ptr_topleft, __ptr_bottomright, __ptr_xAxisMode, __ptr_yAxisMode, __ptr_drawCenter, __ptr_modulate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_nine_patch,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}}}
    }

    private static var __method_binding_canvas_item_add_primitive: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_primitive").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3731601077)!
        }
        }
    }()
    public func canvasItemAddPrimitive(item: Godot.RID, points: Godot.PackedVector2Array, colors: Godot.PackedColorArray, uvs: Godot.PackedVector2Array, texture: Godot.RID) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        points.withGodotUnsafeRawPointer { __ptr_points in
        colors.withGodotUnsafeRawPointer { __ptr_colors in
        uvs.withGodotUnsafeRawPointer { __ptr_uvs in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_points, __ptr_colors, __ptr_uvs, __ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_primitive,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_canvas_item_add_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3580000528)!
        }
        }
    }()
    public func canvasItemAddPolygon(item: Godot.RID, points: Godot.PackedVector2Array, colors: Godot.PackedColorArray, uvs: Godot.PackedVector2Array = PackedVector2Array(), texture: Godot.RID = RID()) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        points.withGodotUnsafeRawPointer { __ptr_points in
        colors.withGodotUnsafeRawPointer { __ptr_colors in
        uvs.withGodotUnsafeRawPointer { __ptr_uvs in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_points, __ptr_colors, __ptr_uvs, __ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_polygon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_canvas_item_add_triangle_array: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_triangle_array").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 660261329)!
        }
        }
    }()
    public func canvasItemAddTriangleArray(item: Godot.RID, indices: Godot.PackedInt32Array, points: Godot.PackedVector2Array, colors: Godot.PackedColorArray, uvs: Godot.PackedVector2Array = PackedVector2Array(), bones: Godot.PackedInt32Array = PackedInt32Array(), weights: Godot.PackedFloat32Array = PackedFloat32Array(), texture: Godot.RID = RID(), count: Int32 = -1) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        indices.withGodotUnsafeRawPointer { __ptr_indices in
        points.withGodotUnsafeRawPointer { __ptr_points in
        colors.withGodotUnsafeRawPointer { __ptr_colors in
        uvs.withGodotUnsafeRawPointer { __ptr_uvs in
        bones.withGodotUnsafeRawPointer { __ptr_bones in
        weights.withGodotUnsafeRawPointer { __ptr_weights in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        count.withGodotUnsafeRawPointer { __ptr_count in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_indices, __ptr_points, __ptr_colors, __ptr_uvs, __ptr_bones, __ptr_weights, __ptr_texture, __ptr_count) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_triangle_array,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}}}}
    }

    private static var __method_binding_canvas_item_add_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 316450961)!
        }
        }
    }()
    public func canvasItemAddMesh(item: Godot.RID, mesh: Godot.RID, transform: Godot.Transform2D = Transform2D(xAxisX: 1, xAxisY: 0, yAxisX: 0, yAxisY: 1, originX: 0, originY: 0), modulate: Godot.Color = Color(r: 1, g: 1, b: 1, a: 1), texture: Godot.RID = RID()) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        modulate.withGodotUnsafeRawPointer { __ptr_modulate in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_mesh, __ptr_transform, __ptr_modulate, __ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_mesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_canvas_item_add_multimesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_multimesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2131855138)!
        }
        }
    }()
    public func canvasItemAddMultimesh(item: Godot.RID, mesh: Godot.RID, texture: Godot.RID = RID()) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        mesh.withGodotUnsafeRawPointer { __ptr_mesh in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_mesh, __ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_multimesh,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_canvas_item_add_particles: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_particles").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2575754278)!
        }
        }
    }()
    public func canvasItemAddParticles(item: Godot.RID, particles: Godot.RID, texture: Godot.RID) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        particles.withGodotUnsafeRawPointer { __ptr_particles in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_particles, __ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_particles,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_canvas_item_add_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1246044741)!
        }
        }
    }()
    public func canvasItemAddSetTransform(item: Godot.RID, transform: Godot.Transform2D) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_add_clip_ignore: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_clip_ignore").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func canvasItemAddClipIgnore(item: Godot.RID, ignore: Bool) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        ignore.withGodotUnsafeRawPointer { __ptr_ignore in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_ignore) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_clip_ignore,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_add_animation_slice: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_add_animation_slice").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2646834499)!
        }
        }
    }()
    public func canvasItemAddAnimationSlice(item: Godot.RID, animationLength: Double, sliceBegin: Double, sliceEnd: Double, offset: Double = 0.0) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        animationLength.withGodotUnsafeRawPointer { __ptr_animationLength in
        sliceBegin.withGodotUnsafeRawPointer { __ptr_sliceBegin in
        sliceEnd.withGodotUnsafeRawPointer { __ptr_sliceEnd in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_animationLength, __ptr_sliceBegin, __ptr_sliceEnd, __ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_add_animation_slice,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_canvas_item_set_sort_children_by_y: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_sort_children_by_y").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func canvasItemSetSortChildrenByY(item: Godot.RID, enabled: Bool) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_sort_children_by_y,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_z_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_z_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func canvasItemSetZIndex(item: Godot.RID, zIndex: Int32) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        zIndex.withGodotUnsafeRawPointer { __ptr_zIndex in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_zIndex) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_z_index,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_z_as_relative_to_parent: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_z_as_relative_to_parent").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func canvasItemSetZAsRelativeToParent(item: Godot.RID, enabled: Bool) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_z_as_relative_to_parent,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_copy_to_backbuffer: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_copy_to_backbuffer").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2429202503)!
        }
        }
    }()
    public func canvasItemSetCopyToBackbuffer(item: Godot.RID, enabled: Bool, rect: Godot.Rect2) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        rect.withGodotUnsafeRawPointer { __ptr_rect in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_enabled, __ptr_rect) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_copy_to_backbuffer,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_canvas_item_clear: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_clear").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func canvasItemClear(item: Godot.RID) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        withUnsafeArgumentPackPointer(__ptr_item) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_clear,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_canvas_item_set_draw_index: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_draw_index").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func canvasItemSetDrawIndex(item: Godot.RID, index: Int32) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        index.withGodotUnsafeRawPointer { __ptr_index in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_index) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_draw_index,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func canvasItemSetMaterial(item: Godot.RID, material: Godot.RID) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        material.withGodotUnsafeRawPointer { __ptr_material in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_material) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_use_parent_material: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_use_parent_material").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func canvasItemSetUseParentMaterial(item: Godot.RID, enabled: Bool) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_use_parent_material,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_item_set_visibility_notifier: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_visibility_notifier").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3568945579)!
        }
        }
    }()
    public func canvasItemSetVisibilityNotifier(item: Godot.RID, enable: Bool, area: Godot.Rect2, enterCallable: Godot.Callable, exitCallable: Godot.Callable) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        area.withGodotUnsafeRawPointer { __ptr_area in
        enterCallable.withGodotUnsafeRawPointer { __ptr_enterCallable in
        exitCallable.withGodotUnsafeRawPointer { __ptr_exitCallable in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_enable, __ptr_area, __ptr_enterCallable, __ptr_exitCallable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_visibility_notifier,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_canvas_item_set_canvas_group_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_item_set_canvas_group_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3973586316)!
        }
        }
    }()
    public func canvasItemSetCanvasGroupMode(item: Godot.RID, mode: Godot.RenderingServer.CanvasGroupMode, clearMargin: Double = 5.0, fitEmpty: Bool = false, fitMargin: Double = 0.0, blurMipmaps: Bool = false) {
        item.withGodotUnsafeRawPointer { __ptr_item in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        clearMargin.withGodotUnsafeRawPointer { __ptr_clearMargin in
        fitEmpty.withGodotUnsafeRawPointer { __ptr_fitEmpty in
        fitMargin.withGodotUnsafeRawPointer { __ptr_fitMargin in
        blurMipmaps.withGodotUnsafeRawPointer { __ptr_blurMipmaps in
        withUnsafeArgumentPackPointer(__ptr_item, __ptr_mode, __ptr_clearMargin, __ptr_fitEmpty, __ptr_fitMargin, __ptr_blurMipmaps) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_item_set_canvas_group_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}}
    }

    private static var __method_binding_canvas_light_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func canvasLightCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_canvas_light_attach_to_canvas: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_attach_to_canvas").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func canvasLightAttachToCanvas(light: Godot.RID, canvas: Godot.RID) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        canvas.withGodotUnsafeRawPointer { __ptr_canvas in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_canvas) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_attach_to_canvas,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func canvasLightSetEnabled(light: Godot.RID, enabled: Bool) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_texture_scale: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_texture_scale").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func canvasLightSetTextureScale(light: Godot.RID, scale: Double) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_scale) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_texture_scale,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1246044741)!
        }
        }
    }()
    public func canvasLightSetTransform(light: Godot.RID, transform: Godot.Transform2D) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func canvasLightSetTexture(light: Godot.RID, texture: Godot.RID) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        texture.withGodotUnsafeRawPointer { __ptr_texture in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_texture) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_texture,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_texture_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_texture_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3201125042)!
        }
        }
    }()
    public func canvasLightSetTextureOffset(light: Godot.RID, offset: Godot.Vector2) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_texture_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2948539648)!
        }
        }
    }()
    public func canvasLightSetColor(light: Godot.RID, color: Godot.Color) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_height: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_height").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func canvasLightSetHeight(light: Godot.RID, height: Double) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        height.withGodotUnsafeRawPointer { __ptr_height in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_height) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_height,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_energy: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_energy").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func canvasLightSetEnergy(light: Godot.RID, energy: Double) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        energy.withGodotUnsafeRawPointer { __ptr_energy in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_energy) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_energy,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_z_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_z_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4288446313)!
        }
        }
    }()
    public func canvasLightSetZRange(light: Godot.RID, minZ: Int32, maxZ: Int32) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        minZ.withGodotUnsafeRawPointer { __ptr_minZ in
        maxZ.withGodotUnsafeRawPointer { __ptr_maxZ in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_minZ, __ptr_maxZ) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_z_range,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_canvas_light_set_layer_range: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_layer_range").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 4288446313)!
        }
        }
    }()
    public func canvasLightSetLayerRange(light: Godot.RID, minLayer: Int32, maxLayer: Int32) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        minLayer.withGodotUnsafeRawPointer { __ptr_minLayer in
        maxLayer.withGodotUnsafeRawPointer { __ptr_maxLayer in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_minLayer, __ptr_maxLayer) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_layer_range,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_canvas_light_set_item_cull_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_item_cull_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func canvasLightSetItemCullMask(light: Godot.RID, mask: Int32) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_item_cull_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_item_shadow_cull_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_item_shadow_cull_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func canvasLightSetItemShadowCullMask(light: Godot.RID, mask: Int32) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_item_shadow_cull_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2957564891)!
        }
        }
    }()
    public func canvasLightSetMode(light: Godot.RID, mode: Godot.RenderingServer.CanvasLightMode) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_shadow_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_shadow_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func canvasLightSetShadowEnabled(light: Godot.RID, enabled: Bool) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_shadow_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_shadow_filter: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_shadow_filter").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 393119659)!
        }
        }
    }()
    public func canvasLightSetShadowFilter(light: Godot.RID, filter: Godot.RenderingServer.CanvasLightShadowFilter) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        filter.withGodotUnsafeRawPointer { __ptr_filter in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_filter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_shadow_filter,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_shadow_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_shadow_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2948539648)!
        }
        }
    }()
    public func canvasLightSetShadowColor(light: Godot.RID, color: Godot.Color) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_shadow_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_shadow_smooth: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_shadow_smooth").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1794382983)!
        }
        }
    }()
    public func canvasLightSetShadowSmooth(light: Godot.RID, smooth: Double) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        smooth.withGodotUnsafeRawPointer { __ptr_smooth in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_smooth) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_shadow_smooth,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_set_blend_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_set_blend_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 804895945)!
        }
        }
    }()
    public func canvasLightSetBlendMode(light: Godot.RID, mode: Godot.RenderingServer.CanvasLightBlendMode) {
        light.withGodotUnsafeRawPointer { __ptr_light in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_light, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_set_blend_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_occluder_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_occluder_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func canvasLightOccluderCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_occluder_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_canvas_light_occluder_attach_to_canvas: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_occluder_attach_to_canvas").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func canvasLightOccluderAttachToCanvas(occluder: Godot.RID, canvas: Godot.RID) {
        occluder.withGodotUnsafeRawPointer { __ptr_occluder in
        canvas.withGodotUnsafeRawPointer { __ptr_canvas in
        withUnsafeArgumentPackPointer(__ptr_occluder, __ptr_canvas) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_occluder_attach_to_canvas,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_occluder_set_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_occluder_set_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func canvasLightOccluderSetEnabled(occluder: Godot.RID, enabled: Bool) {
        occluder.withGodotUnsafeRawPointer { __ptr_occluder in
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_occluder, __ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_occluder_set_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_occluder_set_polygon: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_occluder_set_polygon").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 395945892)!
        }
        }
    }()
    public func canvasLightOccluderSetPolygon(occluder: Godot.RID, polygon: Godot.RID) {
        occluder.withGodotUnsafeRawPointer { __ptr_occluder in
        polygon.withGodotUnsafeRawPointer { __ptr_polygon in
        withUnsafeArgumentPackPointer(__ptr_occluder, __ptr_polygon) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_occluder_set_polygon,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_occluder_set_as_sdf_collision: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_occluder_set_as_sdf_collision").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1265174801)!
        }
        }
    }()
    public func canvasLightOccluderSetAsSdfCollision(occluder: Godot.RID, enable: Bool) {
        occluder.withGodotUnsafeRawPointer { __ptr_occluder in
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_occluder, __ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_occluder_set_as_sdf_collision,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_occluder_set_transform: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_occluder_set_transform").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1246044741)!
        }
        }
    }()
    public func canvasLightOccluderSetTransform(occluder: Godot.RID, transform: Godot.Transform2D) {
        occluder.withGodotUnsafeRawPointer { __ptr_occluder in
        transform.withGodotUnsafeRawPointer { __ptr_transform in
        withUnsafeArgumentPackPointer(__ptr_occluder, __ptr_transform) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_occluder_set_transform,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_light_occluder_set_light_mask: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_light_occluder_set_light_mask").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3411492887)!
        }
        }
    }()
    public func canvasLightOccluderSetLightMask(occluder: Godot.RID, mask: Int32) {
        occluder.withGodotUnsafeRawPointer { __ptr_occluder in
        mask.withGodotUnsafeRawPointer { __ptr_mask in
        withUnsafeArgumentPackPointer(__ptr_occluder, __ptr_mask) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_light_occluder_set_light_mask,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_occluder_polygon_create: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_occluder_polygon_create").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func canvasOccluderPolygonCreate() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_occluder_polygon_create,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_canvas_occluder_polygon_set_shape: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_occluder_polygon_set_shape").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2103882027)!
        }
        }
    }()
    public func canvasOccluderPolygonSetShape(occluderPolygon: Godot.RID, shape: Godot.PackedVector2Array, closed: Bool) {
        occluderPolygon.withGodotUnsafeRawPointer { __ptr_occluderPolygon in
        shape.withGodotUnsafeRawPointer { __ptr_shape in
        closed.withGodotUnsafeRawPointer { __ptr_closed in
        withUnsafeArgumentPackPointer(__ptr_occluderPolygon, __ptr_shape, __ptr_closed) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_occluder_polygon_set_shape,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_canvas_occluder_polygon_set_cull_mode: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_occluder_polygon_set_cull_mode").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1839404663)!
        }
        }
    }()
    public func canvasOccluderPolygonSetCullMode(occluderPolygon: Godot.RID, mode: Godot.RenderingServer.CanvasOccluderPolygonCullMode) {
        occluderPolygon.withGodotUnsafeRawPointer { __ptr_occluderPolygon in
        mode.withGodotUnsafeRawPointer { __ptr_mode in
        withUnsafeArgumentPackPointer(__ptr_occluderPolygon, __ptr_mode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_occluder_polygon_set_cull_mode,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_canvas_set_shadow_texture_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "canvas_set_shadow_texture_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func canvasSetShadowTextureSize(_ size: Int32) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_canvas_set_shadow_texture_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_global_shader_parameter_add: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_shader_parameter_add").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 463390080)!
        }
        }
    }()
    public func globalShaderParameterAdd<Value: VariantStorableIn>(name: Godot.GodotStringName, type: Godot.RenderingServer.GlobalShaderParameterType, defaultValue: Value) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        type.withGodotUnsafeRawPointer { __ptr_type in
        Godot.Variant.withStorageUnsafeRawPointer(to: defaultValue) { __ptr_defaultValue in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_type, __ptr_defaultValue) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_global_shader_parameter_add,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}
    }

    private static var __method_binding_global_shader_parameter_remove: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_shader_parameter_remove").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3304788590)!
        }
        }
    }()
    public func globalShaderParameterRemove(name: Godot.GodotStringName) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_global_shader_parameter_remove,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_global_shader_parameter_get_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_shader_parameter_get_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func globalShaderParameterGetList() -> Godot.GodotArray<Godot.GodotStringName> {
        Godot.GodotArray<Godot.GodotStringName>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_global_shader_parameter_get_list,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_global_shader_parameter_set: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_shader_parameter_set").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3776071444)!
        }
        }
    }()
    public func globalShaderParameterSet<Value: VariantStorableIn>(name: Godot.GodotStringName, value: Value) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_global_shader_parameter_set,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_global_shader_parameter_set_override: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_shader_parameter_set_override").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3776071444)!
        }
        }
    }()
    public func globalShaderParameterSetOverride<Value: VariantStorableIn>(name: Godot.GodotStringName, value: Value) {
        name.withGodotUnsafeRawPointer { __ptr_name in
        Godot.Variant.withStorageUnsafeRawPointer(to: value) { __ptr_value in
        withUnsafeArgumentPackPointer(__ptr_name, __ptr_value) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_global_shader_parameter_set_override,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_global_shader_parameter_get: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_shader_parameter_get").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2760726917)!
        }
        }
    }()
    public func globalShaderParameterGet(name: Godot.GodotStringName) -> Godot.Variant {
        Godot.Variant.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_global_shader_parameter_get,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_global_shader_parameter_get_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "global_shader_parameter_get_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1601414142)!
        }
        }
    }()
    public func globalShaderParameterGetType(name: Godot.GodotStringName) -> Godot.RenderingServer.GlobalShaderParameterType {
        Godot.RenderingServer.GlobalShaderParameterType.fromMutatingGodotUnsafePointer { __temporary in
        name.withGodotUnsafeRawPointer { __ptr_name in
        withUnsafeArgumentPackPointer(__ptr_name) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_global_shader_parameter_get_type,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_free_rid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "free_rid").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2722037293)!
        }
        }
    }()
    public func freeRid(_ rid: Godot.RID) {
        rid.withGodotUnsafeRawPointer { __ptr_rid in
        withUnsafeArgumentPackPointer(__ptr_rid) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_free_rid,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_request_frame_drawn_callback: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "request_frame_drawn_callback").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1611583062)!
        }
        }
    }()
    public func requestFrameDrawnCallback(callable: Godot.Callable) {
        callable.withGodotUnsafeRawPointer { __ptr_callable in
        withUnsafeArgumentPackPointer(__ptr_callable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_request_frame_drawn_callback,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_has_changed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_changed").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    public func hasChanged() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_has_changed,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_rendering_info: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rendering_info").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3763192241)!
        }
        }
    }()
    public func renderingInfo(_ info: Godot.RenderingServer.RenderingInfo) -> UInt64 {
        UInt64.fromMutatingGodotUnsafePointer { __temporary in
        info.withGodotUnsafeRawPointer { __ptr_info in
        withUnsafeArgumentPackPointer(__ptr_info) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_rendering_info,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_get_video_adapter_name: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_video_adapter_name").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func videoAdapterName() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_video_adapter_name,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_video_adapter_vendor: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_video_adapter_vendor").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func videoAdapterVendor() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_video_adapter_vendor,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_video_adapter_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_video_adapter_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3099547011)!
        }
        }
    }()
    public func videoAdapterType() -> Godot.RenderingDevice.DeviceType {
        Godot.RenderingDevice.DeviceType.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_video_adapter_type,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_video_adapter_api_version: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_video_adapter_api_version").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 201670096)!
        }
        }
    }()
    public func videoAdapterApiVersion() -> Godot.GodotString {
        Godot.GodotString.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_video_adapter_api_version,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_make_sphere_mesh: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "make_sphere_mesh").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2251015897)!
        }
        }
    }()
    public func makeSphereMesh(latitudes: Int32, longitudes: Int32, radius: Double) -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        latitudes.withGodotUnsafeRawPointer { __ptr_latitudes in
        longitudes.withGodotUnsafeRawPointer { __ptr_longitudes in
        radius.withGodotUnsafeRawPointer { __ptr_radius in
        withUnsafeArgumentPackPointer(__ptr_latitudes, __ptr_longitudes, __ptr_radius) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_make_sphere_mesh,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    private static var __method_binding_get_test_cube: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_test_cube").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func testCube() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_test_cube,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_test_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_test_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func testTexture() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_test_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_white_texture: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_white_texture").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 529393457)!
        }
        }
    }()
    public func whiteTexture() -> Godot.RID {
        Godot.RID.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_white_texture,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_boot_image: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_boot_image").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3759744527)!
        }
        }
    }()
    public func setBootImage(_ image: Godot.Image?, color: Godot.Color, scale: Bool, useFilter: Bool = true) {
        image.withGodotUnsafeRawPointer { __ptr_image in
        withUnsafePointer(to: __ptr_image) { _ptr___ptr_image in
        color.withGodotUnsafeRawPointer { __ptr_color in
        scale.withGodotUnsafeRawPointer { __ptr_scale in
        useFilter.withGodotUnsafeRawPointer { __ptr_useFilter in
        withUnsafeArgumentPackPointer(_ptr___ptr_image, __ptr_color, __ptr_scale, __ptr_useFilter) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_boot_image,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_get_default_clear_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_default_clear_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3200896285)!
        }
        }
    }()
    public func defaultClearColor() -> Godot.Color {
        Godot.Color.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_default_clear_color,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_default_clear_color: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_default_clear_color").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2920490490)!
        }
        }
    }()
    public func setDefaultClearColor(_ color: Godot.Color) {
        color.withGodotUnsafeRawPointer { __ptr_color in
        withUnsafeArgumentPackPointer(__ptr_color) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_default_clear_color,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_has_feature: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_feature").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 598462696)!
        }
        }
    }()
    public func hasFeature(_ feature: Godot.RenderingServer.Features) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        feature.withGodotUnsafeRawPointer { __ptr_feature in
        withUnsafeArgumentPackPointer(__ptr_feature) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_has_feature,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_has_os_feature: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "has_os_feature").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3927539163)!
        }
        }
    }()
    public func hasOsFeature(_ feature: Godot.GodotString) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        feature.withGodotUnsafeRawPointer { __ptr_feature in
        withUnsafeArgumentPackPointer(__ptr_feature) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_has_os_feature,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    private static var __method_binding_set_debug_generate_wireframes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_debug_generate_wireframes").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    public func setDebugGenerateWireframes(generate: Bool) {
        generate.withGodotUnsafeRawPointer { __ptr_generate in
        withUnsafeArgumentPackPointer(__ptr_generate) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_debug_generate_wireframes,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_render_loop_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_render_loop_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isRenderLoopEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_is_render_loop_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_render_loop_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_render_loop_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setRenderLoopEnabled(_ enabled: Bool) {
        enabled.withGodotUnsafeRawPointer { __ptr_enabled in
        withUnsafeArgumentPackPointer(__ptr_enabled) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_set_render_loop_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_frame_setup_time_cpu: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_frame_setup_time_cpu").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func frameSetupTimeCpu() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_frame_setup_time_cpu,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_force_sync: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "force_sync").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func forceSync() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_force_sync,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_force_draw: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "force_draw").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1076185472)!
        }
        }
    }()
    public func forceDraw(swapBuffers: Bool = true, frameStep: Double = 0.0) {
        swapBuffers.withGodotUnsafeRawPointer { __ptr_swapBuffers in
        frameStep.withGodotUnsafeRawPointer { __ptr_frameStep in
        withUnsafeArgumentPackPointer(__ptr_swapBuffers, __ptr_frameStep) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_force_draw,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_get_rendering_device: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_rendering_device").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1405107940)!
        }
        }
    }()
    public func renderingDevice() -> Godot.RenderingDevice? {
        Godot.RenderingDevice?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_get_rendering_device,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_create_local_rendering_device: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "create_local_rendering_device").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1405107940)!
        }
        }
    }()
    public func createLocalRenderingDevice() -> Godot.RenderingDevice? {
        Godot.RenderingDevice?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_create_local_rendering_device,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_call_on_render_thread: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "call_on_render_thread").withGodotUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1611583062)!
        }
        }
    }()
    public func callOnRenderThread(callable: Godot.Callable) {
        callable.withGodotUnsafeRawPointer { __ptr_callable in
        withUnsafeArgumentPackPointer(__ptr_callable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        gdextension_interface_object_method_bind_ptrcall(
            Self.__method_binding_call_on_render_thread,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    public var isRenderLoopEnabled: Bool {
        get {
            __isRenderLoopEnabled()
        }
        set {
            __setRenderLoopEnabled(
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