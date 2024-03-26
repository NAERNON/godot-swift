//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders

@GodotClass
open class WorkerThreadPool: Object {
    internal static var __method_binding_add_task: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_task").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3745067146)!
        }
        }
    }()

    public func addTask(
        action: Godot.Callable,
        highPriority: Bool = false,
        description: Godot.GodotString = ""
    ) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        action.withGodotUnsafeRawPointer { __ptr_action in
        highPriority.withGodotUnsafeRawPointer { __ptr_highPriority in
        description.withGodotUnsafeRawPointer { __ptr_description in
        withUnsafeArgumentPackPointer(__ptr_action, __ptr_highPriority, __ptr_description) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_task,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}
    }

    internal static var __method_binding_is_task_completed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_task_completed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isTaskCompleted(
        taskID: Int64
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        taskID.withGodotUnsafeRawPointer { __ptr_taskID in
        withUnsafeArgumentPackPointer(__ptr_taskID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_task_completed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_wait_for_task_completion: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "wait_for_task_completion").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 844576869)!
        }
        }
    }()

    public func waitForTaskCompletion(
        taskID: Int64
    ) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        taskID.withGodotUnsafeRawPointer { __ptr_taskID in
        withUnsafeArgumentPackPointer(__ptr_taskID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_wait_for_task_completion,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_add_group_task: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_group_task").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1801953219)!
        }
        }
    }()

    public func addGroupTask(
        action: Godot.Callable,
        elements: Int32,
        tasksNeeded: Int32 = -1,
        highPriority: Bool = false,
        description: Godot.GodotString = ""
    ) -> Int64 {
        Int64.fromMutatingGodotUnsafePointer { __temporary in
        action.withGodotUnsafeRawPointer { __ptr_action in
        elements.withGodotUnsafeRawPointer { __ptr_elements in
        tasksNeeded.withGodotUnsafeRawPointer { __ptr_tasksNeeded in
        highPriority.withGodotUnsafeRawPointer { __ptr_highPriority in
        description.withGodotUnsafeRawPointer { __ptr_description in
        withUnsafeArgumentPackPointer(__ptr_action, __ptr_elements, __ptr_tasksNeeded, __ptr_highPriority, __ptr_description) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_group_task,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}}
    }

    internal static var __method_binding_is_group_task_completed: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_group_task_completed").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1116898809)!
        }
        }
    }()

    public func isGroupTaskCompleted(
        groupID: Int64
    ) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        groupID.withGodotUnsafeRawPointer { __ptr_groupID in
        withUnsafeArgumentPackPointer(__ptr_groupID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_group_task_completed,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_get_group_processed_element_count: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_group_processed_element_count").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 923996154)!
        }
        }
    }()

    public func groupProcessedElementCount(
        groupID: Int64
    ) -> UInt32 {
        UInt32.fromMutatingGodotUnsafePointer { __temporary in
        groupID.withGodotUnsafeRawPointer { __ptr_groupID in
        withUnsafeArgumentPackPointer(__ptr_groupID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_group_processed_element_count,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}
    }

    internal static var __method_binding_wait_for_group_task_completion: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "wait_for_group_task_completion").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()

    public func waitForGroupTaskCompletion(
        groupID: Int64
    ) {
        groupID.withGodotUnsafeRawPointer { __ptr_groupID in
        withUnsafeArgumentPackPointer(__ptr_groupID) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_wait_for_group_task_completion,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
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