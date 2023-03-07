import Foundation
import GodotExtensionHeaders

extension Variant {
    public enum Operator: Int {
        case equal         = 0
        case notEqual      = 1
        case less          = 2
        case lessEqual     = 3
        case greater       = 4
        case greaterEqual  = 5
        case add           = 6
        case subtract      = 7
        case multiply      = 8
        case divide        = 9
        case negate        = 10
        case positive      = 11
        case module        = 12
        case power         = 13
        case shiftLeft     = 14
        case shiftRight    = 15
        case bitAnd        = 16
        case bitOr         = 17
        case bitXor        = 18
        case bitNegate     = 19
        case and           = 20
        case or            = 21
        case xor           = 22
        case not           = 23
        case `in`          = 24
    }
}

// MARK: - Godot operator

extension Variant.Operator {
    init(godotOperator: GDExtensionVariantOperator) {
        switch godotOperator {
        case GDEXTENSION_VARIANT_OP_EQUAL: self = .equal
        case GDEXTENSION_VARIANT_OP_NOT_EQUAL: self = .notEqual
        case GDEXTENSION_VARIANT_OP_LESS: self = .less
        case GDEXTENSION_VARIANT_OP_LESS_EQUAL: self = .lessEqual
        case GDEXTENSION_VARIANT_OP_GREATER: self = .greater
        case GDEXTENSION_VARIANT_OP_GREATER_EQUAL: self = .greaterEqual
        case GDEXTENSION_VARIANT_OP_ADD: self = .add
        case GDEXTENSION_VARIANT_OP_SUBTRACT: self = .subtract
        case GDEXTENSION_VARIANT_OP_MULTIPLY: self = .multiply
        case GDEXTENSION_VARIANT_OP_DIVIDE: self = .divide
        case GDEXTENSION_VARIANT_OP_NEGATE: self = .negate
        case GDEXTENSION_VARIANT_OP_POSITIVE: self = .positive
        case GDEXTENSION_VARIANT_OP_MODULE: self = .module
        case GDEXTENSION_VARIANT_OP_POWER: self = .power
        case GDEXTENSION_VARIANT_OP_SHIFT_LEFT: self = .shiftLeft
        case GDEXTENSION_VARIANT_OP_SHIFT_RIGHT: self = .shiftRight
        case GDEXTENSION_VARIANT_OP_BIT_AND: self = .bitAnd
        case GDEXTENSION_VARIANT_OP_BIT_OR: self = .bitOr
        case GDEXTENSION_VARIANT_OP_BIT_XOR: self = .bitXor
        case GDEXTENSION_VARIANT_OP_BIT_NEGATE: self = .bitNegate
        case GDEXTENSION_VARIANT_OP_AND: self = .and
        case GDEXTENSION_VARIANT_OP_OR: self = .or
        case GDEXTENSION_VARIANT_OP_XOR: self = .xor
        case GDEXTENSION_VARIANT_OP_NOT: self = .not
        case GDEXTENSION_VARIANT_OP_IN: self = .in
        default: fatalError("Cannot retreive Variant operator from GDExtensionVariantOperator")
        }
    }
    
    var godotOperator: GDExtensionVariantOperator {
        switch self {
        case .equal: return GDEXTENSION_VARIANT_OP_EQUAL
        case .notEqual: return GDEXTENSION_VARIANT_OP_NOT_EQUAL
        case .less: return GDEXTENSION_VARIANT_OP_LESS
        case .lessEqual: return GDEXTENSION_VARIANT_OP_LESS_EQUAL
        case .greater: return GDEXTENSION_VARIANT_OP_GREATER
        case .greaterEqual: return GDEXTENSION_VARIANT_OP_GREATER_EQUAL
        case .add: return GDEXTENSION_VARIANT_OP_ADD
        case .subtract: return GDEXTENSION_VARIANT_OP_SUBTRACT
        case .multiply: return GDEXTENSION_VARIANT_OP_MULTIPLY
        case .divide: return GDEXTENSION_VARIANT_OP_DIVIDE
        case .negate: return GDEXTENSION_VARIANT_OP_NEGATE
        case .positive: return GDEXTENSION_VARIANT_OP_POSITIVE
        case .module: return GDEXTENSION_VARIANT_OP_MODULE
        case .power: return GDEXTENSION_VARIANT_OP_POWER
        case .shiftLeft: return GDEXTENSION_VARIANT_OP_SHIFT_LEFT
        case .shiftRight: return GDEXTENSION_VARIANT_OP_SHIFT_RIGHT
        case .bitAnd: return GDEXTENSION_VARIANT_OP_BIT_AND
        case .bitOr: return GDEXTENSION_VARIANT_OP_BIT_OR
        case .bitXor: return GDEXTENSION_VARIANT_OP_BIT_XOR
        case .bitNegate: return GDEXTENSION_VARIANT_OP_BIT_NEGATE
        case .and: return GDEXTENSION_VARIANT_OP_AND
        case .or: return GDEXTENSION_VARIANT_OP_OR
        case .xor: return GDEXTENSION_VARIANT_OP_XOR
        case .not: return GDEXTENSION_VARIANT_OP_NOT
        case .in: return GDEXTENSION_VARIANT_OP_IN
        }
    }
}
