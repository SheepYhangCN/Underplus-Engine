surface_set_target(sf)
i = 0
d++
repeat (height + (cos((d / 20)) * 3))
{
    i++
    var am = (cos(((d + i) / 25)) * 5)
    draw_sprite_ext(spr_pixel, 0, 0, (481 - i), 640, 1, 0, c_black, 1)
    draw_surface_part_ext(application_surface, 0, (481 - i), 640, 1, am, (481 - i), 1, 1, 16777215, 1)
}
surface_reset_target()
var SW = (window_get_fullscreen() ? display_get_width() : window_get_width())
var SH = (window_get_fullscreen() ? display_get_height() : window_get_height())
var SX = (SW / 640)
var SY = (SH / 480)
var SF = min(SX, SY)
am = (cos((d / 20)) * 10)
display_set_gui_maximize(SF, SF, ((SW - (640 * SF)) / 2), ((SH - (480 * SF)) / 2))
draw_surface_ext(sf, ((SW - (640 * SF)) / 2), ((SH - (480 * SF)) / 2), SF, SF, 0, c_white, 1)
i = 0
repeat (height + (cos((d / 20)) * 3))
{
    i++
    am = (cos(((d + i) / 25)) * 5)
    if (height != 0)
        draw_sprite_ext(spr_pixel, 0, ((SW - (640 * SF)) / 2), ((SH + SF) - (i * SF)), (640 * SF), SF, 0, c_aqua, 0.5)
}
