
/// A representation of a Godot argument.
///
/// It can be decoded from the `extension_api.json` file.
struct GodotArgument: Decodable, Hashable {
    var name: String
    var type: GodotType
    var defaultValue: GodotConstant?
    var label: String?
    var isLabelHidden: Bool
    var attributes: [String] = []
    
    init(
        name: String,
        type: GodotType,
        meta: GodotTypeMetadata? = nil,
        defaultValue: GodotConstant? = nil
    ) {
        self.name = name
        self.defaultValue = defaultValue
        self.label = nil
        self.isLabelHidden = false
        
        if let meta {
            self.type = type.withMetadata(meta)
        } else {
            self.type = type
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case type
        case meta
        case defaultValue
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.init(
            name: try container.decode(String.self, forKey: .name),
            type: try container.decode(GodotType.self, forKey: .type),
            meta: try container.decodeIfPresent(GodotTypeMetadata.self, forKey: .meta),
            defaultValue: try container.decodeIfPresent(GodotConstant.self, forKey: .defaultValue)
        )
    }
}

extension GodotArgument {
    func functionParameterSyntax(
        hideLabel: Bool,
        type: Syntax? = nil,
        options: GodotTypeSyntaxOptions = []
    ) -> Syntax {
        let isLabelHidden = hideLabel || isLabelHidden
        
        let label: Syntax? = if isLabelHidden {
            "_"
        } else if let label = self.label {
            .init(label)
        } else {
            nil
        }
        
        let name = Syntax(self.name.backticksKeyword())
        
        var defaultValueSyntax = defaultValue?.syntax(
            forType: self.type,
            useStaticVariables: true
        )
        if let syntax = defaultValueSyntax {
            defaultValueSyntax = " = \(syntax)"
        }
        
        let attributes = attributes.map { Syntax($0) }.map { $0 + " " }.joined()
        
        return "\(label ?? name)\(label == nil ? nil : " " + name): \(attributes)\(type ?? self.type.syntax(options: options))\(defaultValueSyntax)"
    }
}
