if (!outside)
    surface_set_target(Battle_GetBoardSurface())
var color = c_white
if (type == 1)
    color = make_color_rgb(20, 169, 255)
else if (type == 2)
    color = make_color_rgb(255, 160, 64)
var topl = sprite_get_width(bone_end)
if (!no_bottom)
{
    draw_sprite_ext(_bone_end, 1, x, y, 1, 1, dir, color, 1)
    draw_sprite_ext(_bone_body, 0, (x + lengthdir_x(topl, dir)), (y + lengthdir_y(topl, dir)), (length - (2 * topl)), 1, dir, color, 1)
    draw_sprite_ext(_bone_end, 1, (x + lengthdir_x(length-topl/2, dir)), (y + lengthdir_y(length-topl/2, dir)), -1, 1, dir, color, 1)
}
else
{
    draw_sprite_ext(_bone_body, 0, x, y, (length - topl), 1, dir, color, 1)
    draw_sprite_ext(_bone_end, 1, (x + lengthdir_x(length-topl/2, dir)), (y + lengthdir_y(length-topl/2, dir)), -1, 1, dir, color, 1)
}
if (!outside)
    surface_reset_target()


