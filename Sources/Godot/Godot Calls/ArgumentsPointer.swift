import Foundation
import GodotExtensionHeaders

private func withAccessPointer(withSize size: Int, body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    let accessPointer = UnsafeMutablePointer<GDExtensionConstObjectPtr?>.allocate(capacity: size)
    
    body(accessPointer)
    
    accessPointer.deinitialize(count: size)
    accessPointer.deallocate()
}

func withUnsafeArgumentPointer(body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 0) { ptr in
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 1) { ptr in
        ptr[0] = a1
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 2) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               _ a3: GDExtensionConstObjectPtr?,
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 3) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        ptr[2] = a3
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               _ a3: GDExtensionConstObjectPtr?,
                               _ a4: GDExtensionConstObjectPtr?,
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 4) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        ptr[2] = a3
        ptr[3] = a4
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               _ a3: GDExtensionConstObjectPtr?,
                               _ a4: GDExtensionConstObjectPtr?,
                               _ a5: GDExtensionConstObjectPtr?,
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 5) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        ptr[2] = a3
        ptr[3] = a4
        ptr[4] = a5
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               _ a3: GDExtensionConstObjectPtr?,
                               _ a4: GDExtensionConstObjectPtr?,
                               _ a5: GDExtensionConstObjectPtr?,
                               _ a6: GDExtensionConstObjectPtr?,
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 6) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        ptr[2] = a3
        ptr[3] = a4
        ptr[4] = a5
        ptr[5] = a6
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               _ a3: GDExtensionConstObjectPtr?,
                               _ a4: GDExtensionConstObjectPtr?,
                               _ a5: GDExtensionConstObjectPtr?,
                               _ a6: GDExtensionConstObjectPtr?,
                               _ a7: GDExtensionConstObjectPtr?,
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 7) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        ptr[2] = a3
        ptr[3] = a4
        ptr[4] = a5
        ptr[5] = a6
        ptr[6] = a7
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               _ a3: GDExtensionConstObjectPtr?,
                               _ a4: GDExtensionConstObjectPtr?,
                               _ a5: GDExtensionConstObjectPtr?,
                               _ a6: GDExtensionConstObjectPtr?,
                               _ a7: GDExtensionConstObjectPtr?,
                               _ a8: GDExtensionConstObjectPtr?,
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 8) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        ptr[2] = a3
        ptr[3] = a4
        ptr[4] = a5
        ptr[5] = a6
        ptr[6] = a7
        ptr[7] = a8
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               _ a3: GDExtensionConstObjectPtr?,
                               _ a4: GDExtensionConstObjectPtr?,
                               _ a5: GDExtensionConstObjectPtr?,
                               _ a6: GDExtensionConstObjectPtr?,
                               _ a7: GDExtensionConstObjectPtr?,
                               _ a8: GDExtensionConstObjectPtr?,
                               _ rest: GDExtensionConstObjectPtr?...,
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 8 + rest.count) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        ptr[2] = a3
        ptr[3] = a4
        ptr[4] = a5
        ptr[5] = a6
        ptr[6] = a7
        ptr[7] = a8
        var index = 8
        for vararg in rest {
            ptr[index] = vararg
            index += 1
        }
        body(ptr)
    }
}


// MARK: Varargs

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ varargs: [GDExtensionConstObjectPtr?],
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 1 + varargs.count) { ptr in
        ptr[0] = a1
        var index = 1
        for vararg in varargs {
            ptr[index] = vararg
            index += 1
        }
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               _ varargs: [GDExtensionConstObjectPtr?],
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 2 + varargs.count) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        var index = 2
        for vararg in varargs {
            ptr[index] = vararg
            index += 1
        }
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               _ a3: GDExtensionConstObjectPtr?,
                               _ varargs: [GDExtensionConstObjectPtr?],
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 3 + varargs.count) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        ptr[2] = a3
        var index = 3
        for vararg in varargs {
            ptr[index] = vararg
            index += 1
        }
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               _ a3: GDExtensionConstObjectPtr?,
                               _ a4: GDExtensionConstObjectPtr?,
                               _ varargs: [GDExtensionConstObjectPtr?],
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 4 + varargs.count) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        ptr[2] = a3
        ptr[3] = a4
        var index = 4
        for vararg in varargs {
            ptr[index] = vararg
            index += 1
        }
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               _ a3: GDExtensionConstObjectPtr?,
                               _ a4: GDExtensionConstObjectPtr?,
                               _ a5: GDExtensionConstObjectPtr?,
                               _ varargs: [GDExtensionConstObjectPtr?],
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 5 + varargs.count) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        ptr[2] = a3
        ptr[3] = a4
        ptr[4] = a5
        var index = 5
        for vararg in varargs {
            ptr[index] = vararg
            index += 1
        }
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               _ a3: GDExtensionConstObjectPtr?,
                               _ a4: GDExtensionConstObjectPtr?,
                               _ a5: GDExtensionConstObjectPtr?,
                               _ a6: GDExtensionConstObjectPtr?,
                               _ varargs: [GDExtensionConstObjectPtr?],
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 6 + varargs.count) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        ptr[2] = a3
        ptr[3] = a4
        ptr[4] = a5
        ptr[5] = a6
        var index = 6
        for vararg in varargs {
            ptr[index] = vararg
            index += 1
        }
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               _ a3: GDExtensionConstObjectPtr?,
                               _ a4: GDExtensionConstObjectPtr?,
                               _ a5: GDExtensionConstObjectPtr?,
                               _ a6: GDExtensionConstObjectPtr?,
                               _ a7: GDExtensionConstObjectPtr?,
                               _ varargs: [GDExtensionConstObjectPtr?],
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 7 + varargs.count) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        ptr[2] = a3
        ptr[3] = a4
        ptr[4] = a5
        ptr[5] = a6
        ptr[6] = a7
        var index = 7
        for vararg in varargs {
            ptr[index] = vararg
            index += 1
        }
        body(ptr)
    }
}

func withUnsafeArgumentPointer(_ a1: GDExtensionConstObjectPtr?,
                               _ a2: GDExtensionConstObjectPtr?,
                               _ a3: GDExtensionConstObjectPtr?,
                               _ a4: GDExtensionConstObjectPtr?,
                               _ a5: GDExtensionConstObjectPtr?,
                               _ a6: GDExtensionConstObjectPtr?,
                               _ a7: GDExtensionConstObjectPtr?,
                               _ a8: GDExtensionConstObjectPtr?,
                               _ varargs: [GDExtensionConstObjectPtr?],
                               body: (UnsafeMutablePointer<GDExtensionConstObjectPtr?>) -> Void) {
    withAccessPointer(withSize: 8 + varargs.count) { ptr in
        ptr[0] = a1
        ptr[1] = a2
        ptr[2] = a3
        ptr[3] = a4
        ptr[4] = a5
        ptr[5] = a6
        ptr[6] = a7
        ptr[7] = a8
        var index = 8
        for vararg in varargs {
            ptr[index] = vararg
            index += 1
        }
        body(ptr)
    }
}
