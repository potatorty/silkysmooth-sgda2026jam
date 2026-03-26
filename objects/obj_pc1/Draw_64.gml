// Get GUI size
var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

// Position (right side with padding)
var _padding = 12;
var _barw = 120; //  width
var _barh = 14;  //  height

var _dx = _gui_w - _barw - _padding;
var _dy = _padding;

// Properties
draw_set_font(Font1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// HEALTH BAR
var _health_barw = _barw * (global.player_hp / hp_total);

// Background
draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);

// Fill
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _health_barw, _barh, c_red, 0.6);

// Text
draw_text(_dx + _barw / 2, _dy + _barh / 2, "HP");

// XP BAR
_dy += _barh + 6;

var _xp_barw = _barw * (global.player_xp / xp_require);

// Background
draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);

// Fill
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _xp_barw, _barh, c_blue, 0.6);

// Text
draw_text(_dx + _barw / 2, _dy + _barh / 2, "LV " + string(global.player_level));

// Reset
draw_set_halign(fa_left);
draw_set_valign(fa_top);


// CONTROLS TEXT (no box)

// Position
var _tx = _gui_w - _padding;
var _ty = _dy;

// Settings
draw_set_halign(fa_right);
draw_set_valign(fa_top);

// Custom spacing (adjust this!)
var line_spacing = 20;

// Draw lines manually
draw_text(_tx, _ty, "Attacks: Q, Space");
draw_text(_tx, _ty + line_spacing, "Interact: F");
draw_text(_tx, _ty + line_spacing * 2, "Movement: WASD");

draw_set_halign(fa_left);
draw_set_valign(fa_top);