import Foundation
import CodeGenerator

struct NativeStructsFile: File {
    let path: String
    let nativeStruct: ExtensionApi.NativeStructure
    
    init(nativeStruct: ExtensionApi.NativeStructure) {
        self.path = nativeStruct.name + ".swift"
        self.nativeStruct = nativeStruct
    }
    
    var code: some Code {
        Import.foundation
        
        Space()
        
        Struct(nativeStruct.name) {
            ForEach(nativeStruct.format.variables) { variable in
                let property = Let(variable.nameCode()).typed(variable.typeCode()).public()
                
                if let defaultValue = variable.defaultValue {
                    property.assign(variable.type.instantationCode(forValue: defaultValue))
                } else {
                    property
                }
            }
        }.public()
    }
}
