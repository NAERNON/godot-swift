//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class Time: Object {
    public enum Month: UInt32, GodotEnum {
        case january = 1
        case february = 2
        case march = 3
        case april = 4
        case may = 5
        case june = 6
        case july = 7
        case august = 8
        case september = 9
        case october = 10
        case november = 11
        case december = 12
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("January", 1),
            ("February", 2),
            ("March", 3),
            ("April", 4),
            ("May", 5),
            ("June", 6),
            ("July", 7),
            ("August", 8),
            ("September", 9),
            ("October", 10),
            ("November", 11),
            ("December", 12),]
        }
    }
    public enum Weekday: UInt32, GodotEnum {
        case sunday = 0
        case monday = 1
        case tuesday = 2
        case wednesday = 3
        case thursday = 4
        case friday = 5
        case saturday = 6
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Sunday", 0),
            ("Monday", 1),
            ("Tuesday", 2),
            ("Wednesday", 3),
            ("Thursday", 4),
            ("Friday", 5),
            ("Saturday", 6),]
        }
    }

    private static var __method_binding_get_datetime_dict_from_unix_time: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_datetime_dict_from_unix_time").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3485342025)!
        }
        }
    }()
    public func datetimeDictFromUnixTime(unixTimeVal: Int64) -> Godot.GodotDictionary<Variant, Variant> {
        let __temporary = Godot.GodotDictionary<Variant, Variant>()
        withUnsafePointer(to: unixTimeVal) { (__ptr_unixTimeVal) in
            withUnsafeArgumentPackPointer(__ptr_unixTimeVal) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_datetime_dict_from_unix_time,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_date_dict_from_unix_time: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_date_dict_from_unix_time").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3485342025)!
        }
        }
    }()
    public func dateDictFromUnixTime(unixTimeVal: Int64) -> Godot.GodotDictionary<Variant, Variant> {
        let __temporary = Godot.GodotDictionary<Variant, Variant>()
        withUnsafePointer(to: unixTimeVal) { (__ptr_unixTimeVal) in
            withUnsafeArgumentPackPointer(__ptr_unixTimeVal) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_date_dict_from_unix_time,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_time_dict_from_unix_time: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_time_dict_from_unix_time").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3485342025)!
        }
        }
    }()
    public func timeDictFromUnixTime(unixTimeVal: Int64) -> Godot.GodotDictionary<Variant, Variant> {
        let __temporary = Godot.GodotDictionary<Variant, Variant>()
        withUnsafePointer(to: unixTimeVal) { (__ptr_unixTimeVal) in
            withUnsafeArgumentPackPointer(__ptr_unixTimeVal) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_time_dict_from_unix_time,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_datetime_string_from_unix_time: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_datetime_string_from_unix_time").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 2311239925)!
        }
        }
    }()
    public func datetimeStringFromUnixTime(unixTimeVal: Int64, useSpace: Bool = false) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: unixTimeVal) { (__ptr_unixTimeVal) in
            withUnsafePointer(to: useSpace) { (__ptr_useSpace) in
                withUnsafeArgumentPackPointer(__ptr_unixTimeVal, __ptr_useSpace) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_datetime_string_from_unix_time,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_date_string_from_unix_time: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_date_string_from_unix_time").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func dateStringFromUnixTime(unixTimeVal: Int64) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: unixTimeVal) { (__ptr_unixTimeVal) in
            withUnsafeArgumentPackPointer(__ptr_unixTimeVal) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_date_string_from_unix_time,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_time_string_from_unix_time: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_time_string_from_unix_time").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func timeStringFromUnixTime(unixTimeVal: Int64) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: unixTimeVal) { (__ptr_unixTimeVal) in
            withUnsafeArgumentPackPointer(__ptr_unixTimeVal) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_time_string_from_unix_time,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_datetime_dict_from_datetime_string: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_datetime_dict_from_datetime_string").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3253569256)!
        }
        }
    }()
    public func datetimeDictFromDatetimeString(datetime: Godot.GodotString, weekday: Bool) -> Godot.GodotDictionary<Variant, Variant> {
        let __temporary = Godot.GodotDictionary<Variant, Variant>()
        datetime.withUnsafeRawPointer { (__ptr_datetime) in
            withUnsafePointer(to: weekday) { (__ptr_weekday) in
                withUnsafeArgumentPackPointer(__ptr_datetime, __ptr_weekday) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_datetime_dict_from_datetime_string,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_datetime_string_from_datetime_dict: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_datetime_string_from_datetime_dict").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1898123706)!
        }
        }
    }()
    public func datetimeStringFromDatetimeDict<Value1: VariantStorable, Value2: VariantStorable>(datetime: Godot.GodotDictionary<Value1, Value2>, useSpace: Bool) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        datetime.withUnsafeRawPointer { (__ptr_datetime) in
            withUnsafePointer(to: useSpace) { (__ptr_useSpace) in
                withUnsafeArgumentPackPointer(__ptr_datetime, __ptr_useSpace) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_datetime_string_from_datetime_dict,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_unix_time_from_datetime_dict: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_unix_time_from_datetime_dict").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3021115443)!
        }
        }
    }()
    public func unixTimeFromDatetimeDict<Value1: VariantStorable, Value2: VariantStorable>(datetime: Godot.GodotDictionary<Value1, Value2>) -> Int64 {
        var __temporary = Int64()
        datetime.withUnsafeRawPointer { (__ptr_datetime) in
            withUnsafeArgumentPackPointer(__ptr_datetime) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_unix_time_from_datetime_dict,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_unix_time_from_datetime_string: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_unix_time_from_datetime_string").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1321353865)!
        }
        }
    }()
    public func unixTimeFromDatetimeString(datetime: Godot.GodotString) -> Int64 {
        var __temporary = Int64()
        datetime.withUnsafeRawPointer { (__ptr_datetime) in
            withUnsafeArgumentPackPointer(__ptr_datetime) { (__accessPtr) in
                withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_unix_time_from_datetime_string,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_offset_string_from_offset_minutes: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_offset_string_from_offset_minutes").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 844755477)!
        }
        }
    }()
    public func offsetStringFromOffsetMinutes(_ offsetMinutes: Int64) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: offsetMinutes) { (__ptr_offsetMinutes) in
            withUnsafeArgumentPackPointer(__ptr_offsetMinutes) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_offset_string_from_offset_minutes,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_datetime_dict_from_system: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_datetime_dict_from_system").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 205769976)!
        }
        }
    }()
    public func datetimeDictFromSystem(utc: Bool = false) -> Godot.GodotDictionary<Variant, Variant> {
        let __temporary = Godot.GodotDictionary<Variant, Variant>()
        withUnsafePointer(to: utc) { (__ptr_utc) in
            withUnsafeArgumentPackPointer(__ptr_utc) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_datetime_dict_from_system,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_date_dict_from_system: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_date_dict_from_system").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 205769976)!
        }
        }
    }()
    public func dateDictFromSystem(utc: Bool = false) -> Godot.GodotDictionary<Variant, Variant> {
        let __temporary = Godot.GodotDictionary<Variant, Variant>()
        withUnsafePointer(to: utc) { (__ptr_utc) in
            withUnsafeArgumentPackPointer(__ptr_utc) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_date_dict_from_system,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_time_dict_from_system: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_time_dict_from_system").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 205769976)!
        }
        }
    }()
    public func timeDictFromSystem(utc: Bool = false) -> Godot.GodotDictionary<Variant, Variant> {
        let __temporary = Godot.GodotDictionary<Variant, Variant>()
        withUnsafePointer(to: utc) { (__ptr_utc) in
            withUnsafeArgumentPackPointer(__ptr_utc) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_time_dict_from_system,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_datetime_string_from_system: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_datetime_string_from_system").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1136425492)!
        }
        }
    }()
    public func datetimeStringFromSystem(utc: Bool = false, useSpace: Bool = false) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: utc) { (__ptr_utc) in
            withUnsafePointer(to: useSpace) { (__ptr_useSpace) in
                withUnsafeArgumentPackPointer(__ptr_utc, __ptr_useSpace) { (__accessPtr) in
                    __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                        `self`.withUnsafeRawPointer { (__ptr_self) in
                            gdextension_interface_object_method_bind_ptrcall(
                                Self.__method_binding_get_datetime_string_from_system,
                                __ptr_self,
                                __accessPtr,
                                __ptr___temporary
                            )
                        }
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_date_string_from_system: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_date_string_from_system").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1162154673)!
        }
        }
    }()
    public func dateStringFromSystem(utc: Bool = false) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: utc) { (__ptr_utc) in
            withUnsafeArgumentPackPointer(__ptr_utc) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_date_string_from_system,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_time_string_from_system: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_time_string_from_system").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1162154673)!
        }
        }
    }()
    public func timeStringFromSystem(utc: Bool = false) -> Godot.GodotString {
        let __temporary = Godot.GodotString()
        withUnsafePointer(to: utc) { (__ptr_utc) in
            withUnsafeArgumentPackPointer(__ptr_utc) { (__accessPtr) in
                __temporary.withUnsafeRawPointer { (__ptr___temporary) in
                    `self`.withUnsafeRawPointer { (__ptr_self) in
                        gdextension_interface_object_method_bind_ptrcall(
                            Self.__method_binding_get_time_string_from_system,
                            __ptr_self,
                            __accessPtr,
                            __ptr___temporary
                        )
                    }
                }
            }
        }
        return __temporary
    }

    private static var __method_binding_get_time_zone_from_system: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_time_zone_from_system").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3102165223)!
        }
        }
    }()
    public func timeZoneFromSystem() -> Godot.GodotDictionary<Variant, Variant> {
        let __temporary = Godot.GodotDictionary<Variant, Variant>()
        __temporary.withUnsafeRawPointer { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_time_zone_from_system,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_unix_time_from_system: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_unix_time_from_system").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    public func unixTimeFromSystem() -> Double {
        var __temporary = Double()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_unix_time_from_system,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_ticks_msec: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ticks_msec").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func ticksMsec() -> UInt64 {
        var __temporary = UInt64()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_ticks_msec,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var __method_binding_get_ticks_usec: GDExtensionMethodBindPtr = {
        _$staticClassName.withUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_ticks_usec").withUnsafeRawPointer { __ptr__method_name in
        return gdextension_interface_classdb_get_method_bind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    public func ticksUsec() -> UInt64 {
        var __temporary = UInt64()
        withUnsafeMutablePointer(to: &__temporary) { (__ptr___temporary) in
            `self`.withUnsafeRawPointer { (__ptr_self) in
                gdextension_interface_object_method_bind_ptrcall(
                    Self.__method_binding_get_ticks_usec,
                    __ptr_self,
                    nil,
                    __ptr___temporary
                )
            }
        }
        return __temporary
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        _virtualFunctions = [
            :
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }