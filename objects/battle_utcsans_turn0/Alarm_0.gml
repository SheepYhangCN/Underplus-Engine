if(global.mode=GAME_MODE.HARD){
var scale=1
}else{
var scale=0.6}
var angle=random(360)
Battle_MakeBlaster(battle_soul.x+lengthdir_x(250,angle),battle_soul.y+lengthdir_y(250,angle),battle_soul.x+lengthdir_x(100,angle),battle_soul.y+lengthdir_y(100,angle),angle-90,angle-90,20,scale,2,10,20,0)
if(global.mode=GAME_MODE.HARD){
var angle1=random(360)
Battle_MakeBlaster(battle_soul.x+lengthdir_x(250,angle1),battle_soul.y+lengthdir_y(250,angle1),battle_soul.x+lengthdir_x(100,angle1),battle_soul.y+lengthdir_y(100,angle1),angle1-90,angle1-90,20,scale,2,10,20,0)
alarm[0]=60}else{
alarm[0]=70}