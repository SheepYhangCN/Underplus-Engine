var angle=-45
repeat(4){
angle+=90
var _x=battle_soul.x+lengthdir_x(640,angle)
var _y=battle_soul.y+lengthdir_y(640,angle)
var _targetx=battle_soul.x+lengthdir_x(128,angle)
var _targety=battle_soul.y+lengthdir_y(128,angle)
var a=Battle_MakeFriendlyPellet(_x,_y,_targetx,_targety,0,40,20,6,angle+180,0,1,false,battle_bullet_friendlypellet,spr_ball)
a.image_xscale=2
a.image_yscale=2
}
alarm[choose(0,1)]=50