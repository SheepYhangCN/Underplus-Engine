if(global.mode=GAME_MODE.HARD){
var scale=1
}else{
var scale=0.6}
var angle=random(360)
Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(100,angle),battle_soul.y+lengthdir_y(100,angle),0,angle+180,scale,2,0,20,spr_blaster,20,10)
if(global.mode=GAME_MODE.HARD){
var angle1=random(360)
Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(100,angle1),battle_soul.y+lengthdir_y(100,angle1),0,angle1+180,scale,2,0,20,spr_blaster,20,10)
alarm[0]=60}else{
alarm[0]=70}