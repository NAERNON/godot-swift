import Foundation
import CodeGenerator
import CodeTranslator

func gododFiles(fromApi extensionApi: ExtensionApi, buildConfiguration: BuildConfiguration) -> [any File] {
    let builtinClassSizes = extensionApi.builtinClassSizes.first { $0.buildConfiguration == buildConfiguration }!
    let memberOffsets = extensionApi.builtinClassMemberOffsets.first { $0.buildConfiguration == buildConfiguration }!
    let builtinClassesToGenerate = extensionApi.builtinClasses.filter { !$0.name.isSwiftBaseType }
    let classesToGenerate = extensionApi.classes
    let nativeStructsToGenerate = extensionApi.nativeStructures
    let variantSize = builtinClassSizes.sizes.first(where: { $0.name == "Variant" })!.size
    
    let utilityFiles: [any File] = [
        UtilityFunctionsFile(functions: extensionApi.utilityFunctions),
        GlobalEnumsFile(enums: extensionApi.globalEnums),
        RealRawValueFile(floatingPointType: buildConfiguration.floatingPointType),
        VariantSizeFile(size: variantSize),
        SetBindingsFile(builtinClasses: builtinClassesToGenerate, classes: classesToGenerate)
    ]
    
    let classesFiles: [any File] = classesToGenerate.map({ `class` in
        ClassFile(class: `class`)
            .insideFolder(NamingConvention.snake.convert(`class`.apiType, to: .pascal))
            .insideFolder("Classes")
    })
    
    let builtinClassesFiles: [any File] = builtinClassesToGenerate.map({ builtinClass in
        BuiltinClassFile(builtinClass: builtinClass,
                         builtinClassSizes: builtinClassSizes,
                         builtinClassMemberOffset: memberOffsets)
        .insideFolder("Builtin Structs")
    })
    
    let nativeStructsFiles: [any File] = nativeStructsToGenerate.map({ nativeStruct in
        NativeStructsFile(nativeStruct: nativeStruct)
            .insideFolder("Native Structs")
    })
    
    return utilityFiles + builtinClassesFiles + classesFiles + nativeStructsFiles
}
