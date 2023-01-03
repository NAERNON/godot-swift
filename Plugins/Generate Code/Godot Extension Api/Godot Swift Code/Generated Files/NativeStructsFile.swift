import Foundation

struct NativeStructsFile: GeneratedSwiftFile {
    let path: String
    let nativeStruct: ExtensionApi.NativeStructure
    
    init(nativeStruct: ExtensionApi.NativeStructure) {
        self.path = nativeStruct.name + ".swift"
        self.nativeStruct = nativeStruct
    }
    
    var code: some SwiftCode {
        Import.foundation
        
        Spacer()
        
        Struct(nativeStruct.name) {
            for variable in nativeStruct.format.variables {
                let property = Property(variable.nameToSwift()).letDefined().type(variable.typeToSwift()).public()
                
                if let defaultValue = variable.defaultValue {
                    property.assign(value: variable.type.instantationCode(forValue: defaultValue))
                } else {
                    property
                }
            }
        }.public()
    }
}
