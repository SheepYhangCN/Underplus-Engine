if (type == 1){
    blend = #4040FF}
if (type == 2){
    blend = #ED008C}
if (out == 0)
{
    depth = DEPTH_BATTLE.BULLET
    surface_set_target(Battle_GetBoardSurface())
    draw_sprite_ext(_bone_body, 0, x, y, (length / 2), 1, angle, blend, 1)
    draw_sprite_ext(_bone_end, 0, (x - lengthdir_x((length / 2), angle)), (y + lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, 1)
    draw_sprite_ext(_bone_end, 1, (x + lengthdir_x((length / 2), angle)), (y - lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, 1)
    surface_reset_target()
}
else
{
    depth = DEPTH_BATTLE.BULLET_OUTSIDE_HIGH
    draw_sprite_ext(_bone_body, 0, x, y, (length / 2), 1, angle, blend, 1)
    draw_sprite_ext(_bone_end, 0, (x - lengthdir_x((length / 2), angle)), (y + lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, 1)
    draw_sprite_ext(_bone_end, 1, (x + lengthdir_x((length / 2), angle)), (y - lengthdir_x((length / 2), (angle - 90))), 1, 1, (angle + 180), blend, 1)
}
if (collision_line(((x + lengthdir_x(2, (angle + 90))) + lengthdir_x((length / 2), angle)+(max(sprite_get_height(_bone_end),sprite_get_height(_bone_body))/3)), ((y + lengthdir_y(2, (angle + 90))) + lengthdir_y((length / 2), angle)), ((x + lengthdir_x(2, (angle + 90))) - lengthdir_x((length / 2), angle)-(max(sprite_get_height(_bone_end),sprite_get_height(_bone_body))/3)), ((y + lengthdir_y(2, (angle + 90))) - lengthdir_y((length / 2), angle)), battle_soul, false, false) || collision_line(((x - lengthdir_x(1, (angle + 90))) + lengthdir_x((length / 2), angle)), ((y - lengthdir_y(1, (angle + 90))) + lengthdir_y((length / 2), angle)), ((x - lengthdir_x(1, (angle + 90))) - lengthdir_x((length / 2), angle)), ((y - lengthdir_y(1, (angle + 90))) - lengthdir_y((length / 2), angle)), battle_soul, false, false))
    event_user(0)