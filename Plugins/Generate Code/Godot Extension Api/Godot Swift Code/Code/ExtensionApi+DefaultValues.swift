import Foundation

extension ExtensionApi {
    static func defaultValue(forType type: String) -> String {
        if type == "int" {
            return "0"
        } else if type == "float" {
            return "0.0"
        } else if type == "bool" {
            return "false"
        }
        
#warning("Complete this.")
        //    if is_enum(type_name):
        //        return f"{correct_type(type_name)}(0)"
        //    if is_variant(type_name):
        //        return f"{type_name}()"
        //    if is_refcounted(type_name):
        //        return f"Ref<{type_name}>()"
        
        return "nil"
    }
}
