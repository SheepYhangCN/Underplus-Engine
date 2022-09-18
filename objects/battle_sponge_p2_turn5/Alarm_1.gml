var a=Battle_MakeFriendlyPellet(-32,-32,battle_soul.x+96+114514,battle_soul.y+96+114514,0,50,20,-135,1,true,battle_bullet_friendlypellet,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,battle_soul.x-96+32,10)
Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,battle_soul.y-96+32,10)
var a=Battle_MakeFriendlyPellet(-32,room_height+32,battle_soul.x+96+114514,battle_soul.y-96-114514,0,50,20,-45,1,true,battle_bullet_friendlypellet,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,battle_soul.x-96+32,10)
Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_height+32,battle_soul.y+96-(room_height+32),10)
var a=Battle_MakeFriendlyPellet(room_width+32,-32,battle_soul.x-96-114514,battle_soul.y+96+114514,0,50,20,135,1,true,battle_bullet_friendlypellet,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_width+32,battle_soul.x+96-(room_width+32),10)
Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,-32,battle_soul.y-96+32,10)
var a=Battle_MakeFriendlyPellet(room_width+32,room_height+32,battle_soul.x-96-114514,battle_soul.y-96-114514,0,50,20,45,1,true,battle_bullet_friendlypellet,spr_spatula)
a.image_xscale=1.5
a.image_yscale=1.5
Anim_Create(a,"x",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_width+32,battle_soul.x+96-(room_width+32),10)
Anim_Create(a,"y",ANIM_TWEEN.BACK,ANIM_EASE.OUT,room_height+32,battle_soul.y+96-(room_height+32),10)
Battle_MakeBoneBottom(battle_board.x-120,130,2,1,0,0,1,-1,battle_bullet_bone,bone_body,spatula_end)
alarm[0]=70