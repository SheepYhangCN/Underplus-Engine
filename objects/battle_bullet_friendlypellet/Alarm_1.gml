if(tween){
//var angle=-point_direction(x,y,targetx,targety)
var _angle=angle+180
var xp=lengthdir_x(spd,_angle)*2
var yp=lengthdir_y(spd,_angle)*2
Anim_Create(id,"x",0,0,x,xp,8)
Anim_Create(id,"y",0,0,y,yp,8)
Anim_Create(id,"moving",0,0,false,true-false,1,8)
}else{
moving=true}