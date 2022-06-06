if (type == 0)
    blend = c_white
if (type == 1)
    blend = c_aqua//make_color_rgb(20, 196, 255)
if (type == 2)
    blend = c_orange//make_color_rgb(248, 148, 29)
if (type == 3)
    blend = c_lime

if (out == 0)
{
    depth = -500
    surface_set_target(Battle_GetBoardSurface())
    draw_sprite_ext(bone_end, 0, (x - lengthdir_x((length / 2), angle)), (y + lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, 1)
    draw_sprite_ext(bone_end, 1, (x + lengthdir_x((length / 2), angle)), (y - lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, 1)
    draw_sprite_ext(bone_body, 0, x, y, (length / 2), 1, angle, blend, 1)
    surface_reset_target()
}
else
{
    depth = -1000
    draw_sprite_ext(bone_end, 0, (x - lengthdir_x((length / 2), angle)), (y + lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, 1)
    draw_sprite_ext(bone_end, 1, (x + lengthdir_x((length / 2), angle)), (y - lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, 1)
    draw_sprite_ext(bone_body, 0, x, y, (length / 2), 1, angle, blend, 1)
}
if (collision_line(((x + lengthdir_x(2, (angle + 90))) + lengthdir_x((length / 2), angle)), ((y + lengthdir_y(2, (angle + 90))) + lengthdir_y((length / 2), angle)), ((x + lengthdir_x(2, (angle + 90))) - lengthdir_x((length / 2), angle)), ((y + lengthdir_y(2, (angle + 90))) - lengthdir_y((length / 2), angle)), battle_soul, false, false) || collision_line(((x - lengthdir_x(1, (angle + 90))) + lengthdir_x((length / 2), angle)), ((y - lengthdir_y(1, (angle + 90))) + lengthdir_y((length / 2), angle)), ((x - lengthdir_x(1, (angle + 90))) - lengthdir_x((length / 2), angle)), ((y - lengthdir_y(1, (angle + 90))) - lengthdir_y((length / 2), angle)), battle_soul, false, false))
    event_user(0)