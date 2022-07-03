if(gbtemp){
var angle=random_range(-180,180)
var angle1=random_range(-180,180)
if(global.mode=2){
var scale=0.4
}else{
var scale=0.2}
Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(50,angle),battle_soul.y+lengthdir_y(50,angle),0,angle+180,scale,2,1,20,spr_blaster,10,10)
Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(50,angle1),battle_soul.y+lengthdir_y(50,angle1),0,angle1+180,scale,2,1,20,spr_blaster,10,10)
alarm[8]=120
}else{
Battle_MakeBoneBottom(battle_board.x+320,120,-7,1,0,0,1)
audio_play_sound(snd_cut,0,0)
alarm[8]=50
}