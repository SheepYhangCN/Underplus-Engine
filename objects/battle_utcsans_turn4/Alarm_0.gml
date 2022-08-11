var angle=random_range(-180,180)
if(global.mode=2){
var scale=0.5
}else{
var scale=0.3}
Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(100,angle),battle_soul.y+lengthdir_y(100,angle),0,angle+180,scale,2,0,20,spr_blaster,10,10)
alarm[0]=140