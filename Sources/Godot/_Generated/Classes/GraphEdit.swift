//
// THIS FILE IS GENERATED. EDITS WILL BE LOST.
//

import GodotExtensionHeaders
@GodotClass
open class GraphEdit: Control {
    public enum PanningScheme: UInt32, GodotEnum {
        case zooms = 0
        case pans = 1
        public static func hintValues() -> [(name: String, value: RawValue)] {
            [
            ("Zooms", 0),
            ("Pans", 1),]
        }
    }

    public struct ConnectionRequestSignalInput: Godot.SignalInput {
        public let from_node: Godot.GodotStringName
        public let from_port: Int
        public let to_node: Godot.GodotStringName
        public let to_port: Int
        fileprivate init(from_node: Godot.GodotStringName, from_port: Int, to_node: Godot.GodotStringName, to_port: Int) {
            self.from_node = from_node
            self.from_port = from_port
            self.to_node = to_node
            self.to_port = to_port
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, from_node, from_port, to_node, to_port)
        }
    }
    public func connectionRequest(from_node: Godot.GodotStringName, from_port: Int, to_node: Godot.GodotStringName, to_port: Int) {
        _ = connectionRequestSignal.emit(.init(from_node: from_node,
                from_port: from_port,
                to_node: to_node,
                to_port: to_port))
    }
    public lazy var connectionRequestSignal: Godot.SignalEmitter<ConnectionRequestSignalInput> = {
        .init(object: self, signalName: "connection_request") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ConnectionRequestSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(from_node: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    from_port: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!)),
                    to_node: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 2).pointee!)),
                    to_port: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 3).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ConnectionRequestSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ConnectionRequestSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct DisconnectionRequestSignalInput: Godot.SignalInput {
        public let from_node: Godot.GodotStringName
        public let from_port: Int
        public let to_node: Godot.GodotStringName
        public let to_port: Int
        fileprivate init(from_node: Godot.GodotStringName, from_port: Int, to_node: Godot.GodotStringName, to_port: Int) {
            self.from_node = from_node
            self.from_port = from_port
            self.to_node = to_node
            self.to_port = to_port
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, from_node, from_port, to_node, to_port)
        }
    }
    public func disconnectionRequest(from_node: Godot.GodotStringName, from_port: Int, to_node: Godot.GodotStringName, to_port: Int) {
        _ = disconnectionRequestSignal.emit(.init(from_node: from_node,
                from_port: from_port,
                to_node: to_node,
                to_port: to_port))
    }
    public lazy var disconnectionRequestSignal: Godot.SignalEmitter<DisconnectionRequestSignalInput> = {
        .init(object: self, signalName: "disconnection_request") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<DisconnectionRequestSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(from_node: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    from_port: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!)),
                    to_node: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 2).pointee!)),
                    to_port: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 3).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<DisconnectionRequestSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<DisconnectionRequestSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct ConnectionToEmptySignalInput: Godot.SignalInput {
        public let from_node: Godot.GodotStringName
        public let from_port: Int
        public let release_position: Godot.Vector2
        fileprivate init(from_node: Godot.GodotStringName, from_port: Int, release_position: Godot.Vector2) {
            self.from_node = from_node
            self.from_port = from_port
            self.release_position = release_position
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, from_node, from_port, release_position)
        }
    }
    public func connectionToEmpty(from_node: Godot.GodotStringName, from_port: Int, release_position: Godot.Vector2) {
        _ = connectionToEmptySignal.emit(.init(from_node: from_node,
                from_port: from_port,
                release_position: release_position))
    }
    public lazy var connectionToEmptySignal: Godot.SignalEmitter<ConnectionToEmptySignalInput> = {
        .init(object: self, signalName: "connection_to_empty") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ConnectionToEmptySignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(from_node: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    from_port: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!)),
                    release_position: Godot.Vector2.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 2).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ConnectionToEmptySignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ConnectionToEmptySignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct ConnectionFromEmptySignalInput: Godot.SignalInput {
        public let to_node: Godot.GodotStringName
        public let to_port: Int
        public let release_position: Godot.Vector2
        fileprivate init(to_node: Godot.GodotStringName, to_port: Int, release_position: Godot.Vector2) {
            self.to_node = to_node
            self.to_port = to_port
            self.release_position = release_position
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, to_node, to_port, release_position)
        }
    }
    public func connectionFromEmpty(to_node: Godot.GodotStringName, to_port: Int, release_position: Godot.Vector2) {
        _ = connectionFromEmptySignal.emit(.init(to_node: to_node,
                to_port: to_port,
                release_position: release_position))
    }
    public lazy var connectionFromEmptySignal: Godot.SignalEmitter<ConnectionFromEmptySignalInput> = {
        .init(object: self, signalName: "connection_from_empty") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ConnectionFromEmptySignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(to_node: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    to_port: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!)),
                    release_position: Godot.Vector2.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 2).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ConnectionFromEmptySignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ConnectionFromEmptySignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct ConnectionDragStartedSignalInput: Godot.SignalInput {
        public let from_node: Godot.GodotStringName
        public let from_port: Int
        public let is_output: Bool
        fileprivate init(from_node: Godot.GodotStringName, from_port: Int, is_output: Bool) {
            self.from_node = from_node
            self.from_port = from_port
            self.is_output = is_output
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, from_node, from_port, is_output)
        }
    }
    public func connectionDragStarted(from_node: Godot.GodotStringName, from_port: Int, is_output: Bool) {
        _ = connectionDragStartedSignal.emit(.init(from_node: from_node,
                from_port: from_port,
                is_output: is_output))
    }
    public lazy var connectionDragStartedSignal: Godot.SignalEmitter<ConnectionDragStartedSignalInput> = {
        .init(object: self, signalName: "connection_drag_started") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ConnectionDragStartedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(from_node: Godot.GodotStringName.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!)),
                    from_port: Int.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 1).pointee!)),
                    is_output: Bool.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 2).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ConnectionDragStartedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ConnectionDragStartedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func connectionDragEnded() {
        _ = connectionDragEndedSignal.emit()
    }
    public lazy var connectionDragEndedSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "connection_drag_ended") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func copyNodesRequest() {
        _ = copyNodesRequestSignal.emit()
    }
    public lazy var copyNodesRequestSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "copy_nodes_request") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func pasteNodesRequest() {
        _ = pasteNodesRequestSignal.emit()
    }
    public lazy var pasteNodesRequestSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "paste_nodes_request") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func duplicateNodesRequest() {
        _ = duplicateNodesRequestSignal.emit()
    }
    public lazy var duplicateNodesRequestSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "duplicate_nodes_request") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct DeleteNodesRequestSignalInput: Godot.SignalInput {
        public let nodes: Godot.GodotArray<Godot.GodotStringName>
        fileprivate init(nodes: Godot.GodotArray<Godot.GodotStringName>) {
            self.nodes = nodes
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, nodes)
        }
    }
    public func deleteNodesRequest(nodes: Godot.GodotArray<Godot.GodotStringName>) {
        _ = deleteNodesRequestSignal.emit(.init(nodes: nodes))
    }
    public lazy var deleteNodesRequestSignal: Godot.SignalEmitter<DeleteNodesRequestSignalInput> = {
        .init(object: self, signalName: "delete_nodes_request") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<DeleteNodesRequestSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(nodes: Godot.GodotArray<Godot.GodotStringName>.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<DeleteNodesRequestSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<DeleteNodesRequestSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct NodeSelectedSignalInput: Godot.SignalInput {
        public let node: Godot.Node?
        fileprivate init(node: Godot.Node?) {
            self.node = node
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, node)
        }
    }
    public func nodeSelected(node: Godot.Node?) {
        _ = nodeSelectedSignal.emit(.init(node: node))
    }
    public lazy var nodeSelectedSignal: Godot.SignalEmitter<NodeSelectedSignalInput> = {
        .init(object: self, signalName: "node_selected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<NodeSelectedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(node: Godot.Node?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<NodeSelectedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<NodeSelectedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct NodeDeselectedSignalInput: Godot.SignalInput {
        public let node: Godot.Node?
        fileprivate init(node: Godot.Node?) {
            self.node = node
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, node)
        }
    }
    public func nodeDeselected(node: Godot.Node?) {
        _ = nodeDeselectedSignal.emit(.init(node: node))
    }
    public lazy var nodeDeselectedSignal: Godot.SignalEmitter<NodeDeselectedSignalInput> = {
        .init(object: self, signalName: "node_deselected") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<NodeDeselectedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(node: Godot.Node?.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<NodeDeselectedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<NodeDeselectedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct PopupRequestSignalInput: Godot.SignalInput {
        public let position: Godot.Vector2
        fileprivate init(position: Godot.Vector2) {
            self.position = position
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, position)
        }
    }
    public func popupRequest(position: Godot.Vector2) {
        _ = popupRequestSignal.emit(.init(position: position))
    }
    public lazy var popupRequestSignal: Godot.SignalEmitter<PopupRequestSignalInput> = {
        .init(object: self, signalName: "popup_request") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<PopupRequestSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(position: Godot.Vector2.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<PopupRequestSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<PopupRequestSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func beginNodeMove() {
        _ = beginNodeMoveSignal.emit()
    }
    public lazy var beginNodeMoveSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "begin_node_move") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public func endNodeMove() {
        _ = endNodeMoveSignal.emit()
    }
    public lazy var endNodeMoveSignal: Godot.SignalEmitter<Void> = {
        .init(object: self, signalName: "end_node_move") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: ())
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<Void>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    public struct ScrollOffsetChangedSignalInput: Godot.SignalInput {
        public let offset: Godot.Vector2
        fileprivate init(offset: Godot.Vector2) {
            self.offset = offset
        }
        public func _emit(
            _ signalName: Godot.GodotStringName,
            on object: Godot.Object
        ) -> Godot.ErrorType {
            object.emitSignal(signalName, offset)
        }
    }
    public func scrollOffsetChanged(offset: Godot.Vector2) {
        _ = scrollOffsetChangedSignal.emit(.init(offset: offset))
    }
    public lazy var scrollOffsetChangedSignal: Godot.SignalEmitter<ScrollOffsetChangedSignalInput> = {
        .init(object: self, signalName: "scroll_offset_changed") { callablePtr, args, _, _, _ in
            Unmanaged<Godot.SignalReceiver<ScrollOffsetChangedSignalInput>>.fromOpaque(callablePtr!).takeUnretainedValue()
                .call(with: .init(offset: Godot.Vector2.convertFromCheckedStorage(consuming: Variant.Storage(godotExtensionPointer: args!.advanced(by: 0).pointee!))))
        } freeFunc: { callablePtr in
            Unmanaged<Godot.SignalReceiver<ScrollOffsetChangedSignalInput>>.fromOpaque(callablePtr!).release()
        } toStringFunc: { callablePtr, resultPtr, stringResultPtr in
            resultPtr?.pointee = 1
            Godot.GodotString(describing:
                Unmanaged<Godot.SignalReceiver<ScrollOffsetChangedSignalInput>>.fromOpaque(callablePtr!)
                    .takeUnretainedValue()
            ).copyToGodot(unsafePointer: stringResultPtr!)
        }
    }()

    open func _isInInputHotzone(inNode node: Godot.Object?, inPort port: Int32, mousePosition: Godot.Vector2) -> Bool {
        Bool()
    }

    open func _isInOutputHotzone(inNode node: Godot.Object?, inPort port: Int32, mousePosition: Godot.Vector2) -> Bool {
        Bool()
    }

    open func _getConnectionLine(fromPosition: Godot.Vector2, toPosition: Godot.Vector2) -> Godot.PackedVector2Array {
        Godot.PackedVector2Array()
    }

    open func _isNodeHoverValid(fromNode: Godot.GodotStringName, fromPort: Int32, toNode: Godot.GodotStringName, toPort: Int32) -> Bool {
        Bool()
    }

    private static var __method_binding_connect_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "connect_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 195065850)!
        }
        }
    }()
    public func connectNode(_ fromNode: Godot.GodotStringName, fromPort: Int32, toNode: Godot.GodotStringName, toPort: Int32) -> Godot.ErrorType {
        Godot.ErrorType.fromMutatingGodotUnsafePointer { __temporary in
        fromNode.withGodotUnsafeRawPointer { __ptr_fromNode in
        fromPort.withGodotUnsafeRawPointer { __ptr_fromPort in
        toNode.withGodotUnsafeRawPointer { __ptr_toNode in
        toPort.withGodotUnsafeRawPointer { __ptr_toPort in
        withUnsafeArgumentPackPointer(__ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_connect_node,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_is_node_connected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_node_connected").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 4216241294)!
        }
        }
    }()
    public func isNodeConnected(fromNode: Godot.GodotStringName, fromPort: Int32, toNode: Godot.GodotStringName, toPort: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        fromNode.withGodotUnsafeRawPointer { __ptr_fromNode in
        fromPort.withGodotUnsafeRawPointer { __ptr_fromPort in
        toNode.withGodotUnsafeRawPointer { __ptr_toNode in
        toPort.withGodotUnsafeRawPointer { __ptr_toPort in
        withUnsafeArgumentPackPointer(__ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_node_connected,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}}}
    }

    private static var __method_binding_disconnect_node: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "disconnect_node").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1933654315)!
        }
        }
    }()
    public func disconnectNode(_ fromNode: Godot.GodotStringName, fromPort: Int32, toNode: Godot.GodotStringName, toPort: Int32) {
        fromNode.withGodotUnsafeRawPointer { __ptr_fromNode in
        fromPort.withGodotUnsafeRawPointer { __ptr_fromPort in
        toNode.withGodotUnsafeRawPointer { __ptr_toNode in
        toPort.withGodotUnsafeRawPointer { __ptr_toPort in
        withUnsafeArgumentPackPointer(__ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_disconnect_node,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}
    }

    private static var __method_binding_set_connection_activity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_connection_activity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1141899943)!
        }
        }
    }()
    public func setConnectionActivity(fromNode: Godot.GodotStringName, fromPort: Int32, toNode: Godot.GodotStringName, toPort: Int32, amount: Double) {
        fromNode.withGodotUnsafeRawPointer { __ptr_fromNode in
        fromPort.withGodotUnsafeRawPointer { __ptr_fromPort in
        toNode.withGodotUnsafeRawPointer { __ptr_toNode in
        toPort.withGodotUnsafeRawPointer { __ptr_toPort in
        amount.withGodotUnsafeRawPointer { __ptr_amount in
        withUnsafeArgumentPackPointer(__ptr_fromNode, __ptr_fromPort, __ptr_toNode, __ptr_toPort, __ptr_amount) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_connection_activity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}}}}
    }

    private static var __method_binding_get_connection_list: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_connection_list").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3995934104)!
        }
        }
    }()
    public func connectionList() -> Godot.GodotArray<Godot.AnyGodotDictionary> {
        Godot.GodotArray<Godot.AnyGodotDictionary>.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_connection_list,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_clear_connections: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "clear_connections").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func clearConnections() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_clear_connections,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_force_connection_drag_end: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "force_connection_drag_end").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func forceConnectionDragEnd() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_force_connection_drag_end,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_get_scroll_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_scroll_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getScrollOffset() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_scroll_offset,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_scroll_offset: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_scroll_offset").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setScrollOffset(_ offset: Godot.Vector2) {
        offset.withGodotUnsafeRawPointer { __ptr_offset in
        withUnsafeArgumentPackPointer(__ptr_offset) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_scroll_offset,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_valid_right_disconnect_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_valid_right_disconnect_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func addValidRightDisconnectType(_ type: Int32) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_valid_right_disconnect_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_remove_valid_right_disconnect_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_valid_right_disconnect_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeValidRightDisconnectType(_ type: Int32) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_valid_right_disconnect_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_valid_left_disconnect_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_valid_left_disconnect_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func addValidLeftDisconnectType(_ type: Int32) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_valid_left_disconnect_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_remove_valid_left_disconnect_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_valid_left_disconnect_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    public func removeValidLeftDisconnectType(_ type: Int32) {
        type.withGodotUnsafeRawPointer { __ptr_type in
        withUnsafeArgumentPackPointer(__ptr_type) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_valid_left_disconnect_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_add_valid_connection_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "add_valid_connection_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func addValidConnectionType(_ fromType: Int32, toType: Int32) {
        fromType.withGodotUnsafeRawPointer { __ptr_fromType in
        toType.withGodotUnsafeRawPointer { __ptr_toType in
        withUnsafeArgumentPackPointer(__ptr_fromType, __ptr_toType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_add_valid_connection_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_remove_valid_connection_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "remove_valid_connection_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3937882851)!
        }
        }
    }()
    public func removeValidConnectionType(_ fromType: Int32, toType: Int32) {
        fromType.withGodotUnsafeRawPointer { __ptr_fromType in
        toType.withGodotUnsafeRawPointer { __ptr_toType in
        withUnsafeArgumentPackPointer(__ptr_fromType, __ptr_toType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_remove_valid_connection_type,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    private static var __method_binding_is_valid_connection_type: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_valid_connection_type").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2522259332)!
        }
        }
    }()
    public func isValidConnectionType(_ fromType: Int32, toType: Int32) -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        fromType.withGodotUnsafeRawPointer { __ptr_fromType in
        toType.withGodotUnsafeRawPointer { __ptr_toType in
        withUnsafeArgumentPackPointer(__ptr_fromType, __ptr_toType) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_valid_connection_type,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_get_connection_line: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_connection_line").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1562168077)!
        }
        }
    }()
    public func connectionLine(fromNode: Godot.Vector2, toNode: Godot.Vector2) -> Godot.PackedVector2Array {
        Godot.PackedVector2Array.fromMutatingGodotUnsafePointer { __temporary in
        fromNode.withGodotUnsafeRawPointer { __ptr_fromNode in
        toNode.withGodotUnsafeRawPointer { __ptr_toNode in
        withUnsafeArgumentPackPointer(__ptr_fromNode, __ptr_toNode) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_connection_line,
            __ptr_self,
            __accessPtr,
            __temporary
        )}}}}}
    }

    private static var __method_binding_set_panning_scheme: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_panning_scheme").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 18893313)!
        }
        }
    }()
    private func __setPanningScheme(_ scheme: Godot.GraphEdit.PanningScheme) {
        scheme.withGodotUnsafeRawPointer { __ptr_scheme in
        withUnsafeArgumentPackPointer(__ptr_scheme) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_panning_scheme,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_panning_scheme: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_panning_scheme").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 549924446)!
        }
        }
    }()
    private func __getPanningScheme() -> Godot.GraphEdit.PanningScheme {
        Godot.GraphEdit.PanningScheme.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_panning_scheme,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_zoom: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_zoom").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setZoom(_ zoom: Double) {
        zoom.withGodotUnsafeRawPointer { __ptr_zoom in
        withUnsafeArgumentPackPointer(__ptr_zoom) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_zoom,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_zoom: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_zoom").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getZoom() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_zoom,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_zoom_min: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_zoom_min").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setZoomMin(_ zoomMin: Double) {
        zoomMin.withGodotUnsafeRawPointer { __ptr_zoomMin in
        withUnsafeArgumentPackPointer(__ptr_zoomMin) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_zoom_min,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_zoom_min: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_zoom_min").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getZoomMin() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_zoom_min,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_zoom_max: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_zoom_max").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setZoomMax(_ zoomMax: Double) {
        zoomMax.withGodotUnsafeRawPointer { __ptr_zoomMax in
        withUnsafeArgumentPackPointer(__ptr_zoomMax) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_zoom_max,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_zoom_max: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_zoom_max").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getZoomMax() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_zoom_max,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_zoom_step: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_zoom_step").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setZoomStep(_ zoomStep: Double) {
        zoomStep.withGodotUnsafeRawPointer { __ptr_zoomStep in
        withUnsafeArgumentPackPointer(__ptr_zoomStep) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_zoom_step,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_zoom_step: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_zoom_step").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getZoomStep() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_zoom_step,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_show_grid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_show_grid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setShowGrid(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_show_grid,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_showing_grid: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_showing_grid").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isShowingGrid() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_showing_grid,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_snapping_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_snapping_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setSnappingEnabled(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_snapping_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_snapping_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_snapping_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isSnappingEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_snapping_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_snapping_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_snapping_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1286410249)!
        }
        }
    }()
    private func __setSnappingDistance(pixels: Int32) {
        pixels.withGodotUnsafeRawPointer { __ptr_pixels in
        withUnsafeArgumentPackPointer(__ptr_pixels) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_snapping_distance,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_snapping_distance: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_snapping_distance").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3905245786)!
        }
        }
    }()
    private func __getSnappingDistance() -> Int32 {
        Int32.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_snapping_distance,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_connection_lines_curvature: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_connection_lines_curvature").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setConnectionLinesCurvature(_ curvature: Double) {
        curvature.withGodotUnsafeRawPointer { __ptr_curvature in
        withUnsafeArgumentPackPointer(__ptr_curvature) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_connection_lines_curvature,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_connection_lines_curvature: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_connection_lines_curvature").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getConnectionLinesCurvature() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_connection_lines_curvature,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_connection_lines_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_connection_lines_thickness").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setConnectionLinesThickness(pixels: Double) {
        pixels.withGodotUnsafeRawPointer { __ptr_pixels in
        withUnsafeArgumentPackPointer(__ptr_pixels) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_connection_lines_thickness,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_connection_lines_thickness: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_connection_lines_thickness").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getConnectionLinesThickness() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_connection_lines_thickness,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_connection_lines_antialiased: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_connection_lines_antialiased").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setConnectionLinesAntialiased(pixels: Bool) {
        pixels.withGodotUnsafeRawPointer { __ptr_pixels in
        withUnsafeArgumentPackPointer(__ptr_pixels) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_connection_lines_antialiased,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_connection_lines_antialiased: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_connection_lines_antialiased").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isConnectionLinesAntialiased() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_connection_lines_antialiased,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_minimap_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_minimap_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 743155724)!
        }
        }
    }()
    private func __setMinimapSize(_ size: Godot.Vector2) {
        size.withGodotUnsafeRawPointer { __ptr_size in
        withUnsafeArgumentPackPointer(__ptr_size) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_minimap_size,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_minimap_size: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_minimap_size").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3341600327)!
        }
        }
    }()
    private func __getMinimapSize() -> Godot.Vector2 {
        Godot.Vector2.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_minimap_size,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_minimap_opacity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_minimap_opacity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 373806689)!
        }
        }
    }()
    private func __setMinimapOpacity(_ opacity: Double) {
        opacity.withGodotUnsafeRawPointer { __ptr_opacity in
        withUnsafeArgumentPackPointer(__ptr_opacity) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_minimap_opacity,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_get_minimap_opacity: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_minimap_opacity").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1740695150)!
        }
        }
    }()
    private func __getMinimapOpacity() -> Double {
        Double.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_minimap_opacity,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_minimap_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_minimap_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setMinimapEnabled(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_minimap_enabled,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_minimap_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_minimap_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isMinimapEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_minimap_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_show_menu: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_show_menu").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setShowMenu(hidden: Bool) {
        hidden.withGodotUnsafeRawPointer { __ptr_hidden in
        withUnsafeArgumentPackPointer(__ptr_hidden) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_show_menu,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_showing_menu: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_showing_menu").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isShowingMenu() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_showing_menu,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_show_zoom_label: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_show_zoom_label").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setShowZoomLabel(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_show_zoom_label,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_showing_zoom_label: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_showing_zoom_label").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isShowingZoomLabel() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_showing_zoom_label,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_show_grid_buttons: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_show_grid_buttons").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setShowGridButtons(hidden: Bool) {
        hidden.withGodotUnsafeRawPointer { __ptr_hidden in
        withUnsafeArgumentPackPointer(__ptr_hidden) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_show_grid_buttons,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_showing_grid_buttons: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_showing_grid_buttons").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isShowingGridButtons() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_showing_grid_buttons,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_show_zoom_buttons: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_show_zoom_buttons").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setShowZoomButtons(hidden: Bool) {
        hidden.withGodotUnsafeRawPointer { __ptr_hidden in
        withUnsafeArgumentPackPointer(__ptr_hidden) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_show_zoom_buttons,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_showing_zoom_buttons: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_showing_zoom_buttons").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isShowingZoomButtons() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_showing_zoom_buttons,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_show_minimap_button: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_show_minimap_button").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setShowMinimapButton(hidden: Bool) {
        hidden.withGodotUnsafeRawPointer { __ptr_hidden in
        withUnsafeArgumentPackPointer(__ptr_hidden) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_show_minimap_button,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_showing_minimap_button: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_showing_minimap_button").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isShowingMinimapButton() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_showing_minimap_button,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_show_arrange_button: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_show_arrange_button").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setShowArrangeButton(hidden: Bool) {
        hidden.withGodotUnsafeRawPointer { __ptr_hidden in
        withUnsafeArgumentPackPointer(__ptr_hidden) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_show_arrange_button,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_showing_arrange_button: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_showing_arrange_button").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isShowingArrangeButton() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_showing_arrange_button,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_set_right_disconnects: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_right_disconnects").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 2586408642)!
        }
        }
    }()
    private func __setRightDisconnects(enable: Bool) {
        enable.withGodotUnsafeRawPointer { __ptr_enable in
        withUnsafeArgumentPackPointer(__ptr_enable) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_right_disconnects,
            __ptr_self,
            __accessPtr,
            nil
        )}}}
    }

    private static var __method_binding_is_right_disconnects_enabled: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "is_right_disconnects_enabled").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 36873697)!
        }
        }
    }()
    private func __isRightDisconnectsEnabled() -> Bool {
        Bool.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_is_right_disconnects_enabled,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_get_menu_hbox: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "get_menu_hbox").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3590609951)!
        }
        }
    }()
    public func menuHbox() -> Godot.HBoxContainer? {
        Godot.HBoxContainer?.fromMutatingGodotUnsafePointer { __temporary in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_get_menu_hbox,
            __ptr_self,
            nil,
            __temporary
        )}}
    }

    private static var __method_binding_arrange_nodes: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "arrange_nodes").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 3218959716)!
        }
        }
    }()
    public func arrangeNodes() {
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_arrange_nodes,
            __ptr_self,
            nil,
            nil
        )}
    }

    private static var __method_binding_set_selected: GDExtensionMethodBindPtr = {
        _$exposedClassName.withGodotUnsafeRawPointer { __ptr__class_name in
        GodotStringName(swiftStaticString: "set_selected").withGodotUnsafeRawPointer { __ptr__method_name in
        return GodotExtension.Interface.classdbGetMethodBind(__ptr__class_name, __ptr__method_name, 1078189570)!
        }
        }
    }()
    public func setSelected(node: Godot.Node?) {
        node.withGodotUnsafeRawPointer { __ptr_node in
        withUnsafePointer(to: __ptr_node) { _ptr___ptr_node in
        withUnsafeArgumentPackPointer(_ptr___ptr_node) { __accessPtr in
        `self`.withGodotUnsafeMutableRawPointer { __ptr_self in
        GodotExtension.Interface.objectMethodBindPtrcall(
            Self.__method_binding_set_selected,
            __ptr_self,
            __accessPtr,
            nil
        )}}}}
    }

    public var scrollOffset: Godot.Vector2 {
        get {
            __getScrollOffset()
        }
        set {
            __setScrollOffset(
                newValue
            )
        }
    }

    public var isShowingGrid: Bool {
        get {
            __isShowingGrid()
        }
        set {
            __setShowGrid(
                enable: newValue
            )
        }
    }

    public var isSnappingEnabled: Bool {
        get {
            __isSnappingEnabled()
        }
        set {
            __setSnappingEnabled(
                enable: newValue
            )
        }
    }

    public var snappingDistance: Int32 {
        get {
            __getSnappingDistance()
        }
        set {
            __setSnappingDistance(
                pixels: newValue
            )
        }
    }

    public var panningScheme: Godot.GraphEdit.PanningScheme {
        get {
            __getPanningScheme()
        }
        set {
            __setPanningScheme(
                newValue
            )
        }
    }

    public var isRightDisconnectsEnabled: Bool {
        get {
            __isRightDisconnectsEnabled()
        }
        set {
            __setRightDisconnects(
                enable: newValue
            )
        }
    }

    public var connectionLinesCurvature: Double {
        get {
            __getConnectionLinesCurvature()
        }
        set {
            __setConnectionLinesCurvature(
                newValue
            )
        }
    }

    public var connectionLinesThickness: Double {
        get {
            __getConnectionLinesThickness()
        }
        set {
            __setConnectionLinesThickness(
                pixels: newValue
            )
        }
    }

    public var isConnectionLinesAntialiased: Bool {
        get {
            __isConnectionLinesAntialiased()
        }
        set {
            __setConnectionLinesAntialiased(
                pixels: newValue
            )
        }
    }

    public var zoom: Double {
        get {
            __getZoom()
        }
        set {
            __setZoom(
                newValue
            )
        }
    }

    public var zoomMin: Double {
        get {
            __getZoomMin()
        }
        set {
            __setZoomMin(
                newValue
            )
        }
    }

    public var zoomMax: Double {
        get {
            __getZoomMax()
        }
        set {
            __setZoomMax(
                newValue
            )
        }
    }

    public var zoomStep: Double {
        get {
            __getZoomStep()
        }
        set {
            __setZoomStep(
                newValue
            )
        }
    }

    public var isMinimapEnabled: Bool {
        get {
            __isMinimapEnabled()
        }
        set {
            __setMinimapEnabled(
                enable: newValue
            )
        }
    }

    public var minimapSize: Godot.Vector2 {
        get {
            __getMinimapSize()
        }
        set {
            __setMinimapSize(
                newValue
            )
        }
    }

    public var minimapOpacity: Double {
        get {
            __getMinimapOpacity()
        }
        set {
            __setMinimapOpacity(
                newValue
            )
        }
    }

    public var isShowingMenu: Bool {
        get {
            __isShowingMenu()
        }
        set {
            __setShowMenu(
                hidden: newValue
            )
        }
    }

    public var isShowingZoomLabel: Bool {
        get {
            __isShowingZoomLabel()
        }
        set {
            __setShowZoomLabel(
                enable: newValue
            )
        }
    }

    public var isShowingZoomButtons: Bool {
        get {
            __isShowingZoomButtons()
        }
        set {
            __setShowZoomButtons(
                hidden: newValue
            )
        }
    }

    public var isShowingGridButtons: Bool {
        get {
            __isShowingGridButtons()
        }
        set {
            __setShowGridButtons(
                hidden: newValue
            )
        }
    }

    public var isShowingMinimapButton: Bool {
        get {
            __isShowingMinimapButton()
        }
        set {
            __setShowMinimapButton(
                hidden: newValue
            )
        }
    }

    public var isShowingArrangeButton: Bool {
        get {
            __isShowingArrangeButton()
        }
        set {
            __setShowArrangeButton(
                hidden: newValue
            )
        }
    }

    private static var _virtualFunctions: [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)]? = nil
    internal override class func virtualFunctions() -> [GodotStringName: (godotName: GodotStringName, call: GDExtensionClassCallVirtual)] {
        if let _virtualFunctions {
            return _virtualFunctions
        }
        let _is_in_input_hotzone_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GraphEdit>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isInInputHotzone(
            inNode: Godot.Object?.fromGodotUnsafePointer(args[0]!),
            inPort: Int32.fromGodotUnsafePointer(args[1]!),
            mousePosition: Godot.Vector2.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_in_output_hotzone_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GraphEdit>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isInOutputHotzone(
            inNode: Godot.Object?.fromGodotUnsafePointer(args[0]!),
            inPort: Int32.fromGodotUnsafePointer(args[1]!),
            mousePosition: Godot.Vector2.fromGodotUnsafePointer(args[2]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _get_connection_line_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GraphEdit>.fromOpaque(instancePtr).takeUnretainedValue()
        ._getConnectionLine(
            fromPosition: Godot.Vector2.fromGodotUnsafePointer(args[0]!),
            toPosition: Godot.Vector2.fromGodotUnsafePointer(args[1]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        let _is_node_hover_valid_call: GDExtensionClassCallVirtual = { instancePtr, args, returnPtr in
            guard let instancePtr, let args else {
                return
            }
            Unmanaged<GraphEdit>.fromOpaque(instancePtr).takeUnretainedValue()
        ._isNodeHoverValid(
            fromNode: Godot.GodotStringName.fromGodotUnsafePointer(args[0]!),
            fromPort: Int32.fromGodotUnsafePointer(args[1]!),
            toNode: Godot.GodotStringName.fromGodotUnsafePointer(args[2]!),
            toPort: Int32.fromGodotUnsafePointer(args[3]!)
        )
        .copyToGodot(unsafePointer: returnPtr!)}
        _virtualFunctions = [
            "_isInInputHotzone" : ("_is_in_input_hotzone", _is_in_input_hotzone_call),
            "_isInOutputHotzone" : ("_is_in_output_hotzone", _is_in_output_hotzone_call),
            "_getConnectionLine" : ("_get_connection_line", _get_connection_line_call),
            "_isNodeHoverValid" : ("_is_node_hover_valid", _is_node_hover_valid_call)
        ]
        for (key, value) in super.virtualFunctions() {
            _virtualFunctions! [key] = value
        }
        return _virtualFunctions!
    }

    }