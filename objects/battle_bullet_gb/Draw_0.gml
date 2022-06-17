var color = c_white
if (type == 0){
    color = c_white}
if (type == 1){
    color = c_aqua//make_color_rgb(20, 196, 255)
	}
if (type == 2){
    color = c_orange//make_color_rgb(248, 148, 29)
	}
if (type == 3){
    color = c_lime}
var SPR = spr_gb_beam
draw_sprite_ext(sprite_index, image_index, x, y, (scale_x * image_xscale), (scale_y * image_yscale), image_angle, color, image_alpha)
var LEN = (25 * scale_x)
var X = (x + lengthdir_x(LEN, image_angle))
var Y = (y + lengthdir_y(LEN, image_angle))
var XSCALE = scale_x
var YSCALE = (scale_y * _beam_scale)
draw_sprite_ext(SPR, 0, X, Y, XSCALE, YSCALE, image_angle, color, _beam_alpha)
LEN = (LEN + (sprite_get_width(SPR) * scale_x))
X = (x + lengthdir_x(LEN, image_angle))
Y = (y + lengthdir_y(LEN, image_angle))
XSCALE = 999
draw_sprite_ext(SPR, 1, X, Y, XSCALE, YSCALE, image_angle, color, _beam_alpha)
