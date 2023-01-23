if(_alarm){
var _angle=random(360)
var _xstart=battle_soul.x+lengthdir_x(640,_angle)
var _ystart=battle_soul.y+lengthdir_y(640,_angle)
var _x=battle_soul.x+lengthdir_x(80,_angle)
var _y=battle_soul.y+lengthdir_y(80,_angle)
Battle_MakeBlaster(_xstart,_ystart,_x,_y,_angle-90,_angle-90,20,1,2,20,20,0)
if(timer<6280||timer>=7920){
_angle+=90
_xstart=battle_soul.x+lengthdir_x(640,_angle)
_ystart=battle_soul.y+lengthdir_y(640,_angle)
_x=battle_soul.x+lengthdir_x(80,_angle)
_y=battle_soul.y+lengthdir_y(80,_angle)
Battle_MakeBlaster(_xstart,_ystart,_x,_y,_angle-90,_angle-90,20,1,2,20,20,0)}
alarm[0]=80
}else{
Battle_MakeBoneBottom(battle_board.x+128,35,-3,0,0,0,1)
alarm[0]=100}