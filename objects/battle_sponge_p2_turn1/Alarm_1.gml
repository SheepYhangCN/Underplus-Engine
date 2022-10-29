//Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_soul.x,200,0,10,2,2)
Blaster_Create_Advanced(battle_soul.x,0,battle_soul.x,150,-90,-90,1,1,0,20,spr_jellyfish_blaster,10,10)
var a=Battle_MakeFriendlyPellet_Old(-32,battle_soul.y,114514,battle_soul.y,choose(1,2),10,20,-90,1,true,battle_bullet_friendlypellet_old,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,80,10)

if(global.mode=GAME_MODE.HARD){
alarm[1]=50
}else{
alarm[1]=70
}