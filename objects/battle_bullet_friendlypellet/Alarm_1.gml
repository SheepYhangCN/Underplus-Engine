if(tween){
var angle=point_direction(x,y,targetx,targety)
var xp=-lengthdir_x(spd,angle)*2
var yp=-lengthdir_y(spd,angle)*2
Anim_Create(self,"x",0,0,x,xp,8)
Anim_Create(self,"y",0,0,y,yp,8)
Anim_Create(self,"moving",0,0,false,true-false,1,8)
}else{
moving=true}