import Foundation
import CodeTranslator

func gododFiles(fromApi extensionApi: ExtensionApi, buildConfiguration: BuildConfiguration) -> [any GeneratedFile] {
    let builtinClassSizes = extensionApi.builtinClassSizes.first { $0.buildConfiguration == buildConfiguration }!
    let memberOffsets = extensionApi.builtinClassMemberOffsets.first { $0.buildConfiguration == buildConfiguration }!
    let builtinClassesToGenerate = extensionApi.builtinClasses.filter { !$0.name.isSwiftBaseType }
    let classesToGenerate = extensionApi.classes
    let nativeStructsToGenerate = extensionApi.nativeStructures
    let variantSize = builtinClassSizes.sizes.first(where: { $0.name == "Variant" })!.size
    
    let utilityFiles: [any GeneratedFile] = [
        UtilityFunctionsFile(functions: extensionApi.utilityFunctions),
        GlobalEnumsFile(enums: extensionApi.globalEnums),
        RealRawValueFile(floatingPointType: buildConfiguration.floatingPointType),
        VariantSizeFile(size: variantSize),
        SetBindingsFile(builtinClasses: builtinClassesToGenerate, classes: classesToGenerate)
    ]
    
    let classesFiles: [any GeneratedFile] = classesToGenerate.map({ `class` in
        ClassFile(class: `class`)
            .insideDirectory(NamingConvention.snake.convert(`class`.apiType, to: .pascal))
            .insideDirectory("Classes")
    })
    
    let builtinClassesFiles: [any GeneratedFile] = builtinClassesToGenerate.map({ builtinClass in
        BuiltinClassFile(builtinClass: builtinClass,
                         builtinClassSizes: builtinClassSizes,
                         builtinClassMemberOffset: memberOffsets)
        .insideDirectory("Builtin Structs")
    })
    
    let nativeStructsFiles: [any GeneratedFile] = nativeStructsToGenerate.map({ nativeStruct in
        NativeStructsFile(nativeStruct: nativeStruct)
            .insideDirectory("Native Structs")
    })
    
    return utilityFiles + builtinClassesFiles + classesFiles + nativeStructsFiles
}
