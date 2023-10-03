import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import XCTest

// Macro implementations build for the host, so the corresponding module is not available when cross-compiling. Cross-compiled tests may still make use of the macro itself in end-to-end tests.
#if canImport(GodotMacros)
import GodotMacros

private let testMacros: [String: Macro.Type] = [
    "Exposable": ExposableMacro.self,
]
#endif

final class ExposableMacroTests: XCTestCase {
    func testPublicClass() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Exposable
            public class MyClass: Object {
                public var value1: Int = 0
                public var value2: Int = 0
                private var value3: Int = 0
                @ExpositionIgnored
                public var value4: Int = 0
            }
            """,
            expandedSource: """
            public class MyClass: Object {
                @ExposableMember(MyClass)
                public var value1: Int = 0
                @ExposableMember(MyClass)
                public var value2: Int = 0
                private var value3: Int = 0
                @ExpositionIgnored
                public var value4: Int = 0
            
                private static let _$staticClassName: Godot.GodotStringName = "MyClass"
                open override class var _$className: Godot.GodotStringName { _$staticClassName }
                open override class var _$isCustomGodotClass: Bool { true }
            
                open override class func _$instanceBindingCallbacks() -> Godot.GodotInstanceBindingCallbacks {
                    return Godot.GodotInstanceBindingCallbacks { token, instancePtr in
                        return nil
                    } free_callback: { token, instancePtr, bindingsPtr in
            
                    } reference_callback: { token, instancePtr, reference in
                        MyClass.__referenceCallback(instancePtr, reference)
                    }
                }
            
                open override class func _$exposeToGodot() {
                    let classBinding = Godot.GodotExtension.classRegister.registerCustomClass(
                        ofType: self,
                        superclassType: Object.self
                    ) { instancePtr, isValid, out in
                        MyClass._$instanceGodotDescription(instancePtr, isValid, out)
                    }
                    createInstanceFunction: { _ in
                        MyClass._$makeNewInstanceManagedByGodot()
                    }
                    freeInstanceFunction: { _, instancePtr in
                        MyClass._$freeInstanceManagedByGodot(instancePtr)
                    }
            
                guard classBinding != nil else { return }
                    _$godotRegister_value1()
                    _$godotRegister_value2()
                }
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    
    func testPublicFinalClass() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Exposable
            public final class MyClass: Object {
                public var value1: Int = 0
                public var value2: Int = 0
                private var value3: Int = 0
                @ExpositionIgnored
                public var value4: Int = 0
            }
            """,
            expandedSource: """
            public final class MyClass: Object {
                @ExposableMember(MyClass)
                public var value1: Int = 0
                @ExposableMember(MyClass)
                public var value2: Int = 0
                private var value3: Int = 0
                @ExpositionIgnored
                public var value4: Int = 0
            
                private static let _$staticClassName: Godot.GodotStringName = "MyClass"
                public override class var _$className: Godot.GodotStringName { _$staticClassName }
                public override class var _$isCustomGodotClass: Bool { true }
            
                public override class func _$instanceBindingCallbacks() -> Godot.GodotInstanceBindingCallbacks {
                    return Godot.GodotInstanceBindingCallbacks { token, instancePtr in
                        return nil
                    } free_callback: { token, instancePtr, bindingsPtr in
            
                    } reference_callback: { token, instancePtr, reference in
                        MyClass.__referenceCallback(instancePtr, reference)
                    }
                }
            
                public override class func _$exposeToGodot() {
                    let classBinding = Godot.GodotExtension.classRegister.registerCustomClass(
                        ofType: self,
                        superclassType: Object.self
                    ) { instancePtr, isValid, out in
                        MyClass._$instanceGodotDescription(instancePtr, isValid, out)
                    }
                    createInstanceFunction: { _ in
                        MyClass._$makeNewInstanceManagedByGodot()
                    }
                    freeInstanceFunction: { _, instancePtr in
                        MyClass._$freeInstanceManagedByGodot(instancePtr)
                    }
            
                guard classBinding != nil else { return }
                    _$godotRegister_value1()
                    _$godotRegister_value2()
                }
            }
            """,
            diagnostics: [],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
    func testInternalClass() throws {
#if canImport(GodotMacros)
        assertMacroExpansion(
            """
            @Exposable
            class MyClass: Object {
                public var value1: Int = 0
                public var value2: Int = 0
                private var value3: Int = 0
            }
            """,
            expandedSource: """
            class MyClass: Object {
                @ExposableMember(MyClass)
                public var value1: Int = 0
                @ExposableMember(MyClass)
                public var value2: Int = 0
                private var value3: Int = 0
            }
            """,
            diagnostics: [.init(message: "Exposable class is not public",
                                line: 2,
                                column: 1,
                                severity: .error,
                                fixIts: [.init(message: "Insert 'public'")])
            ],
            macros: testMacros
        )
#else
        throw XCTSkip("macros are only supported when running tests for the host platform")
#endif
    }
}
