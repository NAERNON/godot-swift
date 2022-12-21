import Foundation
import GodotExtensionHeaders

extension Variant {
    public enum Operator: UInt32 {
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
    init(godotOperator: GDNativeVariantOperator) {
        switch godotOperator {
        case GDNATIVE_VARIANT_OP_EQUAL: self = .equal
        case GDNATIVE_VARIANT_OP_NOT_EQUAL: self = .notEqual
        case GDNATIVE_VARIANT_OP_LESS: self = .less
        case GDNATIVE_VARIANT_OP_LESS_EQUAL: self = .lessEqual
        case GDNATIVE_VARIANT_OP_GREATER: self = .greater
        case GDNATIVE_VARIANT_OP_GREATER_EQUAL: self = .greaterEqual
        case GDNATIVE_VARIANT_OP_ADD: self = .add
        case GDNATIVE_VARIANT_OP_SUBTRACT: self = .subtract
        case GDNATIVE_VARIANT_OP_MULTIPLY: self = .multiply
        case GDNATIVE_VARIANT_OP_DIVIDE: self = .divide
        case GDNATIVE_VARIANT_OP_NEGATE: self = .negate
        case GDNATIVE_VARIANT_OP_POSITIVE: self = .positive
        case GDNATIVE_VARIANT_OP_MODULE: self = .module
        case GDNATIVE_VARIANT_OP_POWER: self = .power
        case GDNATIVE_VARIANT_OP_SHIFT_LEFT: self = .shiftLeft
        case GDNATIVE_VARIANT_OP_SHIFT_RIGHT: self = .shiftRight
        case GDNATIVE_VARIANT_OP_BIT_AND: self = .bitAnd
        case GDNATIVE_VARIANT_OP_BIT_OR: self = .bitOr
        case GDNATIVE_VARIANT_OP_BIT_XOR: self = .bitXor
        case GDNATIVE_VARIANT_OP_BIT_NEGATE: self = .bitNegate
        case GDNATIVE_VARIANT_OP_AND: self = .and
        case GDNATIVE_VARIANT_OP_OR: self = .or
        case GDNATIVE_VARIANT_OP_XOR: self = .xor
        case GDNATIVE_VARIANT_OP_NOT: self = .not
        case GDNATIVE_VARIANT_OP_IN: self = .in
        default: fatalError("Cannot retreive Variant operator from GDNativeVariantOperator")
        }
    }
    
    var godotOperator: GDNativeVariantOperator {
        switch self {
        case .equal: return GDNATIVE_VARIANT_OP_EQUAL
        case .notEqual: return GDNATIVE_VARIANT_OP_NOT_EQUAL
        case .less: return GDNATIVE_VARIANT_OP_LESS
        case .lessEqual: return GDNATIVE_VARIANT_OP_LESS_EQUAL
        case .greater: return GDNATIVE_VARIANT_OP_GREATER
        case .greaterEqual: return GDNATIVE_VARIANT_OP_GREATER_EQUAL
        case .add: return GDNATIVE_VARIANT_OP_ADD
        case .subtract: return GDNATIVE_VARIANT_OP_SUBTRACT
        case .multiply: return GDNATIVE_VARIANT_OP_MULTIPLY
        case .divide: return GDNATIVE_VARIANT_OP_DIVIDE
        case .negate: return GDNATIVE_VARIANT_OP_NEGATE
        case .positive: return GDNATIVE_VARIANT_OP_POSITIVE
        case .module: return GDNATIVE_VARIANT_OP_MODULE
        case .power: return GDNATIVE_VARIANT_OP_POWER
        case .shiftLeft: return GDNATIVE_VARIANT_OP_SHIFT_LEFT
        case .shiftRight: return GDNATIVE_VARIANT_OP_SHIFT_RIGHT
        case .bitAnd: return GDNATIVE_VARIANT_OP_BIT_AND
        case .bitOr: return GDNATIVE_VARIANT_OP_BIT_OR
        case .bitXor: return GDNATIVE_VARIANT_OP_BIT_XOR
        case .bitNegate: return GDNATIVE_VARIANT_OP_BIT_NEGATE
        case .and: return GDNATIVE_VARIANT_OP_AND
        case .or: return GDNATIVE_VARIANT_OP_OR
        case .xor: return GDNATIVE_VARIANT_OP_XOR
        case .not: return GDNATIVE_VARIANT_OP_NOT
        case .in: return GDNATIVE_VARIANT_OP_IN
        }
    }
}
