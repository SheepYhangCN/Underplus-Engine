var angle=random_range(155,25)
//var angle1=random_range(155,25)
if(global.mode=GAME_MODE.HARD){
var scale=1.2
}else{
var scale=0.8}
Battle_MakeBlaster(battle_soul.x+lengthdir_x(250,angle),battle_soul.y+lengthdir_y(250,angle),battle_soul.x+lengthdir_x(100,angle),battle_soul.y+lengthdir_y(100,angle),angle-90,angle-90,10,scale,2,10,20,0)
if(global.mode=GAME_MODE.HARD){alarm[0]=70}else{alarm[0]=80}