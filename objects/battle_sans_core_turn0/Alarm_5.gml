if(_alarm){
if(bonedir=DIR.DOWN){
Battle_MakeBoneTwoV(battle_board.x-64,battle_board.y+16,10,25,1)
Battle_MakeBoneTwoV(battle_board.x+64,battle_board.y+16,-10,25,1)}
if(bonedir=DIR.UP){
Battle_MakeBoneTwoV(battle_board.x+64,battle_board.y-16,-10,25,1)
Battle_MakeBoneTwoV(battle_board.x-64,battle_board.y-16,10,25,1)}
if(bonedir=DIR.LEFT){
Battle_MakeBoneTwoH(battle_board.x-16,battle_board.y-64,10,25,1)
Battle_MakeBoneTwoH(battle_board.x-16,battle_board.y+64,-10,25,1)}
if(bonedir=DIR.RIGHT){
Battle_MakeBoneTwoH(battle_board.x+16,battle_board.y-64,10,25,1)
Battle_MakeBoneTwoH(battle_board.x+16,battle_board.y+64,-10,25,1)}
}else{
var length_start = 600
var length_end = 200
var x_start = (battle_board.x + lengthdir_x(length_start, _dir))
var y_start = (battle_board.y + lengthdir_y(length_start, _dir))
var x_target = (battle_board.x + lengthdir_x(length_end, _dir))
var y_target = (battle_board.y + lengthdir_y(length_end, _dir))
var angle = point_direction(x_start, y_start, x_target, y_target)
Battle_MakeBlaster(x_start,y_start,x_target,y_target,0,angle+90,20,1,2,20,20,0)
_dir-=6
alarm[5] = 3}