draw_set_font(fnt_test);
draw_set_color(c_white);
draw_text(4, 4, string_hash_to_newline("Trigger: 1: Minimize, 2: Maximize, 3: Restore, 4: Close, V: Visibility"
    + "#Toggle: Q: Minimize, W: Maximize, E: Move, R: Close, T: Taskbar"));
var _y = room_height - 4;
for (var i = 0; i < ds_list_size(global.log); i++) {
    var s = global.log[|i];
    _y -= string_height(string_hash_to_newline(s));
    draw_text(4, _y, string_hash_to_newline(s));
}

