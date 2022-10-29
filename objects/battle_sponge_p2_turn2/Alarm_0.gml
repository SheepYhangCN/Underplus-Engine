var angle=random_range(155,25)
//var angle1=random_range(155,25)
if(global.mode=GAME_MODE.HARD){
var scale=0.6
}else{
var scale=0.4}
Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(100,angle),battle_soul.y+lengthdir_y(100,angle),0,angle+180,scale,1,0,20,spr_jellyfish_blaster,10,10)
//Blaster_Create_Advanced(0,0,battle_soul.x+lengthdir_x(100,angle1),battle_soul.y+lengthdir_y(100,angle1),0,angle1+180,scale,2,0,20,spr_blaster,10,10)
var a=Battle_MakeFriendlyPellet_Old(0,0,battle_soul.x-lengthdir_x(114514,angle+45),battle_soul.y-lengthdir_y(114514,angle+45),0,35,20,angle+135,1,true,battle_bullet_friendlypellet_old,spr_spatula)
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,battle_soul.x+lengthdir_x(-400,angle+45+180),battle_soul.x+lengthdir_x(150,angle+45)-(battle_soul.x+lengthdir_x(-400,angle+45+180)),10)
Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,battle_soul.y+lengthdir_y(-400,angle+45+180),battle_soul.y+lengthdir_y(150,angle+45)-(battle_soul.y+lengthdir_y(-400,angle+45+180)),10)
if(global.mode=GAME_MODE.HARD){alarm[0]=70}else{alarm[0]=80}