
/// A representation of Godot builtin class sizes.
///
/// It can be decoded from the `extension_api.json` file.
///
/// Use the ``size(ofClass:for:)`` function to retreive the size
/// of a specific class.
struct GodotBuiltinClassMemberOffsets: Decodable {
    var members: [BuildConfiguration : [GodotType : [Member]]]
    
    // MARK: Member
    
    struct Member: Decodable {
        var member: String
        var offset: Int
    }
    
    // MARK: Init
    
    init(from decoder: Decoder) throws {
        let builtinClassMemberOffsets = try Array<_GodotBuiltinClassMemberOffsets>(from: decoder)
        
        var members = [BuildConfiguration : [GodotType : [Member]]]()
        for builtinClassMemberOffset in builtinClassMemberOffsets {
            var typeToMembers = [GodotType : [Member]]()
            for classValue in builtinClassMemberOffset.classes {
                typeToMembers[classValue.name] = classValue.members
            }
            
            members[builtinClassMemberOffset.buildConfiguration] = typeToMembers
        }
        
        self.members = members
    }
    
    // MARK: Access
    
    func members(ofClass classType: GodotType, for configuration: BuildConfiguration) -> [Member]? {
        members[configuration]?[classType]
    }
}

private struct _GodotBuiltinClassMemberOffsets: Decodable {
    let buildConfiguration: BuildConfiguration
    let classes: [Class]
    
    // MARK: Class
    
    struct Class: Decodable {
        let name: GodotType
        let members: [GodotBuiltinClassMemberOffsets.Member]
    }
}
