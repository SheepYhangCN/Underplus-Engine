var angle=random_range(155,25)
//var angle1=random_range(155,25)
if(global.mode=GAME_MODE.HARD){
var scale=1.5
}else{
var scale=1}
Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(100,angle),battle_soul.y+lengthdir_y(100,angle),0,angle+180,scale,2,0,20,spr_peanut_blaster,10,10)
//Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(100,angle1),battle_soul.y+lengthdir_y(100,angle1),0,angle1+180,scale,2,0,20,spr_blaster,10,10)
alarm[0]=70