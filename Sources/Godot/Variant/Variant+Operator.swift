import Foundation

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
