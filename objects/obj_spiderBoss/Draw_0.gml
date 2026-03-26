// Draw Event
image_alpha = 0;  // Hide the original sprite

// If recently damaged → flash red
if (damage_flash_timer > 0) {
    col = c_white;
}
// Draw the scaled sprite with the fade effect and color interpolation
draw_set_alpha(alpha); // Set the alpha value
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, current_color, alpha); // Draw the scaled asset
draw_set_alpha(1);     // Reset alpha

var _gui_w = display_get_gui_width();

var _barw = 100;
var _barh = 18;

var _dx = (_gui_w * 1) - (_barw * 1);
var _dy = 20;


// Find boss

if (alpha > 0) {

    var _hp_ratio = hp / hp_max;
    var _health_barw = _barw * _hp_ratio;

    // Background
    draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);

    // Fill
    draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _health_barw, _barh, c_red, 0.8);

    // Text
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(_dx + _barw / 2, _dy + _barh / 2, "BOSS");

}