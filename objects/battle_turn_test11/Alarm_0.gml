var length_start = 600
var length_end = 200
var x_start = (battle_board.x + lengthdir_x(length_start, _dir))
var y_start = (battle_board.y + lengthdir_y(length_start, _dir))
var x_target = (battle_board.x + lengthdir_x(length_end, _dir))
var y_target = (battle_board.y + lengthdir_y(length_end, _dir))
var angle = point_direction(x_start, y_start, x_target, y_target)
Battle_MakeBlaster(x_start,y_start,x_target,y_target,0,angle+90,20,0.8,2,20,20,0)
_dir-=5

var x_start1 = (battle_board.x + lengthdir_x(length_start, _dir1))
var y_start1 = (battle_board.y + lengthdir_y(length_start, _dir1))
var x_target1 = (battle_board.x + lengthdir_x(length_end, _dir1))
var y_target1 = (battle_board.y + lengthdir_y(length_end, _dir1))
var angle1 = point_direction(x_start1, y_start1, x_target1, y_target1)
Battle_MakeBlaster(x_start1,y_start1,x_target1,y_target1,0,angle1+90,20,0.8,2,20,20,0)
_dir1-=5
alarm[0]=5