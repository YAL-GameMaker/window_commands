/// trace(...)
var r = string(argument[0]);
for (var i = 1; i < argument_count; i++) {
    r += " " + string(argument[i]);
}
show_debug_message(r);
ds_list_insert(global.log, 0, r);
if (ds_list_size(global.log) > 8) {
    ds_list_delete(global.log, 8);
}
