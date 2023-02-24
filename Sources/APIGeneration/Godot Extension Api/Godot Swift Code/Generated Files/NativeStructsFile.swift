import Foundation
import CodeGenerator

struct NativeStructsFile: GeneratedFile {
    let path: String
    let nativeStruct: ExtensionApi.NativeStructure
    
    init(nativeStruct: ExtensionApi.NativeStructure) {
        self.path = nativeStruct.name + ".swift"
        self.nativeStruct = nativeStruct
    }
    
    var code: some Code {
        Import.foundation
        
        Struct(nativeStruct.name) {
            for variable in nativeStruct.format.variables {
                let property = Let(variable.nameToSwift()).typed(variable.typeToSwift()).public()
                
                if let defaultValue = variable.defaultValue {
                    property.assign(variable.type.instantationCode(forValue: defaultValue))
                } else {
                    property
                }
            }
        }.public()
    }
}
