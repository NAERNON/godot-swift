//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotRefCountedClass
open class TextServerExtension: TextServer {
    open func _hasFeature(
        _ feature: Godot.TextServer.Feature
    ) -> Bool {
        Bool()
    }

    open func _getName() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getFeatures() -> Int64 {
        Int64()
    }

    open func _freeRid(
        _ rid: Godot.RID
    ) {
    }

    open func _has(
        rid: Godot.RID
    ) -> Bool {
        Bool()
    }

    open func _loadSupportData(
        filename: Godot.GodotString
    ) -> Bool {
        Bool()
    }

    open func _getSupportDataFilename() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _getSupportDataInfo() -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _saveSupportData(
        filename: Godot.GodotString
    ) -> Bool {
        Bool()
    }

    open func _isLocaleRightToLeft(
        locale: Godot.GodotString
    ) -> Bool {
        Bool()
    }

    open func _nameToTag(
        name: Godot.GodotString
    ) -> Int64 {
        Int64()
    }

    open func _tagToName(
        tag: Int64
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _createFont() -> Godot.RID {
        Godot.RID()
    }

    open func _createFontLinkedVariation(
        fontRid: Godot.RID
    ) -> Godot.RID {
        Godot.RID()
    }

    open func _fontSetData(
        fontRid: Godot.RID,
        data: Godot.PackedByteArray
    ) {
    }

    open func _fontSetDataPtr(
        fontRid: Godot.RID,
        dataPtr: UnsafePointer<UInt8>,
        dataSize: Int64
    ) {
    }

    open func _fontSetFaceIndex(
        fontRid: Godot.RID,
        faceIndex: Int64
    ) {
    }

    open func _fontGetFaceIndex(
        fontRid: Godot.RID
    ) -> Int64 {
        Int64()
    }

    open func _fontGetFaceCount(
        fontRid: Godot.RID
    ) -> Int64 {
        Int64()
    }

    open func _fontSetStyle(
        fontRid: Godot.RID,
        style: Godot.TextServer.FontStyle
    ) {
    }

    open func _fontGetStyle(
        fontRid: Godot.RID
    ) -> Godot.TextServer.FontStyle {
        Godot.TextServer.FontStyle()
    }

    open func _fontSetName(
        fontRid: Godot.RID,
        name: Godot.GodotString
    ) {
    }

    open func _fontGetName(
        fontRid: Godot.RID
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _fontGetOtNameStrings(
        fontRid: Godot.RID
    ) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _fontSetStyleName(
        fontRid: Godot.RID,
        nameStyle: Godot.GodotString
    ) {
    }

    open func _fontGetStyleName(
        fontRid: Godot.RID
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _fontSetWeight(
        fontRid: Godot.RID,
        weight: Int64
    ) {
    }

    open func _fontGetWeight(
        fontRid: Godot.RID
    ) -> Int64 {
        Int64()
    }

    open func _fontSetStretch(
        fontRid: Godot.RID,
        stretch: Int64
    ) {
    }

    open func _fontGetStretch(
        fontRid: Godot.RID
    ) -> Int64 {
        Int64()
    }

    open func _fontSetAntialiasing(
        fontRid: Godot.RID,
        antialiasing: Godot.TextServer.FontAntialiasing
    ) {
    }

    open func _fontGetAntialiasing(
        fontRid: Godot.RID
    ) -> Godot.TextServer.FontAntialiasing {
        Godot.TextServer.FontAntialiasing(rawValue: 0)!
    }

    open func _fontSetGenerateMipmaps(
        fontRid: Godot.RID,
        generateMipmaps: Bool
    ) {
    }

    open func _fontGetGenerateMipmaps(
        fontRid: Godot.RID
    ) -> Bool {
        Bool()
    }

    open func _fontSetMultichannelSignedDistanceField(
        fontRid: Godot.RID,
        msdf: Bool
    ) {
    }

    open func _fontIsMultichannelSignedDistanceField(
        fontRid: Godot.RID
    ) -> Bool {
        Bool()
    }

    open func _fontSetMsdfPixelRange(
        fontRid: Godot.RID,
        msdfPixelRange: Int64
    ) {
    }

    open func _fontGetMsdfPixelRange(
        fontRid: Godot.RID
    ) -> Int64 {
        Int64()
    }

    open func _fontSetMsdfSize(
        fontRid: Godot.RID,
        msdfSize: Int64
    ) {
    }

    open func _fontGetMsdfSize(
        fontRid: Godot.RID
    ) -> Int64 {
        Int64()
    }

    open func _fontSetFixedSize(
        fontRid: Godot.RID,
        fixedSize: Int64
    ) {
    }

    open func _fontGetFixedSize(
        fontRid: Godot.RID
    ) -> Int64 {
        Int64()
    }

    open func _fontSetFixedSizeScaleMode(
        fontRid: Godot.RID,
        fixedSizeScaleMode: Godot.TextServer.FixedSizeScaleMode
    ) {
    }

    open func _fontGetFixedSizeScaleMode(
        fontRid: Godot.RID
    ) -> Godot.TextServer.FixedSizeScaleMode {
        Godot.TextServer.FixedSizeScaleMode(rawValue: 0)!
    }

    open func _fontSetAllowSystemFallback(
        fontRid: Godot.RID,
        allowSystemFallback: Bool
    ) {
    }

    open func _fontIsAllowSystemFallback(
        fontRid: Godot.RID
    ) -> Bool {
        Bool()
    }

    open func _fontSetForceAutohinter(
        fontRid: Godot.RID,
        forceAutohinter: Bool
    ) {
    }

    open func _fontIsForceAutohinter(
        fontRid: Godot.RID
    ) -> Bool {
        Bool()
    }

    open func _fontSetHinting(
        fontRid: Godot.RID,
        hinting: Godot.TextServer.Hinting
    ) {
    }

    open func _fontGetHinting(
        fontRid: Godot.RID
    ) -> Godot.TextServer.Hinting {
        Godot.TextServer.Hinting(rawValue: 0)!
    }

    open func _fontSetSubpixelPositioning(
        fontRid: Godot.RID,
        subpixelPositioning: Godot.TextServer.SubpixelPositioning
    ) {
    }

    open func _fontGetSubpixelPositioning(
        fontRid: Godot.RID
    ) -> Godot.TextServer.SubpixelPositioning {
        Godot.TextServer.SubpixelPositioning(rawValue: 0)!
    }

    open func _fontSetEmbolden(
        fontRid: Godot.RID,
        strength: Double
    ) {
    }

    open func _fontGetEmbolden(
        fontRid: Godot.RID
    ) -> Double {
        Double()
    }

    open func _fontSetSpacing(
        fontRid: Godot.RID,
        spacing: Godot.TextServer.SpacingType,
        value: Int64
    ) {
    }

    open func _fontGetSpacing(
        fontRid: Godot.RID,
        spacing: Godot.TextServer.SpacingType
    ) -> Int64 {
        Int64()
    }

    open func _fontSetTransform(
        fontRid: Godot.RID,
        transform: Godot.Transform2D
    ) {
    }

    open func _fontGetTransform(
        fontRid: Godot.RID
    ) -> Godot.Transform2D {
        Godot.Transform2D()
    }

    open func _fontSetVariationCoordinates(
        fontRid: Godot.RID,
        variationCoordinates: Godot.AnyGodotDictionary
    ) {
    }

    open func _fontGetVariationCoordinates(
        fontRid: Godot.RID
    ) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _fontSetOversampling(
        fontRid: Godot.RID,
        oversampling: Double
    ) {
    }

    open func _fontGetOversampling(
        fontRid: Godot.RID
    ) -> Double {
        Double()
    }

    open func _fontGetSizeCacheList(
        fontRid: Godot.RID
    ) -> Godot.GodotArray<Godot.Vector2I> {
        Godot.GodotArray<Godot.Vector2I>()
    }

    open func _fontClearSizeCache(
        fontRid: Godot.RID
    ) {
    }

    open func _fontRemoveSizeCache(
        fontRid: Godot.RID,
        size: Godot.Vector2I
    ) {
    }

    open func _fontSetAscent(
        fontRid: Godot.RID,
        size: Int64,
        ascent: Double
    ) {
    }

    open func _fontGetAscent(
        fontRid: Godot.RID,
        size: Int64
    ) -> Double {
        Double()
    }

    open func _fontSetDescent(
        fontRid: Godot.RID,
        size: Int64,
        descent: Double
    ) {
    }

    open func _fontGetDescent(
        fontRid: Godot.RID,
        size: Int64
    ) -> Double {
        Double()
    }

    open func _fontSetUnderlinePosition(
        fontRid: Godot.RID,
        size: Int64,
        underlinePosition: Double
    ) {
    }

    open func _fontGetUnderlinePosition(
        fontRid: Godot.RID,
        size: Int64
    ) -> Double {
        Double()
    }

    open func _fontSetUnderlineThickness(
        fontRid: Godot.RID,
        size: Int64,
        underlineThickness: Double
    ) {
    }

    open func _fontGetUnderlineThickness(
        fontRid: Godot.RID,
        size: Int64
    ) -> Double {
        Double()
    }

    open func _fontSetScale(
        fontRid: Godot.RID,
        size: Int64,
        scale: Double
    ) {
    }

    open func _fontGetScale(
        fontRid: Godot.RID,
        size: Int64
    ) -> Double {
        Double()
    }

    open func _fontGetTextureCount(
        fontRid: Godot.RID,
        size: Godot.Vector2I
    ) -> Int64 {
        Int64()
    }

    open func _fontClearTextures(
        fontRid: Godot.RID,
        size: Godot.Vector2I
    ) {
    }

    open func _fontRemoveTexture(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        textureIndex: Int64
    ) {
    }

    open func _fontSetTextureImage(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        textureIndex: Int64,
        image: Godot.Image?
    ) {
    }

    open func _fontGetTextureImage(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        textureIndex: Int64
    ) -> Godot.Image? {
        nil
    }

    open func _fontSetTextureOffsets(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        textureIndex: Int64,
        offset: Godot.PackedInt32Array
    ) {
    }

    open func _fontGetTextureOffsets(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        textureIndex: Int64
    ) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    open func _fontGetGlyphList(
        fontRid: Godot.RID,
        size: Godot.Vector2I
    ) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    open func _fontClearGlyphs(
        fontRid: Godot.RID,
        size: Godot.Vector2I
    ) {
    }

    open func _fontRemoveGlyph(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64
    ) {
    }

    open func _fontGetGlyphAdvance(
        fontRid: Godot.RID,
        size: Int64,
        glyph: Int64
    ) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _fontSetGlyphAdvance(
        fontRid: Godot.RID,
        size: Int64,
        glyph: Int64,
        advance: Godot.Vector2
    ) {
    }

    open func _fontGetGlyphOffset(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64
    ) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _fontSetGlyphOffset(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64,
        offset: Godot.Vector2
    ) {
    }

    open func _fontGetGlyphSize(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64
    ) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _fontSetGlyphSize(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64,
        glSize: Godot.Vector2
    ) {
    }

    open func _fontGetGlyphUvRect(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64
    ) -> Godot.Rect2 {
        Godot.Rect2()
    }

    open func _fontSetGlyphUvRect(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64,
        uvRect: Godot.Rect2
    ) {
    }

    open func _fontGetGlyphTextureIdx(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64
    ) -> Int64 {
        Int64()
    }

    open func _fontSetGlyphTextureIdx(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64,
        textureIdx: Int64
    ) {
    }

    open func _fontGetGlyphTextureRid(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64
    ) -> Godot.RID {
        Godot.RID()
    }

    open func _fontGetGlyphTextureSize(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        glyph: Int64
    ) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _fontGetGlyphContours(
        fontRid: Godot.RID,
        size: Int64,
        index: Int64
    ) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _fontGetKerningList(
        fontRid: Godot.RID,
        size: Int64
    ) -> Godot.GodotArray<Godot.Vector2I> {
        Godot.GodotArray<Godot.Vector2I>()
    }

    open func _fontClearKerningMap(
        fontRid: Godot.RID,
        size: Int64
    ) {
    }

    open func _fontRemoveKerning(
        fontRid: Godot.RID,
        size: Int64,
        glyphPair: Godot.Vector2I
    ) {
    }

    open func _fontSetKerning(
        fontRid: Godot.RID,
        size: Int64,
        glyphPair: Godot.Vector2I,
        kerning: Godot.Vector2
    ) {
    }

    open func _fontGetKerning(
        fontRid: Godot.RID,
        size: Int64,
        glyphPair: Godot.Vector2I
    ) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _fontGetGlyphIndex(
        fontRid: Godot.RID,
        size: Int64,
        char: Int64,
        variationSelector: Int64
    ) -> Int64 {
        Int64()
    }

    open func _fontGetCharFromGlyphIndex(
        fontRid: Godot.RID,
        size: Int64,
        glyphIndex: Int64
    ) -> Int64 {
        Int64()
    }

    open func _fontHasChar(
        fontRid: Godot.RID,
        char: Int64
    ) -> Bool {
        Bool()
    }

    open func _fontGetSupportedChars(
        fontRid: Godot.RID
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _fontRenderRange(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        start: Int64,
        end: Int64
    ) {
    }

    open func _fontRenderGlyph(
        fontRid: Godot.RID,
        size: Godot.Vector2I,
        index: Int64
    ) {
    }

    open func _fontDrawGlyph(
        fontRid: Godot.RID,
        canvas: Godot.RID,
        size: Int64,
        pos: Godot.Vector2,
        index: Int64,
        color: Godot.Color
    ) {
    }

    open func _fontDrawGlyphOutline(
        fontRid: Godot.RID,
        canvas: Godot.RID,
        size: Int64,
        outlineSize: Int64,
        pos: Godot.Vector2,
        index: Int64,
        color: Godot.Color
    ) {
    }

    open func _fontIsLanguageSupported(
        fontRid: Godot.RID,
        language: Godot.GodotString
    ) -> Bool {
        Bool()
    }

    open func _fontSetLanguageSupportOverride(
        fontRid: Godot.RID,
        language: Godot.GodotString,
        supported: Bool
    ) {
    }

    open func _fontGetLanguageSupportOverride(
        fontRid: Godot.RID,
        language: Godot.GodotString
    ) -> Bool {
        Bool()
    }

    open func _fontRemoveLanguageSupportOverride(
        fontRid: Godot.RID,
        language: Godot.GodotString
    ) {
    }

    open func _fontGetLanguageSupportOverrides(
        fontRid: Godot.RID
    ) -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _fontIsScriptSupported(
        fontRid: Godot.RID,
        script: Godot.GodotString
    ) -> Bool {
        Bool()
    }

    open func _fontSetScriptSupportOverride(
        fontRid: Godot.RID,
        script: Godot.GodotString,
        supported: Bool
    ) {
    }

    open func _fontGetScriptSupportOverride(
        fontRid: Godot.RID,
        script: Godot.GodotString
    ) -> Bool {
        Bool()
    }

    open func _fontRemoveScriptSupportOverride(
        fontRid: Godot.RID,
        script: Godot.GodotString
    ) {
    }

    open func _fontGetScriptSupportOverrides(
        fontRid: Godot.RID
    ) -> Godot.PackedStringArray {
        Godot.PackedStringArray()
    }

    open func _fontSetOpentypeFeatureOverrides(
        fontRid: Godot.RID,
        overrides: Godot.AnyGodotDictionary
    ) {
    }

    open func _fontGetOpentypeFeatureOverrides(
        fontRid: Godot.RID
    ) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _fontSupportedFeatureList(
        fontRid: Godot.RID
    ) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _fontSupportedVariationList(
        fontRid: Godot.RID
    ) -> Godot.AnyGodotDictionary {
        Godot.AnyGodotDictionary()
    }

    open func _fontGetGlobalOversampling() -> Double {
        Double()
    }

    open func _fontSetGlobalOversampling(
        _ oversampling: Double
    ) {
    }

    open func _getHexCodeBoxSize(
        _ size: Int64,
        index: Int64
    ) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _drawHexCodeBox(
        canvas: Godot.RID,
        size: Int64,
        pos: Godot.Vector2,
        index: Int64,
        color: Godot.Color
    ) {
    }

    open func _createShapedText(
        direction: Godot.TextServer.Direction,
        orientation: Godot.TextServer.Orientation
    ) -> Godot.RID {
        Godot.RID()
    }

    open func _shapedTextClear(
        shaped: Godot.RID
    ) {
    }

    open func _shapedTextSetDirection(
        shaped: Godot.RID,
        direction: Godot.TextServer.Direction
    ) {
    }

    open func _shapedTextGetDirection(
        shaped: Godot.RID
    ) -> Godot.TextServer.Direction {
        Godot.TextServer.Direction(rawValue: 0)!
    }

    open func _shapedTextGetInferredDirection(
        shaped: Godot.RID
    ) -> Godot.TextServer.Direction {
        Godot.TextServer.Direction(rawValue: 0)!
    }

    open func _shapedTextSetBidiOverride(
        shaped: Godot.RID,
        override: Godot.AnyGodotArray
    ) {
    }

    open func _shapedTextSetCustomPunctuation(
        shaped: Godot.RID,
        punct: Godot.GodotString
    ) {
    }

    open func _shapedTextGetCustomPunctuation(
        shaped: Godot.RID
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _shapedTextSetOrientation(
        shaped: Godot.RID,
        orientation: Godot.TextServer.Orientation
    ) {
    }

    open func _shapedTextGetOrientation(
        shaped: Godot.RID
    ) -> Godot.TextServer.Orientation {
        Godot.TextServer.Orientation(rawValue: 0)!
    }

    open func _shapedTextSetPreserveInvalid(
        shaped: Godot.RID,
        enabled: Bool
    ) {
    }

    open func _shapedTextGetPreserveInvalid(
        shaped: Godot.RID
    ) -> Bool {
        Bool()
    }

    open func _shapedTextSetPreserveControl(
        shaped: Godot.RID,
        enabled: Bool
    ) {
    }

    open func _shapedTextGetPreserveControl(
        shaped: Godot.RID
    ) -> Bool {
        Bool()
    }

    open func _shapedTextSetSpacing(
        shaped: Godot.RID,
        spacing: Godot.TextServer.SpacingType,
        value: Int64
    ) {
    }

    open func _shapedTextGetSpacing(
        shaped: Godot.RID,
        spacing: Godot.TextServer.SpacingType
    ) -> Int64 {
        Int64()
    }

    open func _shapedTextAddString(
        shaped: Godot.RID,
        text: Godot.GodotString,
        fonts: Godot.GodotArray<Godot.RID>,
        size: Int64,
        opentypeFeatures: Godot.AnyGodotDictionary,
        language: Godot.GodotString,
        meta: Godot.Variant
    ) -> Bool {
        Bool()
    }

    open func _shapedTextAddObject(
        shaped: Godot.RID,
        key: Godot.Variant,
        size: Godot.Vector2,
        inlineAlign: Godot.InlineAlignment,
        length: Int64,
        baseline: Double
    ) -> Bool {
        Bool()
    }

    open func _shapedTextResizeObject(
        shaped: Godot.RID,
        key: Godot.Variant,
        size: Godot.Vector2,
        inlineAlign: Godot.InlineAlignment,
        baseline: Double
    ) -> Bool {
        Bool()
    }

    open func _shapedGetSpanCount(
        shaped: Godot.RID
    ) -> Int64 {
        Int64()
    }

    open func _shapedGetSpanMeta(
        shaped: Godot.RID,
        index: Int64
    ) -> Godot.Variant {
        Variant()
    }

    open func _shapedSetSpanUpdateFont(
        shaped: Godot.RID,
        index: Int64,
        fonts: Godot.GodotArray<Godot.RID>,
        size: Int64,
        opentypeFeatures: Godot.AnyGodotDictionary
    ) {
    }

    open func _shapedTextSubstr(
        shaped: Godot.RID,
        start: Int64,
        length: Int64
    ) -> Godot.RID {
        Godot.RID()
    }

    open func _shapedTextGetParent(
        shaped: Godot.RID
    ) -> Godot.RID {
        Godot.RID()
    }

    open func _shapedTextFitToWidth(
        shaped: Godot.RID,
        width: Double,
        justificationFlags: Godot.TextServer.JustificationFlag
    ) -> Double {
        Double()
    }

    open func _shapedTextTabAlign(
        shaped: Godot.RID,
        tabStops: Godot.PackedFloat32Array
    ) -> Double {
        Double()
    }

    open func _shapedTextShape(
        shaped: Godot.RID
    ) -> Bool {
        Bool()
    }

    open func _shapedTextUpdateBreaks(
        shaped: Godot.RID
    ) -> Bool {
        Bool()
    }

    open func _shapedTextUpdateJustificationOps(
        shaped: Godot.RID
    ) -> Bool {
        Bool()
    }

    open func _shapedTextIsReady(
        shaped: Godot.RID
    ) -> Bool {
        Bool()
    }

    open func _shapedTextGetGlyphs(
        shaped: Godot.RID
    ) -> UnsafePointer<Glyph> {
        fatalError("No default value provided for pointers.")
    }

    open func _shapedTextSortLogical(
        shaped: Godot.RID
    ) -> UnsafePointer<Glyph> {
        fatalError("No default value provided for pointers.")
    }

    open func _shapedTextGetGlyphCount(
        shaped: Godot.RID
    ) -> Int64 {
        Int64()
    }

    open func _shapedTextGetRange(
        shaped: Godot.RID
    ) -> Godot.Vector2I {
        Godot.Vector2I()
    }

    open func _shapedTextGetLineBreaksAdv(
        shaped: Godot.RID,
        width: Godot.PackedFloat32Array,
        start: Int64,
        once: Bool,
        breakFlags: Godot.TextServer.LineBreakFlag
    ) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    open func _shapedTextGetLineBreaks(
        shaped: Godot.RID,
        width: Double,
        start: Int64,
        breakFlags: Godot.TextServer.LineBreakFlag
    ) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    open func _shapedTextGetWordBreaks(
        shaped: Godot.RID,
        graphemeFlags: Godot.TextServer.GraphemeFlag
    ) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    open func _shapedTextGetTrimPos(
        shaped: Godot.RID
    ) -> Int64 {
        Int64()
    }

    open func _shapedTextGetEllipsisPos(
        shaped: Godot.RID
    ) -> Int64 {
        Int64()
    }

    open func _shapedTextGetEllipsisGlyphCount(
        shaped: Godot.RID
    ) -> Int64 {
        Int64()
    }

    open func _shapedTextGetEllipsisGlyphs(
        shaped: Godot.RID
    ) -> UnsafePointer<Glyph> {
        fatalError("No default value provided for pointers.")
    }

    open func _shapedTextOverrunTrimToWidth(
        shaped: Godot.RID,
        width: Double,
        trimFlags: Godot.TextServer.TextOverrunFlag
    ) {
    }

    open func _shapedTextGetObjects(
        shaped: Godot.RID
    ) -> Godot.AnyGodotArray {
        Godot.AnyGodotArray()
    }

    open func _shapedTextGetObjectRect(
        shaped: Godot.RID,
        key: Godot.Variant
    ) -> Godot.Rect2 {
        Godot.Rect2()
    }

    open func _shapedTextGetSize(
        shaped: Godot.RID
    ) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _shapedTextGetAscent(
        shaped: Godot.RID
    ) -> Double {
        Double()
    }

    open func _shapedTextGetDescent(
        shaped: Godot.RID
    ) -> Double {
        Double()
    }

    open func _shapedTextGetWidth(
        shaped: Godot.RID
    ) -> Double {
        Double()
    }

    open func _shapedTextGetUnderlinePosition(
        shaped: Godot.RID
    ) -> Double {
        Double()
    }

    open func _shapedTextGetUnderlineThickness(
        shaped: Godot.RID
    ) -> Double {
        Double()
    }

    open func _shapedTextGetDominantDirectionInRange(
        shaped: Godot.RID,
        start: Int64,
        end: Int64
    ) -> Int64 {
        Int64()
    }

    open func _shapedTextGetCarets(
        shaped: Godot.RID,
        position: Int64,
        caret: UnsafeMutablePointer<CaretInfo>
    ) {
    }

    open func _shapedTextGetSelection(
        shaped: Godot.RID,
        start: Int64,
        end: Int64
    ) -> Godot.PackedVector2Array {
        Godot.PackedVector2Array()
    }

    open func _shapedTextHitTestGrapheme(
        shaped: Godot.RID,
        coord: Double
    ) -> Int64 {
        Int64()
    }

    open func _shapedTextHitTestPosition(
        shaped: Godot.RID,
        coord: Double
    ) -> Int64 {
        Int64()
    }

    open func _shapedTextDraw(
        shaped: Godot.RID,
        canvas: Godot.RID,
        pos: Godot.Vector2,
        clipL: Double,
        clipR: Double,
        color: Godot.Color
    ) {
    }

    open func _shapedTextDrawOutline(
        shaped: Godot.RID,
        canvas: Godot.RID,
        pos: Godot.Vector2,
        clipL: Double,
        clipR: Double,
        outlineSize: Int64,
        color: Godot.Color
    ) {
    }

    open func _shapedTextGetGraphemeBounds(
        shaped: Godot.RID,
        pos: Int64
    ) -> Godot.Vector2 {
        Godot.Vector2()
    }

    open func _shapedTextNextGraphemePos(
        shaped: Godot.RID,
        pos: Int64
    ) -> Int64 {
        Int64()
    }

    open func _shapedTextPrevGraphemePos(
        shaped: Godot.RID,
        pos: Int64
    ) -> Int64 {
        Int64()
    }

    open func _shapedTextGetCharacterBreaks(
        shaped: Godot.RID
    ) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    open func _shapedTextNextCharacterPos(
        shaped: Godot.RID,
        pos: Int64
    ) -> Int64 {
        Int64()
    }

    open func _shapedTextPrevCharacterPos(
        shaped: Godot.RID,
        pos: Int64
    ) -> Int64 {
        Int64()
    }

    open func _shapedTextClosestCharacterPos(
        shaped: Godot.RID,
        pos: Int64
    ) -> Int64 {
        Int64()
    }

    open func _formatNumber(
        string: Godot.GodotString,
        language: Godot.GodotString
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _parseNumber(
        string: Godot.GodotString,
        language: Godot.GodotString
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _percentSign(
        language: Godot.GodotString
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _stripDiacritics(
        string: Godot.GodotString
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _isValidIdentifier(
        string: Godot.GodotString
    ) -> Bool {
        Bool()
    }

    open func _stringGetWordBreaks(
        string: Godot.GodotString,
        language: Godot.GodotString,
        charsPerLine: Int64
    ) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    open func _stringGetCharacterBreaks(
        string: Godot.GodotString,
        language: Godot.GodotString
    ) -> Godot.PackedInt32Array {
        Godot.PackedInt32Array()
    }

    open func _isConfusable(
        string: Godot.GodotString,
        dict: Godot.PackedStringArray
    ) -> Int64 {
        Int64()
    }

    open func _spoofCheck(
        string: Godot.GodotString
    ) -> Bool {
        Bool()
    }

    open func _stringToUpper(
        string: Godot.GodotString,
        language: Godot.GodotString
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _stringToLower(
        string: Godot.GodotString,
        language: Godot.GodotString
    ) -> Godot.GodotString {
        Godot.GodotString()
    }

    open func _parseStructuredText(
        parserType: Godot.TextServer.StructuredTextParser,
        args: Godot.AnyGodotArray,
        text: Godot.GodotString
    ) -> Godot.GodotArray<Godot.Vector3I> {
        Godot.GodotArray<Godot.Vector3I>()
    }

    open func _cleanup() {
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil

    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _has_feature_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._hasFeature(
            Godot.TextServer.Feature.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getName()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_features_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getFeatures()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _free_rid_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._freeRid(
            Godot.RID.fromGodotUnsafePointer(args[0]!)
        )}
        let _has_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._has(
            rid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _load_support_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._loadSupportData(
            filename: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_support_data_filename_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getSupportDataFilename()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_support_data_info_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getSupportDataInfo()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _save_support_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._saveSupportData(
            filename: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_locale_right_to_left_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isLocaleRightToLeft(
            locale: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _name_to_tag_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._nameToTag(
            name: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _tag_to_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._tagToName(
            tag: Int64.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _create_font_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._createFont()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _create_font_linked_variation_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._createFontLinkedVariation(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_data_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetData(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            data: Godot.PackedByteArray.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_set_data_ptr_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetDataPtr(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            dataPtr: UnsafePointer<UInt8>.fromGodotUnsafePointer(args[1]!),
            dataSize: Int64.fromGodotUnsafePointer(args[2]!)
        )}
        let _font_set_face_index_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetFaceIndex(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            faceIndex: Int64.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_face_index_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetFaceIndex(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_get_face_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetFaceCount(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_style_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetStyle(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            style: Godot.TextServer.FontStyle.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_style_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetStyle(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetName(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            name: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetName(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_get_ot_name_strings_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetOtNameStrings(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_style_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetStyleName(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            nameStyle: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_style_name_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetStyleName(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_weight_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetWeight(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            weight: Int64.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_weight_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetWeight(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_stretch_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetStretch(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            stretch: Int64.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_stretch_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetStretch(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_antialiasing_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetAntialiasing(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            antialiasing: Godot.TextServer.FontAntialiasing.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_antialiasing_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetAntialiasing(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_generate_mipmaps_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetGenerateMipmaps(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            generateMipmaps: Bool.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_generate_mipmaps_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetGenerateMipmaps(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_multichannel_signed_distance_field_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetMultichannelSignedDistanceField(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            msdf: Bool.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_is_multichannel_signed_distance_field_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontIsMultichannelSignedDistanceField(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_msdf_pixel_range_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetMsdfPixelRange(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            msdfPixelRange: Int64.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_msdf_pixel_range_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetMsdfPixelRange(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_msdf_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetMsdfSize(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            msdfSize: Int64.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_msdf_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetMsdfSize(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_fixed_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetFixedSize(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            fixedSize: Int64.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_fixed_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetFixedSize(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_fixed_size_scale_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetFixedSizeScaleMode(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            fixedSizeScaleMode: Godot.TextServer.FixedSizeScaleMode.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_fixed_size_scale_mode_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetFixedSizeScaleMode(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_allow_system_fallback_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetAllowSystemFallback(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            allowSystemFallback: Bool.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_is_allow_system_fallback_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontIsAllowSystemFallback(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_force_autohinter_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetForceAutohinter(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            forceAutohinter: Bool.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_is_force_autohinter_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontIsForceAutohinter(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_hinting_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetHinting(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            hinting: Godot.TextServer.Hinting.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_hinting_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetHinting(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_subpixel_positioning_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetSubpixelPositioning(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            subpixelPositioning: Godot.TextServer.SubpixelPositioning.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_subpixel_positioning_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetSubpixelPositioning(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_embolden_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetEmbolden(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            strength: Double.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_embolden_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetEmbolden(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_spacing_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetSpacing(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            spacing: Godot.TextServer.SpacingType.fromGodotUnsafePointer(args[1]!),
            value: Int64.fromGodotUnsafePointer(args[2]!)
        )}
        let _font_get_spacing_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetSpacing(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            spacing: Godot.TextServer.SpacingType.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetTransform(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            transform: Godot.Transform2D.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_transform_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetTransform(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_variation_coordinates_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetVariationCoordinates(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            variationCoordinates: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_variation_coordinates_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetVariationCoordinates(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_oversampling_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetOversampling(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            oversampling: Double.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_oversampling_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetOversampling(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_get_size_cache_list_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetSizeCacheList(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_clear_size_cache_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontClearSizeCache(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )}
        let _font_remove_size_cache_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontRemoveSizeCache(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_set_ascent_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetAscent(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!),
            ascent: Double.fromGodotUnsafePointer(args[2]!)
        )}
        let _font_get_ascent_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetAscent(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_descent_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetDescent(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!),
            descent: Double.fromGodotUnsafePointer(args[2]!)
        )}
        let _font_get_descent_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetDescent(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_underline_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetUnderlinePosition(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!),
            underlinePosition: Double.fromGodotUnsafePointer(args[2]!)
        )}
        let _font_get_underline_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetUnderlinePosition(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_underline_thickness_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetUnderlineThickness(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!),
            underlineThickness: Double.fromGodotUnsafePointer(args[2]!)
        )}
        let _font_get_underline_thickness_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetUnderlineThickness(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_scale_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetScale(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!),
            scale: Double.fromGodotUnsafePointer(args[2]!)
        )}
        let _font_get_scale_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetScale(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_get_texture_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetTextureCount(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_clear_textures_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontClearTextures(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_remove_texture_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontRemoveTexture(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            textureIndex: Int64.fromGodotUnsafePointer(args[2]!)
        )}
        let _font_set_texture_image_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetTextureImage(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            textureIndex: Int64.fromGodotUnsafePointer(args[2]!),
            image: Godot.Image?.fromGodotUnsafePointer(args[3]!)
        )}
        let _font_get_texture_image_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetTextureImage(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            textureIndex: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_texture_offsets_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetTextureOffsets(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            textureIndex: Int64.fromGodotUnsafePointer(args[2]!),
            offset: Godot.PackedInt32Array.fromGodotUnsafePointer(args[3]!)
        )}
        let _font_get_texture_offsets_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetTextureOffsets(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            textureIndex: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_get_glyph_list_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetGlyphList(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_clear_glyphs_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontClearGlyphs(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_remove_glyph_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontRemoveGlyph(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            glyph: Int64.fromGodotUnsafePointer(args[2]!)
        )}
        let _font_get_glyph_advance_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetGlyphAdvance(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!),
            glyph: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_glyph_advance_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetGlyphAdvance(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!),
            glyph: Int64.fromGodotUnsafePointer(args[2]!),
            advance: Godot.Vector2.fromGodotUnsafePointer(args[3]!)
        )}
        let _font_get_glyph_offset_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetGlyphOffset(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            glyph: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_glyph_offset_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetGlyphOffset(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            glyph: Int64.fromGodotUnsafePointer(args[2]!),
            offset: Godot.Vector2.fromGodotUnsafePointer(args[3]!)
        )}
        let _font_get_glyph_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetGlyphSize(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            glyph: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_glyph_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetGlyphSize(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            glyph: Int64.fromGodotUnsafePointer(args[2]!),
            glSize: Godot.Vector2.fromGodotUnsafePointer(args[3]!)
        )}
        let _font_get_glyph_uv_rect_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetGlyphUvRect(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            glyph: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_glyph_uv_rect_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetGlyphUvRect(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            glyph: Int64.fromGodotUnsafePointer(args[2]!),
            uvRect: Godot.Rect2.fromGodotUnsafePointer(args[3]!)
        )}
        let _font_get_glyph_texture_idx_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetGlyphTextureIdx(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            glyph: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_glyph_texture_idx_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetGlyphTextureIdx(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            glyph: Int64.fromGodotUnsafePointer(args[2]!),
            textureIdx: Int64.fromGodotUnsafePointer(args[3]!)
        )}
        let _font_get_glyph_texture_rid_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetGlyphTextureRid(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            glyph: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_get_glyph_texture_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetGlyphTextureSize(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            glyph: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_get_glyph_contours_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetGlyphContours(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!),
            index: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_get_kerning_list_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetKerningList(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_clear_kerning_map_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontClearKerningMap(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_remove_kerning_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontRemoveKerning(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!),
            glyphPair: Godot.Vector2I.fromGodotUnsafePointer(args[2]!)
        )}
        let _font_set_kerning_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetKerning(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!),
            glyphPair: Godot.Vector2I.fromGodotUnsafePointer(args[2]!),
            kerning: Godot.Vector2.fromGodotUnsafePointer(args[3]!)
        )}
        let _font_get_kerning_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetKerning(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!),
            glyphPair: Godot.Vector2I.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_get_glyph_index_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetGlyphIndex(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!),
            char: Int64.fromGodotUnsafePointer(args[2]!),
            variationSelector: Int64.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_get_char_from_glyph_index_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetCharFromGlyphIndex(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!),
            glyphIndex: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_has_char_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontHasChar(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            char: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_get_supported_chars_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetSupportedChars(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_render_range_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontRenderRange(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            start: Int64.fromGodotUnsafePointer(args[2]!),
            end: Int64.fromGodotUnsafePointer(args[3]!)
        )}
        let _font_render_glyph_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontRenderGlyph(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Godot.Vector2I.fromGodotUnsafePointer(args[1]!),
            index: Int64.fromGodotUnsafePointer(args[2]!)
        )}
        let _font_draw_glyph_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontDrawGlyph(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            canvas: Godot.RID.fromGodotUnsafePointer(args[1]!),
            size: Int64.fromGodotUnsafePointer(args[2]!),
            pos: Godot.Vector2.fromGodotUnsafePointer(args[3]!),
            index: Int64.fromGodotUnsafePointer(args[4]!),
            color: Godot.Color.fromGodotUnsafePointer(args[5]!)
        )}
        let _font_draw_glyph_outline_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontDrawGlyphOutline(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            canvas: Godot.RID.fromGodotUnsafePointer(args[1]!),
            size: Int64.fromGodotUnsafePointer(args[2]!),
            outlineSize: Int64.fromGodotUnsafePointer(args[3]!),
            pos: Godot.Vector2.fromGodotUnsafePointer(args[4]!),
            index: Int64.fromGodotUnsafePointer(args[5]!),
            color: Godot.Color.fromGodotUnsafePointer(args[6]!)
        )}
        let _font_is_language_supported_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontIsLanguageSupported(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            language: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_language_support_override_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetLanguageSupportOverride(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            language: Godot.GodotString.fromGodotUnsafePointer(args[1]!),
            supported: Bool.fromGodotUnsafePointer(args[2]!)
        )}
        let _font_get_language_support_override_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetLanguageSupportOverride(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            language: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_remove_language_support_override_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontRemoveLanguageSupportOverride(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            language: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_language_support_overrides_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetLanguageSupportOverrides(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_is_script_supported_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontIsScriptSupported(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            script: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_script_support_override_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetScriptSupportOverride(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            script: Godot.GodotString.fromGodotUnsafePointer(args[1]!),
            supported: Bool.fromGodotUnsafePointer(args[2]!)
        )}
        let _font_get_script_support_override_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetScriptSupportOverride(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            script: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_remove_script_support_override_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontRemoveScriptSupportOverride(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            script: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_script_support_overrides_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetScriptSupportOverrides(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_opentype_feature_overrides_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetOpentypeFeatureOverrides(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!),
            overrides: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[1]!)
        )}
        let _font_get_opentype_feature_overrides_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetOpentypeFeatureOverrides(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_supported_feature_list_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSupportedFeatureList(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_supported_variation_list_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSupportedVariationList(
            fontRid: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_get_global_oversampling_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontGetGlobalOversampling()
        .copyToGodot(unsafePointer: returnPtr!)}
        let _font_set_global_oversampling_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._fontSetGlobalOversampling(
            Double.fromGodotUnsafePointer(args[0]!)
        )}
        let _get_hex_code_box_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getHexCodeBoxSize(
            Int64.fromGodotUnsafePointer(args[0]!),
            index: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _draw_hex_code_box_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._drawHexCodeBox(
            canvas: Godot.RID.fromGodotUnsafePointer(args[0]!),
            size: Int64.fromGodotUnsafePointer(args[1]!),
            pos: Godot.Vector2.fromGodotUnsafePointer(args[2]!),
            index: Int64.fromGodotUnsafePointer(args[3]!),
            color: Godot.Color.fromGodotUnsafePointer(args[4]!)
        )}
        let _create_shaped_text_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._createShapedText(
            direction: Godot.TextServer.Direction.fromGodotUnsafePointer(args[0]!),
            orientation: Godot.TextServer.Orientation.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_clear_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextClear(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )}
        let _shaped_text_set_direction_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextSetDirection(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            direction: Godot.TextServer.Direction.fromGodotUnsafePointer(args[1]!)
        )}
        let _shaped_text_get_direction_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetDirection(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_inferred_direction_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetInferredDirection(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_set_bidi_override_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextSetBidiOverride(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            override: Godot.AnyGodotArray.fromGodotUnsafePointer(args[1]!)
        )}
        let _shaped_text_set_custom_punctuation_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextSetCustomPunctuation(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            punct: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )}
        let _shaped_text_get_custom_punctuation_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetCustomPunctuation(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_set_orientation_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextSetOrientation(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            orientation: Godot.TextServer.Orientation.fromGodotUnsafePointer(args[1]!)
        )}
        let _shaped_text_get_orientation_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetOrientation(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_set_preserve_invalid_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextSetPreserveInvalid(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            enabled: Bool.fromGodotUnsafePointer(args[1]!)
        )}
        let _shaped_text_get_preserve_invalid_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetPreserveInvalid(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_set_preserve_control_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextSetPreserveControl(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            enabled: Bool.fromGodotUnsafePointer(args[1]!)
        )}
        let _shaped_text_get_preserve_control_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetPreserveControl(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_set_spacing_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextSetSpacing(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            spacing: Godot.TextServer.SpacingType.fromGodotUnsafePointer(args[1]!),
            value: Int64.fromGodotUnsafePointer(args[2]!)
        )}
        let _shaped_text_get_spacing_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetSpacing(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            spacing: Godot.TextServer.SpacingType.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_add_string_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextAddString(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            text: Godot.GodotString.fromGodotUnsafePointer(args[1]!),
            fonts: Godot.GodotArray<Godot.RID>.fromGodotUnsafePointer(args[2]!),
            size: Int64.fromGodotUnsafePointer(args[3]!),
            opentypeFeatures: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[4]!),
            language: Godot.GodotString.fromGodotUnsafePointer(args[5]!),
            meta: Godot.Variant.fromGodotUnsafePointer(args[6]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_add_object_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextAddObject(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            key: Godot.Variant.fromGodotUnsafePointer(args[1]!),
            size: Godot.Vector2.fromGodotUnsafePointer(args[2]!),
            inlineAlign: Godot.InlineAlignment.fromGodotUnsafePointer(args[3]!),
            length: Int64.fromGodotUnsafePointer(args[4]!),
            baseline: Double.fromGodotUnsafePointer(args[5]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_resize_object_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextResizeObject(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            key: Godot.Variant.fromGodotUnsafePointer(args[1]!),
            size: Godot.Vector2.fromGodotUnsafePointer(args[2]!),
            inlineAlign: Godot.InlineAlignment.fromGodotUnsafePointer(args[3]!),
            baseline: Double.fromGodotUnsafePointer(args[4]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_get_span_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedGetSpanCount(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_get_span_meta_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedGetSpanMeta(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            index: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_set_span_update_font_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedSetSpanUpdateFont(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            index: Int64.fromGodotUnsafePointer(args[1]!),
            fonts: Godot.GodotArray<Godot.RID>.fromGodotUnsafePointer(args[2]!),
            size: Int64.fromGodotUnsafePointer(args[3]!),
            opentypeFeatures: Godot.AnyGodotDictionary.fromGodotUnsafePointer(args[4]!)
        )}
        let _shaped_text_substr_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextSubstr(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            start: Int64.fromGodotUnsafePointer(args[1]!),
            length: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_parent_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetParent(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_fit_to_width_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextFitToWidth(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            width: Double.fromGodotUnsafePointer(args[1]!),
            justificationFlags: Godot.TextServer.JustificationFlag.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_tab_align_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextTabAlign(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            tabStops: Godot.PackedFloat32Array.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_shape_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextShape(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_update_breaks_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextUpdateBreaks(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_update_justification_ops_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextUpdateJustificationOps(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_is_ready_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextIsReady(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_glyphs_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetGlyphs(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_sort_logical_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextSortLogical(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_glyph_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetGlyphCount(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_range_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetRange(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_line_breaks_adv_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetLineBreaksAdv(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            width: Godot.PackedFloat32Array.fromGodotUnsafePointer(args[1]!),
            start: Int64.fromGodotUnsafePointer(args[2]!),
            once: Bool.fromGodotUnsafePointer(args[3]!),
            breakFlags: Godot.TextServer.LineBreakFlag.fromGodotUnsafePointer(args[4]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_line_breaks_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetLineBreaks(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            width: Double.fromGodotUnsafePointer(args[1]!),
            start: Int64.fromGodotUnsafePointer(args[2]!),
            breakFlags: Godot.TextServer.LineBreakFlag.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_word_breaks_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetWordBreaks(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            graphemeFlags: Godot.TextServer.GraphemeFlag.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_trim_pos_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetTrimPos(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_ellipsis_pos_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetEllipsisPos(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_ellipsis_glyph_count_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetEllipsisGlyphCount(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_ellipsis_glyphs_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetEllipsisGlyphs(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_overrun_trim_to_width_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextOverrunTrimToWidth(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            width: Double.fromGodotUnsafePointer(args[1]!),
            trimFlags: Godot.TextServer.TextOverrunFlag.fromGodotUnsafePointer(args[2]!)
        )}
        let _shaped_text_get_objects_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetObjects(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_object_rect_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetObjectRect(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            key: Godot.Variant.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_size_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetSize(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_ascent_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetAscent(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_descent_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetDescent(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_width_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetWidth(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_underline_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetUnderlinePosition(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_underline_thickness_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetUnderlineThickness(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_dominant_direction_in_range_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetDominantDirectionInRange(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            start: Int64.fromGodotUnsafePointer(args[1]!),
            end: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_carets_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetCarets(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            position: Int64.fromGodotUnsafePointer(args[1]!),
            caret: UnsafeMutablePointer<CaretInfo>.fromGodotUnsafePointer(args[2]!)
        )}
        let _shaped_text_get_selection_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetSelection(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            start: Int64.fromGodotUnsafePointer(args[1]!),
            end: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_hit_test_grapheme_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextHitTestGrapheme(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            coord: Double.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_hit_test_position_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextHitTestPosition(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            coord: Double.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_draw_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextDraw(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            canvas: Godot.RID.fromGodotUnsafePointer(args[1]!),
            pos: Godot.Vector2.fromGodotUnsafePointer(args[2]!),
            clipL: Double.fromGodotUnsafePointer(args[3]!),
            clipR: Double.fromGodotUnsafePointer(args[4]!),
            color: Godot.Color.fromGodotUnsafePointer(args[5]!)
        )}
        let _shaped_text_draw_outline_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextDrawOutline(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            canvas: Godot.RID.fromGodotUnsafePointer(args[1]!),
            pos: Godot.Vector2.fromGodotUnsafePointer(args[2]!),
            clipL: Double.fromGodotUnsafePointer(args[3]!),
            clipR: Double.fromGodotUnsafePointer(args[4]!),
            outlineSize: Int64.fromGodotUnsafePointer(args[5]!),
            color: Godot.Color.fromGodotUnsafePointer(args[6]!)
        )}
        let _shaped_text_get_grapheme_bounds_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetGraphemeBounds(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            pos: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_next_grapheme_pos_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextNextGraphemePos(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            pos: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_prev_grapheme_pos_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextPrevGraphemePos(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            pos: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_get_character_breaks_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextGetCharacterBreaks(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_next_character_pos_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextNextCharacterPos(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            pos: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_prev_character_pos_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextPrevCharacterPos(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            pos: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _shaped_text_closest_character_pos_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._shapedTextClosestCharacterPos(
            shaped: Godot.RID.fromGodotUnsafePointer(args[0]!),
            pos: Int64.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _format_number_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._formatNumber(
            string: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            language: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _parse_number_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._parseNumber(
            string: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            language: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _percent_sign_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._percentSign(
            language: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _strip_diacritics_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._stripDiacritics(
            string: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_valid_identifier_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isValidIdentifier(
            string: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _string_get_word_breaks_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._stringGetWordBreaks(
            string: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            language: Godot.GodotString.fromGodotUnsafePointer(args[1]!),
            charsPerLine: Int64.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _string_get_character_breaks_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._stringGetCharacterBreaks(
            string: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            language: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_confusable_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isConfusable(
            string: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            dict: Godot.PackedStringArray.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _spoof_check_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._spoofCheck(
            string: Godot.GodotString.fromGodotUnsafePointer(args[0]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _string_to_upper_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._stringToUpper(
            string: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            language: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _string_to_lower_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._stringToLower(
            string: Godot.GodotString.fromGodotUnsafePointer(args[0]!),
            language: Godot.GodotString.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _parse_structured_text_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._parseStructuredText(
            parserType: Godot.TextServer.StructuredTextParser.fromGodotUnsafePointer(args[0]!),
            args: Godot.AnyGodotArray.fromGodotUnsafePointer(args[1]!),
            text: Godot.GodotString.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _cleanup_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr else {
                return
            }
            Unmanaged<TextServerExtension>.fromOpaque(instancePtr).takeUnretainedValue()
        ._cleanup()}
        _virtualFunctions = [
            "_hasFeature" : ("_has_feature", _has_feature_call),
            "_getName" : ("_get_name", _get_name_call),
            "_getFeatures" : ("_get_features", _get_features_call),
            "_freeRid" : ("_free_rid", _free_rid_call),
            "_has" : ("_has", _has_call),
            "_loadSupportData" : ("_load_support_data", _load_support_data_call),
            "_getSupportDataFilename" : ("_get_support_data_filename", _get_support_data_filename_call),
            "_getSupportDataInfo" : ("_get_support_data_info", _get_support_data_info_call),
            "_saveSupportData" : ("_save_support_data", _save_support_data_call),
            "_isLocaleRightToLeft" : ("_is_locale_right_to_left", _is_locale_right_to_left_call),
            "_nameToTag" : ("_name_to_tag", _name_to_tag_call),
            "_tagToName" : ("_tag_to_name", _tag_to_name_call),
            "_createFont" : ("_create_font", _create_font_call),
            "_createFontLinkedVariation" : ("_create_font_linked_variation", _create_font_linked_variation_call),
            "_fontSetData" : ("_font_set_data", _font_set_data_call),
            "_fontSetDataPtr" : ("_font_set_data_ptr", _font_set_data_ptr_call),
            "_fontSetFaceIndex" : ("_font_set_face_index", _font_set_face_index_call),
            "_fontGetFaceIndex" : ("_font_get_face_index", _font_get_face_index_call),
            "_fontGetFaceCount" : ("_font_get_face_count", _font_get_face_count_call),
            "_fontSetStyle" : ("_font_set_style", _font_set_style_call),
            "_fontGetStyle" : ("_font_get_style", _font_get_style_call),
            "_fontSetName" : ("_font_set_name", _font_set_name_call),
            "_fontGetName" : ("_font_get_name", _font_get_name_call),
            "_fontGetOtNameStrings" : ("_font_get_ot_name_strings", _font_get_ot_name_strings_call),
            "_fontSetStyleName" : ("_font_set_style_name", _font_set_style_name_call),
            "_fontGetStyleName" : ("_font_get_style_name", _font_get_style_name_call),
            "_fontSetWeight" : ("_font_set_weight", _font_set_weight_call),
            "_fontGetWeight" : ("_font_get_weight", _font_get_weight_call),
            "_fontSetStretch" : ("_font_set_stretch", _font_set_stretch_call),
            "_fontGetStretch" : ("_font_get_stretch", _font_get_stretch_call),
            "_fontSetAntialiasing" : ("_font_set_antialiasing", _font_set_antialiasing_call),
            "_fontGetAntialiasing" : ("_font_get_antialiasing", _font_get_antialiasing_call),
            "_fontSetGenerateMipmaps" : ("_font_set_generate_mipmaps", _font_set_generate_mipmaps_call),
            "_fontGetGenerateMipmaps" : ("_font_get_generate_mipmaps", _font_get_generate_mipmaps_call),
            "_fontSetMultichannelSignedDistanceField" : ("_font_set_multichannel_signed_distance_field", _font_set_multichannel_signed_distance_field_call),
            "_fontIsMultichannelSignedDistanceField" : ("_font_is_multichannel_signed_distance_field", _font_is_multichannel_signed_distance_field_call),
            "_fontSetMsdfPixelRange" : ("_font_set_msdf_pixel_range", _font_set_msdf_pixel_range_call),
            "_fontGetMsdfPixelRange" : ("_font_get_msdf_pixel_range", _font_get_msdf_pixel_range_call),
            "_fontSetMsdfSize" : ("_font_set_msdf_size", _font_set_msdf_size_call),
            "_fontGetMsdfSize" : ("_font_get_msdf_size", _font_get_msdf_size_call),
            "_fontSetFixedSize" : ("_font_set_fixed_size", _font_set_fixed_size_call),
            "_fontGetFixedSize" : ("_font_get_fixed_size", _font_get_fixed_size_call),
            "_fontSetFixedSizeScaleMode" : ("_font_set_fixed_size_scale_mode", _font_set_fixed_size_scale_mode_call),
            "_fontGetFixedSizeScaleMode" : ("_font_get_fixed_size_scale_mode", _font_get_fixed_size_scale_mode_call),
            "_fontSetAllowSystemFallback" : ("_font_set_allow_system_fallback", _font_set_allow_system_fallback_call),
            "_fontIsAllowSystemFallback" : ("_font_is_allow_system_fallback", _font_is_allow_system_fallback_call),
            "_fontSetForceAutohinter" : ("_font_set_force_autohinter", _font_set_force_autohinter_call),
            "_fontIsForceAutohinter" : ("_font_is_force_autohinter", _font_is_force_autohinter_call),
            "_fontSetHinting" : ("_font_set_hinting", _font_set_hinting_call),
            "_fontGetHinting" : ("_font_get_hinting", _font_get_hinting_call),
            "_fontSetSubpixelPositioning" : ("_font_set_subpixel_positioning", _font_set_subpixel_positioning_call),
            "_fontGetSubpixelPositioning" : ("_font_get_subpixel_positioning", _font_get_subpixel_positioning_call),
            "_fontSetEmbolden" : ("_font_set_embolden", _font_set_embolden_call),
            "_fontGetEmbolden" : ("_font_get_embolden", _font_get_embolden_call),
            "_fontSetSpacing" : ("_font_set_spacing", _font_set_spacing_call),
            "_fontGetSpacing" : ("_font_get_spacing", _font_get_spacing_call),
            "_fontSetTransform" : ("_font_set_transform", _font_set_transform_call),
            "_fontGetTransform" : ("_font_get_transform", _font_get_transform_call),
            "_fontSetVariationCoordinates" : ("_font_set_variation_coordinates", _font_set_variation_coordinates_call),
            "_fontGetVariationCoordinates" : ("_font_get_variation_coordinates", _font_get_variation_coordinates_call),
            "_fontSetOversampling" : ("_font_set_oversampling", _font_set_oversampling_call),
            "_fontGetOversampling" : ("_font_get_oversampling", _font_get_oversampling_call),
            "_fontGetSizeCacheList" : ("_font_get_size_cache_list", _font_get_size_cache_list_call),
            "_fontClearSizeCache" : ("_font_clear_size_cache", _font_clear_size_cache_call),
            "_fontRemoveSizeCache" : ("_font_remove_size_cache", _font_remove_size_cache_call),
            "_fontSetAscent" : ("_font_set_ascent", _font_set_ascent_call),
            "_fontGetAscent" : ("_font_get_ascent", _font_get_ascent_call),
            "_fontSetDescent" : ("_font_set_descent", _font_set_descent_call),
            "_fontGetDescent" : ("_font_get_descent", _font_get_descent_call),
            "_fontSetUnderlinePosition" : ("_font_set_underline_position", _font_set_underline_position_call),
            "_fontGetUnderlinePosition" : ("_font_get_underline_position", _font_get_underline_position_call),
            "_fontSetUnderlineThickness" : ("_font_set_underline_thickness", _font_set_underline_thickness_call),
            "_fontGetUnderlineThickness" : ("_font_get_underline_thickness", _font_get_underline_thickness_call),
            "_fontSetScale" : ("_font_set_scale", _font_set_scale_call),
            "_fontGetScale" : ("_font_get_scale", _font_get_scale_call),
            "_fontGetTextureCount" : ("_font_get_texture_count", _font_get_texture_count_call),
            "_fontClearTextures" : ("_font_clear_textures", _font_clear_textures_call),
            "_fontRemoveTexture" : ("_font_remove_texture", _font_remove_texture_call),
            "_fontSetTextureImage" : ("_font_set_texture_image", _font_set_texture_image_call),
            "_fontGetTextureImage" : ("_font_get_texture_image", _font_get_texture_image_call),
            "_fontSetTextureOffsets" : ("_font_set_texture_offsets", _font_set_texture_offsets_call),
            "_fontGetTextureOffsets" : ("_font_get_texture_offsets", _font_get_texture_offsets_call),
            "_fontGetGlyphList" : ("_font_get_glyph_list", _font_get_glyph_list_call),
            "_fontClearGlyphs" : ("_font_clear_glyphs", _font_clear_glyphs_call),
            "_fontRemoveGlyph" : ("_font_remove_glyph", _font_remove_glyph_call),
            "_fontGetGlyphAdvance" : ("_font_get_glyph_advance", _font_get_glyph_advance_call),
            "_fontSetGlyphAdvance" : ("_font_set_glyph_advance", _font_set_glyph_advance_call),
            "_fontGetGlyphOffset" : ("_font_get_glyph_offset", _font_get_glyph_offset_call),
            "_fontSetGlyphOffset" : ("_font_set_glyph_offset", _font_set_glyph_offset_call),
            "_fontGetGlyphSize" : ("_font_get_glyph_size", _font_get_glyph_size_call),
            "_fontSetGlyphSize" : ("_font_set_glyph_size", _font_set_glyph_size_call),
            "_fontGetGlyphUvRect" : ("_font_get_glyph_uv_rect", _font_get_glyph_uv_rect_call),
            "_fontSetGlyphUvRect" : ("_font_set_glyph_uv_rect", _font_set_glyph_uv_rect_call),
            "_fontGetGlyphTextureIdx" : ("_font_get_glyph_texture_idx", _font_get_glyph_texture_idx_call),
            "_fontSetGlyphTextureIdx" : ("_font_set_glyph_texture_idx", _font_set_glyph_texture_idx_call),
            "_fontGetGlyphTextureRid" : ("_font_get_glyph_texture_rid", _font_get_glyph_texture_rid_call),
            "_fontGetGlyphTextureSize" : ("_font_get_glyph_texture_size", _font_get_glyph_texture_size_call),
            "_fontGetGlyphContours" : ("_font_get_glyph_contours", _font_get_glyph_contours_call),
            "_fontGetKerningList" : ("_font_get_kerning_list", _font_get_kerning_list_call),
            "_fontClearKerningMap" : ("_font_clear_kerning_map", _font_clear_kerning_map_call),
            "_fontRemoveKerning" : ("_font_remove_kerning", _font_remove_kerning_call),
            "_fontSetKerning" : ("_font_set_kerning", _font_set_kerning_call),
            "_fontGetKerning" : ("_font_get_kerning", _font_get_kerning_call),
            "_fontGetGlyphIndex" : ("_font_get_glyph_index", _font_get_glyph_index_call),
            "_fontGetCharFromGlyphIndex" : ("_font_get_char_from_glyph_index", _font_get_char_from_glyph_index_call),
            "_fontHasChar" : ("_font_has_char", _font_has_char_call),
            "_fontGetSupportedChars" : ("_font_get_supported_chars", _font_get_supported_chars_call),
            "_fontRenderRange" : ("_font_render_range", _font_render_range_call),
            "_fontRenderGlyph" : ("_font_render_glyph", _font_render_glyph_call),
            "_fontDrawGlyph" : ("_font_draw_glyph", _font_draw_glyph_call),
            "_fontDrawGlyphOutline" : ("_font_draw_glyph_outline", _font_draw_glyph_outline_call),
            "_fontIsLanguageSupported" : ("_font_is_language_supported", _font_is_language_supported_call),
            "_fontSetLanguageSupportOverride" : ("_font_set_language_support_override", _font_set_language_support_override_call),
            "_fontGetLanguageSupportOverride" : ("_font_get_language_support_override", _font_get_language_support_override_call),
            "_fontRemoveLanguageSupportOverride" : ("_font_remove_language_support_override", _font_remove_language_support_override_call),
            "_fontGetLanguageSupportOverrides" : ("_font_get_language_support_overrides", _font_get_language_support_overrides_call),
            "_fontIsScriptSupported" : ("_font_is_script_supported", _font_is_script_supported_call),
            "_fontSetScriptSupportOverride" : ("_font_set_script_support_override", _font_set_script_support_override_call),
            "_fontGetScriptSupportOverride" : ("_font_get_script_support_override", _font_get_script_support_override_call),
            "_fontRemoveScriptSupportOverride" : ("_font_remove_script_support_override", _font_remove_script_support_override_call),
            "_fontGetScriptSupportOverrides" : ("_font_get_script_support_overrides", _font_get_script_support_overrides_call),
            "_fontSetOpentypeFeatureOverrides" : ("_font_set_opentype_feature_overrides", _font_set_opentype_feature_overrides_call),
            "_fontGetOpentypeFeatureOverrides" : ("_font_get_opentype_feature_overrides", _font_get_opentype_feature_overrides_call),
            "_fontSupportedFeatureList" : ("_font_supported_feature_list", _font_supported_feature_list_call),
            "_fontSupportedVariationList" : ("_font_supported_variation_list", _font_supported_variation_list_call),
            "_fontGetGlobalOversampling" : ("_font_get_global_oversampling", _font_get_global_oversampling_call),
            "_fontSetGlobalOversampling" : ("_font_set_global_oversampling", _font_set_global_oversampling_call),
            "_getHexCodeBoxSize" : ("_get_hex_code_box_size", _get_hex_code_box_size_call),
            "_drawHexCodeBox" : ("_draw_hex_code_box", _draw_hex_code_box_call),
            "_createShapedText" : ("_create_shaped_text", _create_shaped_text_call),
            "_shapedTextClear" : ("_shaped_text_clear", _shaped_text_clear_call),
            "_shapedTextSetDirection" : ("_shaped_text_set_direction", _shaped_text_set_direction_call),
            "_shapedTextGetDirection" : ("_shaped_text_get_direction", _shaped_text_get_direction_call),
            "_shapedTextGetInferredDirection" : ("_shaped_text_get_inferred_direction", _shaped_text_get_inferred_direction_call),
            "_shapedTextSetBidiOverride" : ("_shaped_text_set_bidi_override", _shaped_text_set_bidi_override_call),
            "_shapedTextSetCustomPunctuation" : ("_shaped_text_set_custom_punctuation", _shaped_text_set_custom_punctuation_call),
            "_shapedTextGetCustomPunctuation" : ("_shaped_text_get_custom_punctuation", _shaped_text_get_custom_punctuation_call),
            "_shapedTextSetOrientation" : ("_shaped_text_set_orientation", _shaped_text_set_orientation_call),
            "_shapedTextGetOrientation" : ("_shaped_text_get_orientation", _shaped_text_get_orientation_call),
            "_shapedTextSetPreserveInvalid" : ("_shaped_text_set_preserve_invalid", _shaped_text_set_preserve_invalid_call),
            "_shapedTextGetPreserveInvalid" : ("_shaped_text_get_preserve_invalid", _shaped_text_get_preserve_invalid_call),
            "_shapedTextSetPreserveControl" : ("_shaped_text_set_preserve_control", _shaped_text_set_preserve_control_call),
            "_shapedTextGetPreserveControl" : ("_shaped_text_get_preserve_control", _shaped_text_get_preserve_control_call),
            "_shapedTextSetSpacing" : ("_shaped_text_set_spacing", _shaped_text_set_spacing_call),
            "_shapedTextGetSpacing" : ("_shaped_text_get_spacing", _shaped_text_get_spacing_call),
            "_shapedTextAddString" : ("_shaped_text_add_string", _shaped_text_add_string_call),
            "_shapedTextAddObject" : ("_shaped_text_add_object", _shaped_text_add_object_call),
            "_shapedTextResizeObject" : ("_shaped_text_resize_object", _shaped_text_resize_object_call),
            "_shapedGetSpanCount" : ("_shaped_get_span_count", _shaped_get_span_count_call),
            "_shapedGetSpanMeta" : ("_shaped_get_span_meta", _shaped_get_span_meta_call),
            "_shapedSetSpanUpdateFont" : ("_shaped_set_span_update_font", _shaped_set_span_update_font_call),
            "_shapedTextSubstr" : ("_shaped_text_substr", _shaped_text_substr_call),
            "_shapedTextGetParent" : ("_shaped_text_get_parent", _shaped_text_get_parent_call),
            "_shapedTextFitToWidth" : ("_shaped_text_fit_to_width", _shaped_text_fit_to_width_call),
            "_shapedTextTabAlign" : ("_shaped_text_tab_align", _shaped_text_tab_align_call),
            "_shapedTextShape" : ("_shaped_text_shape", _shaped_text_shape_call),
            "_shapedTextUpdateBreaks" : ("_shaped_text_update_breaks", _shaped_text_update_breaks_call),
            "_shapedTextUpdateJustificationOps" : ("_shaped_text_update_justification_ops", _shaped_text_update_justification_ops_call),
            "_shapedTextIsReady" : ("_shaped_text_is_ready", _shaped_text_is_ready_call),
            "_shapedTextGetGlyphs" : ("_shaped_text_get_glyphs", _shaped_text_get_glyphs_call),
            "_shapedTextSortLogical" : ("_shaped_text_sort_logical", _shaped_text_sort_logical_call),
            "_shapedTextGetGlyphCount" : ("_shaped_text_get_glyph_count", _shaped_text_get_glyph_count_call),
            "_shapedTextGetRange" : ("_shaped_text_get_range", _shaped_text_get_range_call),
            "_shapedTextGetLineBreaksAdv" : ("_shaped_text_get_line_breaks_adv", _shaped_text_get_line_breaks_adv_call),
            "_shapedTextGetLineBreaks" : ("_shaped_text_get_line_breaks", _shaped_text_get_line_breaks_call),
            "_shapedTextGetWordBreaks" : ("_shaped_text_get_word_breaks", _shaped_text_get_word_breaks_call),
            "_shapedTextGetTrimPos" : ("_shaped_text_get_trim_pos", _shaped_text_get_trim_pos_call),
            "_shapedTextGetEllipsisPos" : ("_shaped_text_get_ellipsis_pos", _shaped_text_get_ellipsis_pos_call),
            "_shapedTextGetEllipsisGlyphCount" : ("_shaped_text_get_ellipsis_glyph_count", _shaped_text_get_ellipsis_glyph_count_call),
            "_shapedTextGetEllipsisGlyphs" : ("_shaped_text_get_ellipsis_glyphs", _shaped_text_get_ellipsis_glyphs_call),
            "_shapedTextOverrunTrimToWidth" : ("_shaped_text_overrun_trim_to_width", _shaped_text_overrun_trim_to_width_call),
            "_shapedTextGetObjects" : ("_shaped_text_get_objects", _shaped_text_get_objects_call),
            "_shapedTextGetObjectRect" : ("_shaped_text_get_object_rect", _shaped_text_get_object_rect_call),
            "_shapedTextGetSize" : ("_shaped_text_get_size", _shaped_text_get_size_call),
            "_shapedTextGetAscent" : ("_shaped_text_get_ascent", _shaped_text_get_ascent_call),
            "_shapedTextGetDescent" : ("_shaped_text_get_descent", _shaped_text_get_descent_call),
            "_shapedTextGetWidth" : ("_shaped_text_get_width", _shaped_text_get_width_call),
            "_shapedTextGetUnderlinePosition" : ("_shaped_text_get_underline_position", _shaped_text_get_underline_position_call),
            "_shapedTextGetUnderlineThickness" : ("_shaped_text_get_underline_thickness", _shaped_text_get_underline_thickness_call),
            "_shapedTextGetDominantDirectionInRange" : ("_shaped_text_get_dominant_direction_in_range", _shaped_text_get_dominant_direction_in_range_call),
            "_shapedTextGetCarets" : ("_shaped_text_get_carets", _shaped_text_get_carets_call),
            "_shapedTextGetSelection" : ("_shaped_text_get_selection", _shaped_text_get_selection_call),
            "_shapedTextHitTestGrapheme" : ("_shaped_text_hit_test_grapheme", _shaped_text_hit_test_grapheme_call),
            "_shapedTextHitTestPosition" : ("_shaped_text_hit_test_position", _shaped_text_hit_test_position_call),
            "_shapedTextDraw" : ("_shaped_text_draw", _shaped_text_draw_call),
            "_shapedTextDrawOutline" : ("_shaped_text_draw_outline", _shaped_text_draw_outline_call),
            "_shapedTextGetGraphemeBounds" : ("_shaped_text_get_grapheme_bounds", _shaped_text_get_grapheme_bounds_call),
            "_shapedTextNextGraphemePos" : ("_shaped_text_next_grapheme_pos", _shaped_text_next_grapheme_pos_call),
            "_shapedTextPrevGraphemePos" : ("_shaped_text_prev_grapheme_pos", _shaped_text_prev_grapheme_pos_call),
            "_shapedTextGetCharacterBreaks" : ("_shaped_text_get_character_breaks", _shaped_text_get_character_breaks_call),
            "_shapedTextNextCharacterPos" : ("_shaped_text_next_character_pos", _shaped_text_next_character_pos_call),
            "_shapedTextPrevCharacterPos" : ("_shaped_text_prev_character_pos", _shaped_text_prev_character_pos_call),
            "_shapedTextClosestCharacterPos" : ("_shaped_text_closest_character_pos", _shaped_text_closest_character_pos_call),
            "_formatNumber" : ("_format_number", _format_number_call),
            "_parseNumber" : ("_parse_number", _parse_number_call),
            "_percentSign" : ("_percent_sign", _percent_sign_call),
            "_stripDiacritics" : ("_strip_diacritics", _strip_diacritics_call),
            "_isValidIdentifier" : ("_is_valid_identifier", _is_valid_identifier_call),
            "_stringGetWordBreaks" : ("_string_get_word_breaks", _string_get_word_breaks_call),
            "_stringGetCharacterBreaks" : ("_string_get_character_breaks", _string_get_character_breaks_call),
            "_isConfusable" : ("_is_confusable", _is_confusable_call),
            "_spoofCheck" : ("_spoof_check", _spoof_check_call),
            "_stringToUpper" : ("_string_to_upper", _string_to_upper_call),
            "_stringToLower" : ("_string_to_lower", _string_to_lower_call),
            "_parseStructuredText" : ("_parse_structured_text", _parse_structured_text_call),
            "_cleanup" : ("_cleanup", _cleanup_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }
}