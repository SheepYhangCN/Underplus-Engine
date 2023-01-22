if(_alarm){
var length_start = 600
var length_end = 200
var x_start = (battle_board.x + lengthdir_x(length_start, _dir+90))
var y_start = (battle_board.y + lengthdir_y(length_start, _dir+90))
var x_target = (battle_board.x + lengthdir_x(length_end, _dir+90))
var y_target = (battle_board.y + lengthdir_y(length_end, _dir+90))
var angle = point_direction(x_start, y_start, x_target, y_target)
Battle_MakeBlaster(x_start,y_start,x_target,y_target,0,angle+90,20,1,2,20,20,0)
var x_start = (battle_board.x + lengthdir_x(length_start, _dir))
var y_start = (battle_board.y + lengthdir_y(length_start, _dir))
var x_target = (battle_board.x + lengthdir_x(length_end, _dir))
var y_target = (battle_board.y + lengthdir_y(length_end, _dir))
var angle = point_direction(x_start, y_start, x_target, y_target)
Battle_MakeBlaster(x_start,y_start,x_target,y_target,0,angle+90,20,1,2,20,20,0)
_dir-=4
alarm[6]=4
}else{
Battle_MakeBoneLeft(320-64,20,4,0,0,0,1).a=3
alarm[6]=5}