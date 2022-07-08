var length_start = 400
var length_end = 100
var x_start = (battle_board.x + lengthdir_x(length_start, _dir))
var y_start = (battle_board.y + lengthdir_y(length_start, _dir))
var x_target = (battle_board.x + lengthdir_x(length_end, _dir))
var y_target = (battle_board.y + lengthdir_y(length_end, _dir))
var angle = point_direction(x_start, y_start, x_target, y_target)
Blaster_Create_Advanced(x_start,y_start,x_target,y_target,0,angle,1,2,0,20,spr_gb_ink,10,10)
_dir+=10

var x_start1 = (battle_board.x + lengthdir_x(length_start, _dir1))
var y_start1 = (battle_board.y + lengthdir_y(length_start, _dir1))
var x_target1 = (battle_board.x + lengthdir_x(length_end, _dir1))
var y_target1 = (battle_board.y + lengthdir_y(length_end, _dir1))
var angle1 = point_direction(x_start1, y_start1, x_target1, y_target1)
Blaster_Create_Advanced(x_start1,y_start1,x_target1,y_target1,0,angle1,1,2,0,20,spr_gb_ink,10,10)
_dir1+=10
alarm[7]=10