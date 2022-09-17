draw_set_font(fnt_test);
draw_set_color(c_white);
draw_text(4, 4, "Trigger:"
	+ "\n1: Minimize"
	+ "\n2: Maximize"
	+ "\n3: Restore"
	+ "\n4: Close"
	+ "\nV: Visibility"
);
draw_text(204, 4, "Toggle:"
	+ "\nQ: Minimize"
	+ "\nW: Maximize"
	+ "\nE: Move"
	+ "\nR: Close"
	+ "\nT: Taskbar button"
)
var _y = room_height - 4;
for (var i = 0; i < ds_list_size(global.log); i++) {
    var s = global.log[|i];
    _y -= string_height(string_hash_to_newline(s));
    draw_text(4, _y, string_hash_to_newline(s));
}

