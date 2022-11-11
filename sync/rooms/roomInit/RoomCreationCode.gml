// Window
window_set_size(display_get_width(), display_get_height());

// Screen
application_surface_enable(false);

d3d_start();

global.screen_ratio = display_get_width() / display_get_height();

// Variables
global.object_depth = 240;
global.is_first_session = true;

// High score
if (highscore_value(1) = 0)
	high_clear();

// Font
draw_set_font(font_add_sprite(sprFont, 32, true, 1));
draw_set_halign(1);
draw_set_valign(1);

// Models
global.lmodel[0] = d3d_model_create();
global.lrot[0] = 1; // is rotate?

d3d_model_primitive_begin(global.lmodel[0], pr_trianglefan);
d3d_model_vertex(global.lmodel[0], 0, 0, 0);

for (var i = 0; i < 5; i += 1) {
	d3d_model_vertex(global.lmodel[0], lengthdir_x(80, i * 72), lengthdir_y(80, i * 72), 0);
	d3d_model_vertex(global.lmodel[0], lengthdir_x(40, i * 72 + 36), lengthdir_y(40, i * 72 + 36), 0);
}

d3d_model_vertex(global.lmodel[0], lengthdir_x(80, 0), lengthdir_y(80, 0), 0);
d3d_model_primitive_end(global.lmodel[0]);

global.lmodel[1] = d3d_model_create();
global.lrot[1] = 1; // is rotate?

d3d_model_primitive_begin(global.lmodel[1], pr_trianglefan);
d3d_model_vertex(global.lmodel[1], 0, 0, 0);

for (var i = 0; i < 4; i += 1) {
	d3d_model_vertex(global.lmodel[1], lengthdir_x(90, i * 90), lengthdir_y(90, i * 90), 0);
	d3d_model_vertex(global.lmodel[1], lengthdir_x(20, i * 90 + 45), lengthdir_y(20, i * 90 + 45), 0);
}

d3d_model_vertex(global.lmodel[1], lengthdir_x(20, 0), lengthdir_y(20, 0), 0);
d3d_model_primitive_end(global.lmodel[1]);

// Next
room_goto_next();
