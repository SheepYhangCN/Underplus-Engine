var length_start = 600
var length_end = 200
var x_start = (battle_board.x + lengthdir_x(length_start, _dir1))
var y_start = (battle_board.y + lengthdir_y(length_start, _dir1))
var x_target = (battle_board.x + lengthdir_x(length_end, _dir1))
var y_target = (battle_board.y + lengthdir_y(length_end, _dir1))
var angle = point_direction(x_start, y_start, x_target, y_target)
var inst = instance_create_depth(x_start, y_start, -1000, battle_bullet_tomblaster)
inst.x_target = x_target
inst.y_target = y_target
inst.angle_start = angle
inst.angle_target = angle
inst.scale_y = 0.5
_dir1 -= 10
if(global.mode=2){
alarm[2] = 7
}else if(global.mode!=2){
alarm[2] = 12}