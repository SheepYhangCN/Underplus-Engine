blend=c_yellow

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
var collision1=collision_line(
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_body)/2,angle+90) + lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_body)/2,angle+90) + lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_body)/2,angle+90) - lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_body)/2,angle+90) - lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
		, battle_soul, false, false)
var collision2=collision_line(
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_body)/2,angle-90) + lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_body)/2,angle-90) + lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_body)/2,angle-90) - lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_body)/2,angle-90) - lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
		, battle_soul, false, false)
var collision3=collision_line(
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle+90) + lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle+90) + lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle-90) + lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle-90) + lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
		, battle_soul, false, false)
var collision4=collision_line(
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle-90) - lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle-90) - lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle+90) - lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle+90) - lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
		, battle_soul, false, false)
var collision5=collision_line(
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle+90) + lengthdir_x((length / 2), angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle+90) + lengthdir_y((length / 2), angle))
        , 
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle-90) + lengthdir_x((length / 2), angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle-90) + lengthdir_y((length / 2), angle))
		, battle_soul, false, false)
var collision6=collision_line(
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle-90) - lengthdir_x((length / 2), angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle-90) - lengthdir_y((length / 2), angle))
        , 
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle+90) - lengthdir_x((length / 2), angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle+90) - lengthdir_y((length / 2), angle))
		, battle_soul, false, false)
if(collision1||collision2||collision3||collision4||collision5||collision6){event_user(0)}
if(global.debug){
    depth = DEPTH_BATTLE.BULLET_OUTSIDE_HIGH
    surface_set_target(Battle_GetBoardSurface())
	draw_set_color(c_red);
	draw_line(
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_body)/2,angle+90) + lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_body)/2,angle+90) + lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_body)/2,angle+90) - lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_body)/2,angle+90) - lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
		)
	draw_line(
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_body)/2,angle-90) + lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_body)/2,angle-90) + lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_body)/2,angle-90) - lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_body)/2,angle-90) - lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
		)
	draw_line(
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle+90) + lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle+90) + lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle-90) + lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle-90) + lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
		)
	draw_line(
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle-90) - lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle-90) - lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle+90) - lengthdir_x((length / 2)+sprite_get_width(_bone_end)/3, angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle+90) - lengthdir_y((length / 2)+sprite_get_width(_bone_end)/3, angle))
		)
	draw_line(
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle+90) + lengthdir_x((length / 2), angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle+90) + lengthdir_y((length / 2), angle))
        , 
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle-90) + lengthdir_x((length / 2), angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle-90) + lengthdir_y((length / 2), angle))
		)
	draw_line(
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle-90) - lengthdir_x((length / 2), angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle-90) - lengthdir_y((length / 2), angle))
        , 
        (x-0.8 + lengthdir_x(sprite_get_height(_bone_end)/2,angle+90) - lengthdir_x((length / 2), angle))
        , 
        (y-0.8 + lengthdir_y(sprite_get_height(_bone_end)/2,angle+90) - lengthdir_y((length / 2), angle))
		)
		surface_reset_target()
    depth = DEPTH_BATTLE.BULLET
	}