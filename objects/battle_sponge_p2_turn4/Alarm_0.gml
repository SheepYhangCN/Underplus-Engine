var a=choose(DIR.UP,DIR.DOWN)
if(a=DIR.UP){Battle_MakeBoneWallTop(45,50,5,0,battle_bullet_bone,bone_body,spatula_end)}
if(a=DIR.DOWN){Battle_MakeBoneWallBottom(45,50,5,0,battle_bullet_bone,bone_body,spatula_end)}
BlueSoulControl(a)
Blaster_Create_Advanced(battle_soul.x,0,battle_soul.x,150,-90,-90,1,1,0,20,spr_jellyfish_blaster,10,10)
var a=Battle_MakeFriendlyPellet(-32,battle_soul.y,114514,battle_soul.y,choose(1,2),10,20,-90,1,true,battle_bullet_friendlypellet,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,80,10)
alarm[0]=80