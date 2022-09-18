var angle=random_range(180,0)
var angle1=random_range(180,0)
if(global.mode=GAME_MODE.HARD){
var xscale=2.2
}else{
var xscale=1.6
}
Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(100,angle),battle_soul.y+lengthdir_y(100,angle),0,angle+180,xscale,2,0,20,spr_blaster,10,10)
Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(100,angle1),battle_soul.y+lengthdir_y(100,angle1),0,angle1+180,xscale,2,0,20,spr_blaster,10,10)
if(global.mode=GAME_MODE.HARD){
alarm[3]=65
}else{
alarm[3]=75
}